package services

import (
	"errors"
	"math/rand"
	"net/http"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

var code string = "bcdfghjklmnpqrstvwxyz0123456789"

// DeleteExperiment calls the db and deletes the experiment with the given code
func DeleteExperiment(code string) models.HTTPErrorStatus {
	return database.DeleteExperiment(code)
}

// SaveExperiment calls the DB and passes the given experiment data
func SaveExperiment(experiment *models.Experiment) models.HTTPErrorStatus {

	code, err := getNewCode()

	if err != nil {
		return models.HTTPErrorStatus{Status: http.StatusInternalServerError, Message: "Error Creating Experiment Shortcode"}
	}
	experiment.Code = code

	return database.SaveExperiment(experiment)
}

func getNewCode() (string, error) {
	experiments, err := database.GetAllExperiments()

	if err != nil {
		return "", errors.New("Could not get experiments")
	}
	code := generateCode()

	// generate a code and loop through until you get a unique one
	for containsCode(code, &experiments) {
		code = generateCode()
	}
	return code, nil
}

func containsCode(code string, experiments *[]models.Experiment) bool {
	for _, experiment := range *experiments {
		if experiment.Code == code {
			return true
		}
	}
	return false
}

func generateCode() string {
	rand.Seed(time.Now().UnixNano())
	var str strings.Builder

	for i := 0; i < 6; i++ {
		randIndex := rand.Intn(len(code))
		str.WriteString(string(code[randIndex]))
	}
	return str.String()
}

// GetAllExperiments calls the DB and returns all experiments
func GetAllExperiments() ([]models.Experiment, error) {
	return database.GetAllExperiments()
}
