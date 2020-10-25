package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// SaveQuestionnaireResponse is the questionnaire api entry point for saving a given questionnaire response
func SaveQuestionnaireResponse(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		response := new(models.MturkQuestionnaireResponse)
		if err := c.BodyParser(response); err != nil {
			common.SendHTTPBadRequest(c)
			return
		}
		result := services.SaveQuestionnaireResponse(response)
		common.SendGenericHTTPModel(c, result)
		return
	}
	common.SendHTTPStatusServiceUnavailable(c)
}
