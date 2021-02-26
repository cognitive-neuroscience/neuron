package services

import (
	"net/http"
	"strconv"

	"github.com/cognitive-neuroscience/neuron/src/database"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
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

// DeleteQuestionnaireByID calls the database to delete the given questionnaire by id
func DeleteQuestionnaireByID(id string) models.HTTPStatus {
	idNum, err := strconv.Atoi(id)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not parse the given id", id)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
	}
	return database.DeleteQuestionnaireByID(idNum)
}

// GetAllQuestionnaires calls the database and gets all questionnaires
func GetAllQuestionnaires() ([]models.Questionnaire, error) {
	return database.GetAllQuestionnaires()
}
