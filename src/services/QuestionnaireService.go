package services

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveDemographicsQuestionnaireResponse calls the database to save the demographics response
func SaveDemographicsQuestionnaireResponse(response *models.DemographicsQuestionnaireResponse) models.HTTPStatus {
	return database.SaveDemographicsQuestionnaireResponse(response)
}

// SaveFeedbackQuestionnaireResponse calls the database to save the feedback response
func SaveFeedbackQuestionnaireResponse(response *models.FeedbackQuestionnaireResponse) models.HTTPStatus {
	return database.SaveFeedbackQuestionnaireResponse(response)
}

// SaveQuestionnaire calls the database to save the given questionnaire
func SaveQuestionnaire(questionnaire *models.Questionnaire) models.HTTPStatus {
	return database.SaveQuestionnaire(questionnaire)
}
