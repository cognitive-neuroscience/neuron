package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// SaveExperiment passes the given experiment data to the service to be saved in the DB
func SaveExperiment(c *fiber.Ctx) {
	experiment := new(models.Experiment)
	if err := c.BodyParser(experiment); err != nil {
		c.Status(http.StatusBadRequest).JSON(models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
		return
	}
	result := services.SaveExperiment(experiment)
	c.Status(result.Status).JSON(result)
}

// GetAllExperiments calls the service to get all experiments
func GetAllExperiments(c *fiber.Ctx) {
	experiments, err := services.GetAllExperiments()
	if err != nil {
		c.Status(http.StatusServiceUnavailable).JSON(models.HTTPErrorStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)})
	}
	c.Send(experiments)
}
