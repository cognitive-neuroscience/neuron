package controllers

import (
	"net/http"
	"os"
	"strconv"
	"time"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"

	"github.com/cognitive-neuroscience/neuron/src/common"
)

type AuthController struct{}

// storing JWTs in local storage vs cookies: https://stormpath.com/blog/where-to-store-your-jwts-cookies-vs-html5-web-storage

// Login is the login api entry point for logging in an existing user and attaching a JWT
func (l *AuthController) Login(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= AUTH CONTROLLER: Login() =============")

	user := new(models.User)
	// 1: parse input into user model
	if err := e.Bind(user); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPBadRequest(e)
	}

	// 2: check that it's not empty
	if user.Email == "" || user.Password == "" {
		axonlogger.WarningLogger.Println("could not login due to empty email or password")
		return common.SendHTTPBadRequest(e)
	}

	// 3: validate username and password, returns the user info and stores in model
	dbUser, httpStatus := authServiceImpl.ValidateCredentialsAndGetUser(user.Email, user.Password)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("Error validating user:", httpStatus)
		return common.SendHTTPWithMessage(e, httpStatus)
	}
	// 4: create a jwt with the user data
	idToString := strconv.FormatUint(uint64(dbUser.ID), 10)
	tokenString, err := tokenServiceImpl.CreateToken(idToString, dbUser.Email, dbUser.Role)
	if err != nil {
		axonlogger.ErrorLogger.Println("Error creating a JWT for user", dbUser.Email, err)
		return common.SendHTTPStatusInternalServerError(e)
	}

	// 5: set the cookie
	cookie := new(http.Cookie)
	cookie.Name = "token"
	cookie.Value = tokenString
	cookie.Path = "/api"
	cookie.HttpOnly = true // not accessible by javascript
	cookie.Secure = true   // sent over https only

	env, exists := os.LookupEnv("ENV")
	if exists {
		if env == "DEV" {
			cookie.Domain = "localhost"
		} else if env == "PROD" {
			cookie.Domain = "psharplab.campus.mcgill.ca"
		}
	}

	cookie.SameSite = http.SameSiteStrictMode
	e.SetCookie(cookie)
	axonlogger.InfoLogger.Println("user logged in with set cookie", dbUser.Email)
	return common.SendHTTPOkWithBody(e, dbUser)
}

// Logout clears the browser
func (l *AuthController) Logout(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= AUTH CONTROLLER: Logout() =============")

	email := e.Get("email")
	id := e.Get("id")
	cookie := new(http.Cookie)
	cookie.Name = "token"
	cookie.Value = ""
	cookie.HttpOnly = true // not accessible by javascript
	cookie.Secure = true   // sent over https only
	cookie.Expires = time.Unix(0, 0)

	env, exists := os.LookupEnv("ENV")
	if exists {
		if env == "DEV" {
			cookie.Domain = "localhost"
		} else if env == "PROD" {
			cookie.Domain = "psharplab.campus.mcgill.ca"
		}
	}

	cookie.SameSite = http.SameSiteStrictMode
	e.SetCookie(cookie)
	axonlogger.InfoLogger.Println("clearing cookie and logging out", email, id)
	return common.SendHTTPOk(e)
}

func (l *AuthController) CSRF(e echo.Context) error {

	return e.JSON(http.StatusOK, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)})
}
