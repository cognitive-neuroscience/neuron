package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// SaveDemographicsQuestionnaireResponse is the questionnaire api entry point for saving a given questionnaire response
func SaveDemographicsQuestionnaireResponse(c *fiber.Ctx) {
	response := new(models.DemographicsQuestionnaireResponse)
	if err := c.BodyParser(response); err != nil {
		axonlogger.WarningLogger.Println("Could not parse demographics response")
		common.SendHTTPBadRequest(c)
		return
	}

	axonlogger.InfoLogger.Println("Saving demographics questionnaire data")

	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		result := services.SaveDemographicsQuestionnaireResponse(response)
		common.SendGenericHTTPModel(c, result)
		return
	}
	axonlogger.WarningLogger.Println("User not authorized to save demographic data", response)
	common.SendHTTPForbidden(c)
}

// SaveFeedbackQuestionnaireResponse is the questionnaire api entry point for saving a feedback questionnaire response
func SaveFeedbackQuestionnaireResponse(c *fiber.Ctx) {
	response := new(models.FeedbackQuestionnaireResponse)
	if err := c.BodyParser(response); err != nil {
		axonlogger.WarningLogger.Println("Could not parse feedback response")
		common.SendHTTPBadRequest(c)
		return
	}

	axonlogger.InfoLogger.Println("Saving feedback questionnaire data")

	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		result := services.SaveFeedbackQuestionnaireResponse(response)
		common.SendGenericHTTPModel(c, result)
		return
	}
	axonlogger.WarningLogger.Println("User not authorized to save feedback questionnaire response", response)
	common.SendHTTPForbidden(c)
}

// SaveQuestionnaire is the questionnaire api entry point for saving a questionnaire given the json. This describes the data that populates
// an embedded survey monkey survey
func SaveQuestionnaire(c *fiber.Ctx) {
	axonlogger.InfoLogger.Println("Saving Questionnaire")
	questionnaire := new(models.Questionnaire)
	if err := c.BodyParser(questionnaire); err != nil {
		common.SendHTTPBadRequest(c)
		axonlogger.WarningLogger.Println("Could not parse the given questionnaire")
		return
	}
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		result := services.SaveQuestionnaire(questionnaire)
		common.SendGenericHTTPModel(c, result)
		return
	}
	axonlogger.WarningLogger.Println("Not authorized to save questionnaire:", questionnaire)
	common.SendHTTPStatusServiceUnavailable(c)
}
