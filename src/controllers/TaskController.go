package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/services"

	"github.com/gofiber/fiber"
)

// GetAllTasks is the task api entry point for returning all existing tasks
func GetAllTasks(c *fiber.Ctx) {
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
