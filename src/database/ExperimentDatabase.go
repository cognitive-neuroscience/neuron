package database

import (
	"errors"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// GetAllExperiments finds and returns all existing experiments
func GetAllExperiments() ([]models.Experiment, error) {
	db := DBConn
	var err error
	experiments := []models.Experiment{}
	if err := db.Find(&experiments).Error; err != nil {
		err = errors.New("Could not fetch experiments")
	}
	return experiments, err
}

// SaveExperiment saves the given experiment into the db
func SaveExperiment(experiment *models.Experiment) models.HTTPErrorStatus {
	db := DBConn
	// checks if record is new/unique with given primary key
	if db.NewRecord(experiment) {
		errors := db.Create(&experiment).GetErrors()
		if len(errors) == 0 {
			return models.HTTPErrorStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
		}
		return models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: errors[0].Error()}
	}
	return models.HTTPErrorStatus{Status: http.StatusConflict, Message: "Experiment already exists in database"}
}
