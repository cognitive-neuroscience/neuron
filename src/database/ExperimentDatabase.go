package database

import (
	"errors"
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SQL statements

/* inner join between experiment_tasks and tasks. This gets all records relating to a specific experiment
 * and then returns them ordered as a task struct.
 */
var getOrderedTasks string = "SELECT ID as id, title, description, type FROM experiment_tasks LEFT JOIN tasks ON task_id = ID WHERE experiment_code = ? ORDER BY place ASC"

// DeleteExperiment deletes the experiment with the given code. It also deletes all references in the ExperimentTask join table
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
	if err := db.Where("experiment_code = ?", code).Delete(&models.ExperimentTask{}).Error; err != nil {
		log.Printf("Deletion successful, but could not delete code %s from join table", code)
	}
	return models.HTTPErrorStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetAllExperiments finds and returns all existing experiments
func GetAllExperiments() ([]models.Experiment, error) {
	db := DBConn
	var err error
	experiments := []models.Experiment{}
	if err := db.Find(&experiments).Error; err != nil {
		err = errors.New("Could not fetch experiments")
	}

	for index, experiment := range experiments {
		db.Raw(getOrderedTasks, experiment.Code).Scan(&experiments[index].Tasks)
	}

	return experiments, err
}

// SaveExperiment saves the given experiment into the db
func SaveExperiment(experiment *models.Experiment) models.HTTPErrorStatus {
	db := DBConn

	// get all tasks
	tasks := []models.Task{}
	db.Find(&tasks)

	// create the experiment
	errors := db.Create(&experiment).GetErrors()
	if len(errors) > 0 {
		return models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: errors[0].Error()}
	}

	// create an ExperimentTask record for each task to preserve the order
	adjustment := 0
	for index, task := range experiment.Tasks {

		// TODO: validate that the given task is correct with the same name and type
		// ...

		experimentTaskObj := models.ExperimentTask{
			ExperimentCode: experiment.Code,
			TaskID:         task.ID,
			Place:          index - adjustment,
		}
		errors := db.Create(&experimentTaskObj).GetErrors()
		// if there is an error creating, then skip adding this ExperimentTask
		// and make sure the next one maintains the correct chronological order
		if len(errors) > 0 {
			adjustment++
		}
	}

	return models.HTTPErrorStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}
