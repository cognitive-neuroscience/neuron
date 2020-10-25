package database

import (
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveQuestionnaireResponse saves the given questionnaire response in to the database
func SaveQuestionnaireResponse(response *models.MturkQuestionnaireResponse) models.HTTPStatus {
	db := DBConn
	errors := db.Create(&response).GetErrors()
	if len(errors) > 0 {
		log.Println("There was an error saving the questionnaire response")
		log.Println(errors)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}
