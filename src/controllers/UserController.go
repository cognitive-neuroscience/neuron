package controllers

import (
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

// UpdateUser updates a given user in the DB
func UpdateUser(c *fiber.Ctx) {
	services.AuthenticateToken(c)
	c.Write([]byte("OK"))
}
