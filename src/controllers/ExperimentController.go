package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// DeleteExperiment is the experiment api entry point for deleting given the experiment code
func DeleteExperiment(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		code := c.Params("code")
		result := services.DeleteExperiment(code)
		common.SendGenericHTTPModel(c, result)
		return
	}
	common.SendHTTPForbidden(c)
}

// SaveExperiment is the experiment api entry point for saving an experiment given the json
// Note that "code" in Experiment is not a required field as it gets overwritten anyways
func SaveExperiment(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		experiment := new(models.Experiment)
		if err := c.BodyParser(experiment); err != nil {
			common.SendHTTPBadRequest(c)
			return
		}
		result := services.SaveExperiment(experiment)
		common.SendGenericHTTPModel(c, result)
		return
	}
	common.SendHTTPStatusServiceUnavailable(c)
}

// GetAllExperiments is the experiment api entry point for returning all existing experiments
func GetAllExperiments(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		experiments, err := services.GetAllExperiments()
		if err != nil {
			common.SendHTTPStatusServiceUnavailable(c)
			return
		}
		c.JSON(experiments)
		return
	}
	common.SendHTTPForbidden(c)
}
