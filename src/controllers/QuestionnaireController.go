package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// SaveDemographicsQuestionnaireResponse is the questionnaire api entry point for saving a given questionnaire response
func SaveDemographicsQuestionnaireResponse(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		response := new(models.DemographicsQuestionnaireResponse)
		if err := c.BodyParser(response); err != nil {
			common.SendHTTPBadRequest(c)
			return
		}
		result := services.SaveDemographicsQuestionnaireResponse(response)
		common.SendGenericHTTPModel(c, result)
		return
	}
	common.SendHTTPStatusServiceUnavailable(c)
}

// SaveFeedbackQuestionnaireResponse is the questionnaire api entry point for saving a feedback questionnaire response
func SaveFeedbackQuestionnaireResponse(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		response := new(models.FeedbackQuestionnaireResponse)
		if err := c.BodyParser(response); err != nil {
			common.SendHTTPBadRequest(c)
			return
		}
		result := services.SaveFeedbackQuestionnaireResponse(response)
		common.SendGenericHTTPModel(c, result)
		return
	}
	common.SendHTTPStatusServiceUnavailable(c)
}
