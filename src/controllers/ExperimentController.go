package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// DeleteExperiment is the experiment api entry point for deleting given the experiment code
func DeleteExperiment(c *fiber.Ctx) {
	code := c.Params("code")

	axonlogger.InfoLogger.Println("Deleting experiment:", code)

	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		result := services.DeleteExperiment(code)
		common.SendGenericHTTPModel(c, result)
		return
	}
	axonlogger.WarningLogger.Println("Not authorized to delete:", code)
	common.SendHTTPForbidden(c)
}

// SaveExperiment is the experiment api entry point for saving an experiment given the json
// Note that "code" in Experiment is not a required field as it gets overwritten anyways
func SaveExperiment(c *fiber.Ctx) {
	axonlogger.InfoLogger.Println("Saving experiment")
	experiment := new(models.Experiment)
	if err := c.BodyParser(experiment); err != nil {
		common.SendHTTPBadRequest(c)
		axonlogger.WarningLogger.Println("Could not parse the given experiment")
		return
	}
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		result := services.SaveExperiment(experiment)
		common.SendGenericHTTPModel(c, result)
		return
	}
	axonlogger.WarningLogger.Println("Not authorized to save experiment:", experiment)
	common.SendHTTPStatusServiceUnavailable(c)
}

// GetAllExperiments is the experiment api entry point for returning all existing experiments
func GetAllExperiments(c *fiber.Ctx) {
	axonlogger.InfoLogger.Println("Getting all experiments")

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
	axonlogger.WarningLogger.Println("Not authorized to get all experiments")
	common.SendHTTPForbidden(c)
}

// GetExperiment gets a specific experiment based on the experiment code
func GetExperiment(c *fiber.Ctx) {
	code := c.Params("code")
	axonlogger.InfoLogger.Println("Getting experiment", code)

	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		experiment, err := services.GetExperiment(code)
		if err != nil {
			common.SendHTTPStatusServiceUnavailable(c)
			return
		}
		c.JSON(experiment)
		return
	}
	axonlogger.WarningLogger.Println("Not authorized to get experiment", code)
	common.SendHTTPForbidden(c)
	return
}
