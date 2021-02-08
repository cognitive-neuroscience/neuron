package database

import (
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for saving questionnaire responses to the db
 */

// SaveDemographicsQuestionnaireResponse saves the given questionnaire response in to the database
func SaveDemographicsQuestionnaireResponse(response *models.DemographicsQuestionnaireResponse) models.HTTPStatus {
	db := DBConn
	errors := db.Create(&response).GetErrors()
	if len(errors) > 0 {
		axonlogger.ErrorLogger.Println("There was an error saving demographics responses in the DB", errors, response)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// SaveFeedbackQuestionnaireResponse saves the given feedback response in the database
func SaveFeedbackQuestionnaireResponse(response *models.FeedbackQuestionnaireResponse) models.HTTPStatus {
	db := DBConn
	errors := db.Create(&response).GetErrors()
	if len(errors) > 0 {
		axonlogger.ErrorLogger.Println("There was an error saving feedback responses in the DB", errors, response)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// SaveQuestionnaire saves the given questionnaire data into the database as a questionnaire object
func SaveQuestionnaire(questionnaire *models.Questionnaire) models.HTTPStatus {
	db := DBConn
	if err := db.Create(&questionnaire).Error; err != nil {
		axonlogger.ErrorLogger.Println("Could not save questionnaire", questionnaire, err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	axonlogger.InfoLogger.Println("Successfully saved questionnaire", questionnaire.Name)
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}
