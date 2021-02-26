package database

import (
	"errors"
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// GetAllCustomTasks returns a list of all questionnaires from the DB
func GetAllCustomTasks() ([]models.CustomTask, error) {
	db := DBConn
	var err error
	customTasks := []models.CustomTask{}
	if err := db.Find(&customTasks).Error; err != nil {
		axonlogger.ErrorLogger.Println("There was an error getting customTasks from the DB", err)
		err = errors.New("Could not fetch experiments")
		return customTasks, err
	}
	axonlogger.InfoLogger.Println("Getting all customTasks")
	return customTasks, err
}

// SaveCustomTask saves the given customTask data into the database as a customTask object
func SaveCustomTask(customTask *models.CustomTask) models.HTTPStatus {
	db := DBConn
	if err := db.Create(&customTask).Error; err != nil {
		axonlogger.ErrorLogger.Println("Could not save customTask", customTask, err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	axonlogger.InfoLogger.Println("Successfully saved customTask", customTask.Name)
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// DeleteCustomTaskByID deletes the given custom task by id
func DeleteCustomTaskByID(id int) models.HTTPStatus {
	db := DBConn
	if err := db.Delete(&models.CustomTask{}, id).Error; err != nil {
		axonlogger.ErrorLogger.Println("Could not delete CustomTask", id, err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	axonlogger.InfoLogger.Println("Successfully deleted CustomTask", id)
	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}
