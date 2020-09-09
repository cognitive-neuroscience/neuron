package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"

	"github.com/gofiber/fiber"
)

// GetAllTasks is the task api entry point for returning all existing tasks
func GetAllTasks(c *fiber.Ctx) {
	tasks, err := services.GetAllTasks()
	if err != nil {
		c.Status(http.StatusServiceUnavailable).JSON(models.HTTPErrorStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)})
	}
	c.JSON(tasks)
}
