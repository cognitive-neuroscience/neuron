package controllers

// import (
// 	"net/http"
// 	"strconv"

// 	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

// 	"github.com/cognitive-neuroscience/neuron/src/common"
// 	"github.com/cognitive-neuroscience/neuron/src/database"

// 	"github.com/cognitive-neuroscience/neuron/src/models"
// 	"github.com/cognitive-neuroscience/neuron/src/services"
// 	"github.com/gofiber/fiber"
// )

// // Login is the login api entry point for logging in an existing user and attaching a JWT
// func Login(c *fiber.Ctx) {
// 	user := new(models.User)
// 	// 1: parse input into user model
// 	if err := c.BodyParser(user); err != nil {
// 		common.SendHTTPBadRequest(c)
// 		axonlogger.WarningLogger.Println("Unable to parse user credentials")
// 		return
// 	}

// 	axonlogger.InfoLogger.Println("User logging in:", user.Email)

// 	// 2: check that it's not empty (guarded against in the UI as well)
// 	if user.Email == "" || user.Password == "" {
// 		c.Status(http.StatusBadRequest).JSON(models.HTTPStatus{Status: http.StatusBadRequest, Message: "Username or password cannot be empty"})
// 		axonlogger.WarningLogger.Println("User email or password is empty")
// 		return
// 	}

// 	// 3: validate username and password, returns the user info and stores in model
// 	dbUser, err := services.ValidateCredentials(user.Email, user.Password)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error validating user login credentials:", err)
// 		c.Status(http.StatusUnauthorized).JSON(models.HTTPStatus{Status: http.StatusUnauthorized, Message: err.Error()})
// 		return
// 	}

// 	// 4: create a jwt with the user data
// 	idToString := strconv.FormatUint(uint64(dbUser.ID), 16)
// 	tokenString, err := services.CreateToken(idToString, dbUser.Email, dbUser.Role)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error creating a JWT for user", dbUser.Email, ":", err)
// 		c.Status(http.StatusInternalServerError).JSON(models.HTTPStatus{Status: http.StatusInternalServerError, Message: "There was an error logging you in"})
// 		return
// 	}

// 	// set JWT and return OK
// 	c.Set("Authorization", "Bearer "+tokenString)
// 	c.Status(http.StatusOK).JSON(fiber.Map{
// 		"message": http.StatusText(http.StatusOK),
// 		"userId":  dbUser.ID,
// 		"email":   dbUser.Email,
// 		"role":    dbUser.Role,
// 	})
// 	axonlogger.InfoLogger.Println("User logged in with signed JWT", dbUser.Email)
// }

// // LoginTurker is a turker specific function which registers the turker and attaches a JWT
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
