package services

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveExperiment calls the DB and passes the given experiment data
func SaveExperiment(experiment *models.Experiment) models.HTTPErrorStatus {
	return database.SaveExperiment(experiment)
}

// GetAllExperiments calls the DB and returns all experiments
func GetAllExperiments() ([]models.Experiment, error) {
	return database.GetAllExperiments()
}
