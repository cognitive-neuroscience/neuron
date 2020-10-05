package controllers

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/common"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// GetAllUsers is the users api entry point for returning all existing experiments
// only for dev purposes, delete later!
func GetAllUsers(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		tasks, err := services.GetAllTasks()
		if err != nil {
			common.SendHTTPStatusServiceUnavailable(c)
			return
		}
		c.JSON(tasks)
		return
	}
	common.SendHTTPForbidden(c)
}

// SaveUser saves a given user in the DB
// this route does not require a JWT as users may be creating an account
func SaveUser(c *fiber.Ctx) {
	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		common.SendHTTPBadRequest(c)
	}
	result := services.SaveUser(user)
	common.SendGenericHTTPModel(c, result)
}

// GetCompletionCode return the completion code associated with the given experimentUser
func GetCompletionCode(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {

		userID := c.Params("userid")
		code := c.Params("code")
		result, err := services.GetCompletionCode(userID, code)
		if err != nil {
			log.Println(err)
			common.SendHTTPStatusServiceUnavailable(c)
		}
		c.JSON(result)
		return
	}
	common.SendHTTPForbidden(c)
}

// MarkAsComplete marks the given experimentUser as complete
func MarkAsComplete(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		experimentUser := new(models.ExperimentUser)
		if err := c.BodyParser(experimentUser); err != nil {
			common.SendHTTPBadRequest(c)
			return
		}
		result := services.MarkAsComplete(*experimentUser)
		common.SendGenericHTTPModel(c, result)
		return
	}
	common.SendHTTPForbidden(c)
	return
}

// Note: Don't need this since this will be handled when logging in
// // SaveExperimentAndParticipant records the given experiment's ID and the experiment code they are doing,
// // the completion string in the case of turkers, and stores a boolean value indicating whether or not the experiment is complete
// func SaveExperimentAndParticipant(c *fiber.Ctx) {
// 	experimentUser := new(models.ExperimentUser)
// 	if err := c.BodyParser(experimentUser); err != nil {
// 		common.SendHTTPBadRequest(c)
// 	}
// 	result := services.SaveExperimentAndParticipant(*experimentUser)
// 	common.SendGenericHTTPModel(c, result)
// }

// UpdateUser updates a given user in the DB
// TODO: Impement this
func UpdateUser(c *fiber.Ctx) {
	services.AuthenticateToken(c)
	c.Write([]byte("OK"))
}
