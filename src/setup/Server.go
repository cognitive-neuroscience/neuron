package setup

import (
	"net/http"
	"os"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/facebookgo/grace/gracehttp"

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

	// retrieve jwt from cookie
	e.Use(validateCookieMiddleware)

	// configure file
	e.Use(middleware.LoggerWithConfig(middleware.LoggerConfig{
		Format:           "INFO: ${time_custom} HTTP_METHOD:${method} URI:${uri} HTTP_CODE:${status}\n",
		Output:           logger.LogFileRef,
		CustomTimeFormat: "2006/01/15 15:04:05",
	}))
	defer logger.CloseLogFile()

	casbinEnforcer, err := casbin.NewEnforcer("casbin/casbin_auth_model.conf", "casbin/casbin_auth_policy.csv")
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
		AllowOrigins: []string{"https://psharplab.campus.mcgill.ca"},
	}))

	// Register app routes
	registerRoutes(e)

	logger.InfoLogger.Println("Listening on port " + port)
	logger.InfoLogger.Fatal("Received interrupt, shutting down server. Error:", gracehttp.Serve(e.Server))
}

func validateCookieMiddleware(next echo.HandlerFunc) echo.HandlerFunc {
	return func(e echo.Context) error {

		path := e.Request().URL.Path
		method := e.Request().Method
		var role string
		var email string
		var id string

		// unprotected routes, api/users POST is for register and api/login POST is for logging in
		if method == http.MethodPost && (path == "/api/users" || path == "/api/login") {
			role = common.NONE
		} else {
			tokenServiceImpl := services.TokenService{}
			cookie, err := e.Cookie("token")
			if err != nil {
				logger.WarningLogger.Println("Could not read jwt from cookie", err)
				return common.SendHTTPForbidden(e)
			}

			jwt := cookie.Value
			claims, err := tokenServiceImpl.ValidateToken(jwt)
			if err != nil {
				logger.WarningLogger.Println("JWT received from cookie is invalid", jwt)
				return common.SendHTTPForbidden(e)
			}
			role = claims.Role
			email = claims.Email
			id = claims.Id
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
		if err != nil {
			return common.SendHTTPForbidden(c)
		}
		if result {
			return next(c)
		}
		return common.SendHTTPForbidden(c)
	}
}
