package services

import (
	"errors"
	"net/http"
	"strconv"

	"github.com/cognitive-neuroscience/neuron/src/database"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// GetAllCustomTasks returns a list of all questionnaires from the DB
func GetAllCustomTasks() ([]models.CustomTask, error) {
	return database.GetAllCustomTasks()
}

// SaveCustomTask saves the given customTask data into the database as a customTask object
func SaveCustomTask(customTask *models.CustomTask) models.HTTPStatus {
	return database.SaveCustomTask(customTask)
}

// DeleteCustomTaskByID deletes the given custom task by id
func DeleteCustomTaskByID(id string) models.HTTPStatus {
	idNum, err := strconv.Atoi(id)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not parse the given id", id)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
	}

	return database.DeleteCustomTaskByID(idNum)
}

// GetCustomTaskByID gets the given task
func GetCustomTaskByID(id string) (models.CustomTask, error) {
	customTask := models.CustomTask{}
	idNum, err := strconv.Atoi(id)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not parse the given id", id)
		return customTask, errors.New("Could not parse the given id: " + id)
	}
	return database.GetCustomTaskByID(idNum)
}
