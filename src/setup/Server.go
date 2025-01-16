package setup

import (
	"errors"
	"os"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/services"

	"github.com/casbin/casbin/v2"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"github.com/labstack/gommon/log"
)

type Enforcer struct {
	enforcer *casbin.Enforcer
}

// CreateServer creates a HTTP server
func CreateServer() {

	port := os.Getenv("NEURON_PORT")
	if port == "" {
		port = "8181"
	}

	e := echo.New()
	e.Server.Addr = ":" + port

	// protect from CSRF attacks.
	// we need to set the cookie path to be "/" for client side (angular httpCsrfInterceptor)
	e.Use(middleware.CSRFWithConfig(middleware.CSRFConfig{
		CookiePath: "/",
	}))

	// retrieve jwt from cookie and set context variables
	e.Use(validateCookieMiddleware)

	// configure file
	e.Use(middleware.LoggerWithConfig(middleware.LoggerConfig{
		Format:           "INFO: ${time_custom} HTTP_METHOD:${method} URI:${uri} HTTP_CODE:${status}\n",
		Output:           logger.LogFileRef,
		CustomTimeFormat: "2006/01/02 15:04:05",
	}))
	defer logger.CloseLogFile()

	casbinPath, err := getPathToCasbin()
	if err != nil {
		panic("Can't find casbin path in .env file")
	}

	// usr/sbin/sharplab/
	casbinEnforcer, err := casbin.NewEnforcer(casbinPath+"/casbin_auth_model.conf", casbinPath+"/casbin_auth_policy.csv")
	if err != nil {
		logger.ErrorLogger.Println("could not set up casbin route protection", err)
		panic("could not set up casbin route protection")
	}
	enforcer := Enforcer{enforcer: casbinEnforcer}
	e.Use(enforcer.Enforce)

	// use compression middleware
	e.Use(middleware.Gzip())

	// protect from XSS
	e.Use(middleware.Secure())

	// recovery from panic middleware
	e.Use(middleware.RecoverWithConfig(middleware.RecoverConfig{
		StackSize: 4 << 10,
		LogLevel:  log.ERROR,
	}))

	// rate limiting
	e.Use(middleware.RateLimiter(middleware.NewRateLimiterMemoryStore(50)))

	// CORS handling
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins: []string{"https://wecog.research.mcgill.ca"},
	}))

	// Register app routes
	registerRoutes(e)

	logger.InfoLogger.Println("Listening on port " + port)
	logger.ErrorLogger.Fatal(e.Start(":" + port))
}

func validateCookieMiddleware(next echo.HandlerFunc) echo.HandlerFunc {
	return func(e echo.Context) error {

		path := e.Request().URL.Path
		method := e.Request().Method
		var role string = ""
		var email string = ""
		var id string = ""

		tokenServiceImpl := services.TokenService{}
		cookie, err := e.Cookie("token")

		if err != nil || cookie == nil || cookie.Value == "" {
			role = common.NONE
		} else {
			jwt := cookie.Value
			claims, err := tokenServiceImpl.ValidateToken(jwt)
			if err != nil {
				role = common.NONE
			} else {
				role = claims.Role
				email = claims.Email
				id = claims.UserID
			}
		}

		e.Set("path", path)
		e.Set("method", method)
		e.Set("role", role)
		e.Set("email", email)
		e.Set("id", id)
		return next(e)
	}
}

func (e *Enforcer) Enforce(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) (errStatus error) {

		// these are set in the validateCookieMiddleware
		role := c.Get("role")
		path := c.Get("path")
		method := c.Get("method")
		result, err := e.enforcer.Enforce(role, path, method)

		logger.InfoLogger.Println("CASBIN", role, path, method)
		if err != nil {
			logger.InfoLogger.Println("CASBIN rejected request:", role, path, method)
			logger.InfoLogger.Println("CASBIN reject reason (ERR):", err)
			return common.SendHTTPForbidden(c)
		}

		if result {
			return next(c)
		}

		logger.InfoLogger.Println("CASBIN rejected request:", role, path, method)
		return common.SendHTTPForbidden(c)
	}
}

func getPathToCasbin() (string, error) {
	path, exists := os.LookupEnv("CASBIN_PATH")
	if !exists {
		return "", errors.New("no dev connection details")
	}
	return path, nil
}
