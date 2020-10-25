package services

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveQuestionnaireResponse calls the database to save the response
func SaveQuestionnaireResponse(response *models.MturkQuestionnaireResponse) models.HTTPStatus {
	return database.SaveQuestionnaireResponse(response)
}
