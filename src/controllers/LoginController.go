package controllers

import (
	"log"
	"net/http"
	"strconv"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/database"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// Login is the login api entry point for logging in an existing user and attaching a JWT
func Login(c *fiber.Ctx) {
	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		common.SendHTTPBadRequest(c)
		return
	}

	if user.Email == "" || user.Password == "" {
		c.Status(http.StatusBadRequest).JSON(models.HTTPStatus{Status: http.StatusBadRequest, Message: "Username or password cannot be empty"})
		return
	}

	dbUser, err := services.ValidateCredentials(user.Email, user.Password)
	if err != nil {
		c.Status(http.StatusUnauthorized).JSON(models.HTTPStatus{Status: http.StatusUnauthorized, Message: err.Error()})
	} else {
		idToString := strconv.FormatUint(uint64(dbUser.ID), 16)
		tokenString, err := services.CreateToken(idToString, dbUser.Email, dbUser.Role)

		if err != nil {
			c.Status(http.StatusInternalServerError).JSON(models.HTTPStatus{Status: http.StatusInternalServerError, Message: err.Error()})
			return
		}

		// set JWT and return OK
		c.Set("Authorization", "Bearer "+tokenString)
		c.Status(http.StatusOK).JSON(fiber.Map{
			"message": http.StatusText(http.StatusOK),
			"userId":  dbUser.ID,
			"email":   dbUser.Email,
			"role":    dbUser.Role,
		})
	}
}

// LoginTurker is a turker specific function which registers the turker and attaches a JWT
func LoginTurker(c *fiber.Ctx) {
	experimentUser := new(models.ExperimentUser)
	if err := c.BodyParser(experimentUser); err != nil {
		log.Println("Bad JSON")
		common.SendHTTPBadRequest(c)
		return
	}

	// first check: is ID or Code not empty?
	if experimentUser.ID == "" || experimentUser.Code == "" {
		c.Status(http.StatusBadRequest).JSON(models.HTTPStatus{Status: http.StatusBadRequest, Message: "ID or experiment code cannot be empty"})
		return
	}
	// second check: does the experiment code exist?
	// REFACTOR THIS
	exists, err := database.ExperimentExists(experimentUser.Code)
	if err != nil {
		log.Println("Could not check if experiment exists")
		common.SendHTTPStatusServiceUnavailable(c)
		return
	}

	if exists {
		// save the given turker
		httpStatus := services.SaveExperimentAndParticipant(*experimentUser)
		if httpStatus.Status != http.StatusCreated {
			common.SendGenericHTTPModel(c, httpStatus)
			return
		}

		// generate JWT
		tokenString, err := services.CreateToken(experimentUser.ID, "", common.PARTICIPANT)
		if err != nil {
			c.Status(http.StatusInternalServerError).JSON(models.HTTPStatus{Status: http.StatusInternalServerError, Message: err.Error()})
			return
		}

		// set JWT and return OK
		c.Set("Authorization", "Bearer "+tokenString)
		c.Status(http.StatusOK).JSON(fiber.Map{
			"message": http.StatusText(http.StatusOK),
			"userId":  experimentUser.ID,
			"role":    common.PARTICIPANT,
		})
		return
	}

	// given experiment code does not exist
	log.Println("Experiment does not exist")
	common.SendGenericHTTPWithMessage(c, http.StatusBadRequest, "Experiment does not exist")
	return
}
