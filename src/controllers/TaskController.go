package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"

	"github.com/gofiber/fiber"
)

// GetAllTasks is the task api entry point for returning all existing tasks
func GetAllTasks(c *fiber.Ctx) {
	tokenIsValid := services.AuthenticateToken(c)
	// log.Println(tokenIsValid)
	if tokenIsValid {
		tasks, err := services.GetAllTasks()
		if err != nil {
			c.Status(http.StatusServiceUnavailable).JSON(models.HTTPErrorStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)})
		}
		c.JSON(tasks)
	} else {
		c.Status(http.StatusForbidden).JSON(models.HTTPErrorStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)})
	}
}
