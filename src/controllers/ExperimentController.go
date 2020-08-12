package controllers

import (
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// DeleteExperiment is the experiment api entry point for deleting given the experiment code
func DeleteExperiment(c *fiber.Ctx) {
	code := c.Params("code")
	result := services.DeleteExperiment(code)
	c.Status(result.Status).JSON(result)
}

// SaveExperiment is the experiment api entry point for saving an experiment given the json
func SaveExperiment(c *fiber.Ctx) {
	experiment := new(models.Experiment)
	if err := c.BodyParser(experiment); err != nil {
		c.Status(http.StatusBadRequest).JSON(models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
		return
	}
	log.Println(experiment)
	result := services.SaveExperiment(experiment)
	c.Status(result.Status).JSON(result)
}

// GetAllExperiments is the experiment api entry point for returning all existing experiments
func GetAllExperiments(c *fiber.Ctx) {
	experiments, err := services.GetAllExperiments()
	if err != nil {
		c.Status(http.StatusServiceUnavailable).JSON(models.HTTPErrorStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)})
	}
	c.JSON(experiments)
}
