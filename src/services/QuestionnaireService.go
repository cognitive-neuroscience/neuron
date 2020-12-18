package services

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveQuestionnaireResponse calls the database to save the response
func SaveQuestionnaireResponse(response *models.DemographicsQuestionnaireResponse) models.HTTPStatus {
	return database.SaveQuestionnaireResponse(response)
}
