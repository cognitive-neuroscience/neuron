package controllers

import (
	"net/http"
	"os"
	"strconv"
	"time"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/labstack/echo/v4"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type LoginController struct{}

// Login is the login api entry point for logging in an existing user and attaching a JWT
func (l *LoginController) Login(e echo.Context) error {
	user := new(models.User)
	// 1: parse input into user model
	if err := e.Bind(user); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusBadRequest, Message: "there was an error logging you in"})
	}

	// 2: check that it's not empty (guarded against in the UI as well)
	if user.Email == "" || user.Password == "" {
		axonlogger.WarningLogger.Println("could not login due to empty email or password")
		return common.SendHTTPWithMessage(e, models.HTTPStatus{
			Status:  http.StatusBadRequest,
			Message: "Username or password cannot be empty",
		})
	}

	// 3: validate username and password, returns the user info and stores in model
	dbUser, err := authServiceImpl.ValidateCredentialsAndGetUser(user.Email, user.Password)
	if err != nil {
		axonlogger.ErrorLogger.Println("Error validating user login credentials:", err)
		return common.SendHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusUnprocessableEntity, Message: err.Error()})
	}
	// 4: create a jwt with the user data
	idToString := strconv.FormatUint(uint64(dbUser.ID), 10)
	tokenString, err := tokenServiceImpl.CreateToken(idToString, dbUser.Email, dbUser.Role)
	if err != nil {
		axonlogger.ErrorLogger.Println("Error creating a JWT for user", dbUser.Email, err)
		return common.SendHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error logging you in"})
	}

	cookie := new(http.Cookie)
	cookie.Name = "token"
	cookie.Value = tokenString
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
	dbUser.
	return common.SendHTTPOkWithBody(e, dbUser)
}

// Logout clears the browser
func (l *LoginController) Logout(e echo.Context) error {
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
