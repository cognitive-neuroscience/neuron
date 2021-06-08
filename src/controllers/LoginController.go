package controllers

import (
	"net/http"
	"strconv"

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
		return common.SendGenericHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusBadRequest, Message: "there was an error logging you in"})
	}

	// 2: check that it's not empty (guarded against in the UI as well)
	if user.Email == "" || user.Password == "" {
		axonlogger.WarningLogger.Println("could not login due to empty email or password")
		return common.SendGenericHTTPWithMessage(e, models.HTTPStatus{
			Status:  http.StatusBadRequest,
			Message: "Username or password cannot be empty",
		})
	}

	// 3: validate username and password, returns the user info and stores in model
	dbUser, err := loginServiceImpl.ValidateCredentials(user.Email, user.Password)
	if err != nil {
		axonlogger.ErrorLogger.Println("Error validating user login credentials:", err)
		return common.SendGenericHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusNotFound, Message: err.Error()})
	}

	// 4: create a jwt with the user data
	idToString := strconv.FormatUint(uint64(dbUser.ID), 16)
	tokenString, err := tokenServiceImpl.CreateToken(idToString, dbUser.Email, dbUser.Role)
	if err != nil {
		axonlogger.ErrorLogger.Println("Error creating a JWT for user", dbUser.Email, err)
		return common.SendGenericHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error logging you in"})
	}

	cookie := new(http.Cookie)
	cookie.Name = "token"
	cookie.Value = tokenString
	cookie.HttpOnly = true // not accessible by javascript
	cookie.Secure = true   // sent over https only
	// cookie.Domain = "psharplab.campus.mcgill.ca" // only accept cookies from same domain
	cookie.SameSite = http.SameSiteStrictMode
	e.SetCookie(cookie)

	axonlogger.InfoLogger.Println("user logged in with set cookie", dbUser.Email)
	return common.SendHTTPOkWithBody(e, models.User{
		Email: dbUser.Email,
		ID:    dbUser.ID,
		Role:  dbUser.Role,
	})
}

func (l *LoginController) Logout(e echo.Context) error {
	email := e.Get("email")
	id := e.Get("id")
	cookie := new(http.Cookie)
	cookie.Name = "token"
	cookie.Value = ""
	cookie.HttpOnly = true // not accessible by javascript
	cookie.Secure = true   // sent over https only
	e.SetCookie(cookie)
	axonlogger.InfoLogger.Println("clearing cookie and logging out", email, id)
	return common.SendHTTPOk(e)
}

// LoginTurker is a turker specific function which registers the turker and attaches a JWT
// func LoginTurker(c *fiber.Ctx) {
// 	experimentUser := new(models.ExperimentUser)
// 	if err := c.BodyParser(experimentUser); err != nil {
// 		axonlogger.WarningLogger.Println("Unable to parse participant credentials", err)
// 		common.SendHTTPBadRequest(c)
// 		return
// 	}

// 	axonlogger.InfoLogger.Println("Registering participant:", experimentUser.ID)

// 	// first check: is ID or Code not empty?
// 	if experimentUser.ID == "" || experimentUser.Code == "" {
// 		axonlogger.WarningLogger.Println("User email or password is empty")
// 		c.Status(http.StatusBadRequest).JSON(models.HTTPStatus{Status: http.StatusBadRequest, Message: "ID or experiment code cannot be empty"})
// 		return
// 	}
// 	// second check: does the experiment code exist?
// 	// REFACTOR THIS
// 	exists, err := database.ExperimentExists(experimentUser.Code)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error when checking if the experiment exists:", err)
// 		common.SendHTTPStatusServiceUnavailable(c)
// 		return
// 	}

// 	if exists {
// 		// save the given turker
// 		httpStatus := services.SaveExperimentAndParticipant(*experimentUser)
// 		if httpStatus.Status != http.StatusCreated {
// 			axonlogger.ErrorLogger.Println("Error saving the participant:", err)
// 			common.SendGenericHTTPModel(c, httpStatus)
// 			return
// 		}

// 		// generate JWT
// 		tokenString, err := services.CreateToken(experimentUser.ID, "", common.PARTICIPANT)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("Error creating a JWT for user", experimentUser, ":", err)
// 			c.Status(http.StatusInternalServerError).JSON(models.HTTPStatus{Status: http.StatusInternalServerError, Message: "There was an error registering your ID"})
// 			return
// 		}

// 		// set JWT and return OK
// 		c.Set("Authorization", "Bearer "+tokenString)
// 		c.Status(http.StatusOK).JSON(fiber.Map{
// 			"message": http.StatusText(http.StatusOK),
// 			"userId":  experimentUser.ID,
// 			"role":    common.PARTICIPANT,
// 		})
// 		axonlogger.InfoLogger.Println("Participant signed in with signed JWT:", experimentUser)
// 		return
// 	}

// 	// given experiment code does not exist
// 	axonlogger.WarningLogger.Println("The given experiment does not exist:", experimentUser)
// 	common.SendGenericHTTPWithMessage(c, http.StatusBadRequest, "Experiment does not exist")
// 	return
// }
