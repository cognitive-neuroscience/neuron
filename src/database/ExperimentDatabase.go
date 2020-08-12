package database

import (
	"errors"
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// DeleteExperiment deletes the experiment with the given code
func DeleteExperiment(code string) models.HTTPErrorStatus {
	db := DBConn
	var experiment models.Experiment
	// return an error if we cannot find the experiment with the given code
	if err := db.Where(&models.Experiment{Code: code}).First(&experiment).Error; err != nil {
		log.Println(err)
		log.Printf("Experiment with code %s does not exist", code)
		return models.HTTPErrorStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	if err := db.Delete(&experiment).Error; err != nil {
		log.Printf("Could not delete Experiment %+v", experiment)
		return models.HTTPErrorStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	return models.HTTPErrorStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetAllExperiments finds and returns all existing experiments
func GetAllExperiments() ([]models.Experiment, error) {
	db := DBConn
	var err error
	experiments := []models.Experiment{}
	if err := db.Preload("Tasks").Find(&experiments).Error; err != nil {
		err = errors.New("Could not fetch experiments")
	}
	return experiments, err
}

// SaveExperiment saves the given experiment into the db
func SaveExperiment(experiment *models.Experiment) models.HTTPErrorStatus {
	db := DBConn
	// checks if record is new/unique with given primary key
	if db.NewRecord(experiment) {
		// get all tasks
		tasks := []models.Task{}
		db.Find(&tasks)

		// iterate through and map the received task to the one that exists in the DB.
		for i := 0; i < len(experiment.Tasks); i++ {
			givenTask := experiment.Tasks[i]
			mappedTask, err := mapTask(givenTask, tasks)
			if err != nil {
				// if the task does not exist, remove it
				experiment.Tasks = append(experiment.Tasks[:i], experiment.Tasks[i+1:]...)
			} else {
				experiment.Tasks[i] = mappedTask
			}
		}

		errors := db.Create(&experiment).GetErrors()
		if len(errors) == 0 {
			return models.HTTPErrorStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
		}
		return models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: errors[0].Error()}
	}
	return models.HTTPErrorStatus{Status: http.StatusConflict, Message: "Experiment already exists"}
}

func mapTask(task models.Task, tasks []models.Task) (models.Task, error) {
	for i, t := range tasks {
		if task.Title == t.Title {
			return tasks[i], nil
		}
	}
	return models.Task{}, errors.New("Task does not exist")
}
