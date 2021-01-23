package database

import (
	"errors"
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for saving/deleting/retrieving data involving experiments (studies)
 */

// SQL statements

/* inner join between experiment_tasks and tasks. This gets all records relating to a specific experiment
 * and then returns them ordered as a task struct.
 */
var getOrderedTasks string = "SELECT task_id as Tasks FROM experiment_tasks WHERE experiment_code = ? ORDER BY place ASC;"

// DeleteExperiment deletes the experiment with the given code. It also deletes all references in the ExperimentTask join table
func DeleteExperiment(code string) models.HTTPStatus {
	db := DBConn
	var experiment models.Experiment
	// return an error if we cannot find the experiment with the given code
	if err := db.Where(&models.Experiment{Code: code}).First(&experiment).Error; err != nil {
		axonlogger.ErrorLogger.Println("Could not check if experiment exists:", code, err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	if err := db.First(&experiment).Update("deleted", true).Error; err != nil {
		axonlogger.ErrorLogger.Println("Could not delete experiment:", code, err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetAllExperiments finds and returns all existing experiments
func GetAllExperiments() ([]models.Experiment, error) {
	db := DBConn
	var err error
	experiments := []models.Experiment{}
	if err := db.Find(&experiments).Error; err != nil {
		axonlogger.ErrorLogger.Println("There was an error getting the experiments from the DB")
		err = errors.New("Could not fetch experiments")
	}

	for index, experiment := range experiments {
		// for each experiment, make an SQL query to get all tasks
		err := db.Raw(getOrderedTasks, experiment.Code).Pluck("Tasks", &experiments[index].Tasks).Error
		if err != nil {
			axonlogger.ErrorLogger.Println("There was an error getting experiment tasks from the DB:", experiment, err)
			return nil, err
		}
	}

	return experiments, err
}

// SaveExperiment saves the given experiment into the db
func SaveExperiment(experiment *models.Experiment) models.HTTPStatus {
	db := DBConn

	// create the experiment
	errors := db.Create(&experiment).GetErrors()
	if len(errors) > 0 {
		axonlogger.ErrorLogger.Println("Error creating experiment", experiment, ":", errors)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error creating an experiment"}
	}

	// create an ExperimentTask record for each task to preserve the order
	adjustment := 0
	for index, task := range experiment.Tasks {

		// TODO: validate that the given task is correct with the same name and type
		experimentTaskObj := models.ExperimentTask{
			ExperimentCode: experiment.Code,
			TaskID:         task,
			Place:          index - adjustment,
		}
		errors := db.Create(&experimentTaskObj).GetErrors()
		// if there is an error creating, then skip adding this ExperimentTask
		// and make sure the next one maintains the correct chronological order
		if len(errors) > 0 {
			axonlogger.ErrorLogger.Println("Error creating experiment task:", experimentTaskObj, ":", errors)
			adjustment++
		}
	}

	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// ExperimentExists takes a code and returns a bool representing if that code exists or not in the db
func ExperimentExists(code string) (bool, error) {
	db := DBConn
	experiments := []models.Experiment{}
	if err := db.Find(&experiments).Error; err != nil {
		axonlogger.ErrorLogger.Println(err)
		return false, errors.New("Could not fetch experiments")
	}

	for _, experiment := range experiments {
		if experiment.Code == code {
			return true, nil
		}
	}

	return false, nil
}

// GetExperiment gets the experiment based on the given code
func GetExperiment(code string) (models.Experiment, error) {
	db := DBConn
	experiment := models.Experiment{}
	// TODO: refactor this, you can just do a join on experiment and tasks
	if err := db.Where("code = ?", code).First(&experiment).Error; err != nil {
		axonlogger.ErrorLogger.Println("Error retrieving experiment", code)
		return experiment, errors.New(err.Error())
	}
	// use pluck to get the specific column
	if err := db.Raw(getOrderedTasks, experiment.Code).Pluck("Tasks", &experiment.Tasks).Error; err != nil {
		axonlogger.ErrorLogger.Println("error retrieving experiment tasks", code)
		return experiment, errors.New(err.Error())
	}
	return experiment, nil
}
