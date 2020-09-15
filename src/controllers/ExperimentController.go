package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// DeleteExperiment is the experiment api entry point for deleting given the experiment code
func DeleteExperiment(c *fiber.Ctx) {
	authorizedRoles := []string{"ADMIN"}
	if common.IsAllowed(c, authorizedRoles) {
		code := c.Params("code")
		result := services.DeleteExperiment(code)
		c.Status(result.Status).JSON(result)
	}
	common.SendHTTPForbidden(c)
}

// SaveExperiment is the experiment api entry point for saving an experiment given the json
// Note that "code" in Experiment is not a required field as it gets overwritten anyways
func SaveExperiment(c *fiber.Ctx) {
	experiment := new(models.Experiment)
	if err := c.BodyParser(experiment); err != nil {
		common.SendHTTPBadRequest(c)
		return
	}
	result := services.SaveExperiment(experiment)

	if result.Status == http.StatusCreated {
		common.SendHTTPStatusCreated(c)
	}
	common.SendHTTPStatusServiceUnavailable(c)
}

// GetAllExperiments is the experiment api entry point for returning all existing experiments
func GetAllExperiments(c *fiber.Ctx) {
	experiments, err := services.GetAllExperiments()
	if err != nil {
		c.Status(http.StatusServiceUnavailable).JSON(models.HTTPErrorStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)})
	}
	c.JSON(experiments)
}
