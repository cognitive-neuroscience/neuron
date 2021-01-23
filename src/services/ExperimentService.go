package services

import (
	"errors"
	"math/rand"
	"net/http"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/database"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// CodeCharacters represents the atomic characters that make up a short code
var CodeCharacters string = "bcdfghjklmnpqrstvwxyz0123456789"

// DeleteExperiment calls the db and deletes the experiment with the given code
func DeleteExperiment(code string) models.HTTPStatus {
	return database.DeleteExperiment(code)
}

// SaveExperiment calls the DB and passes the given experiment data
func SaveExperiment(experiment *models.Experiment) models.HTTPStatus {

	code, err := getNewCode()

	if err != nil {
		axonlogger.ErrorLogger.Println("Error creating experiment shortcode", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "Error Creating Experiment Shortcode"}
	}
	axonlogger.InfoLogger.Println("Created experiment with shortcode:", code)
	experiment.Code = code

	return database.SaveExperiment(experiment)
}

func getNewCode() (string, error) {
	experiments, err := database.GetAllExperiments()

	if err != nil {
		return "", errors.New("Could not get experiments")
	}
	code := GenerateCode(6)

	// generate a code and loop through until you get a unique one
	for containsCode(code, &experiments) {
		code = GenerateCode(6)
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

// GenerateCode creates a code using the CharacterCode string of x size
func GenerateCode(size int) string {
	rand.Seed(time.Now().UnixNano())
	var str strings.Builder

	for i := 0; i < size; i++ {
		randIndex := rand.Intn(len(CodeCharacters))
		str.WriteString(string(CodeCharacters[randIndex]))
	}
	return str.String()
}

// GetAllExperiments calls the DB and returns all experiments
func GetAllExperiments() ([]models.Experiment, error) {
	return database.GetAllExperiments()
}

// GetExperiment gets the experiment based on the given code
func GetExperiment(code string) (models.Experiment, error) {
	return database.GetExperiment(code)
}
