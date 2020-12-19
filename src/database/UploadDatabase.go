package database

import (
	"errors"
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/mitchellh/mapstructure"
)

/*
 * This file is for uploading participant task data to the correct table
 */

// UploadTaskData saves the given GENERIC taskData into the correct database. The database is of the name
// EXPERIMENT_<experimentCode>_TASK_<taskName>
func UploadTaskData(experimentCode string, taskName string, taskData interface{}) models.HTTPStatus {
	formattedTaskName := Format(taskName)
	tableName := "experiment_" + experimentCode + "_task_" + formattedTaskName

	// get the model based off of the table name
	// tableModel2, err := GetModel(formattedTaskName)

	if errs := populateRows(formattedTaskName, tableName, taskData); len(errs) > 0 {
		log.Print(errs)
		return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// hack - we currently have to do a separate case for each task model...can we refactor this to make it better?
func populateRows(taskName string, tableName string, taskData interface{}) []error {
	db := DBConn
	// cast data to slice of interface{}
	if data, ok := taskData.([]interface{}); ok {
		// iterate over maps

		switch taskName {
		case STROOP:
			tableModel := models.Stroop{}
			for _, trial := range data {
				// decode the given json map and parse it into the table model
				mapstructure.Decode(trial, &tableModel)
				// create the record
				errs := db.Table(tableName).Create(tableModel).GetErrors()
				if len(errs) > 0 {
					return errs
				}
			}
			return []error{}
		case NBACK:
			tableModel := models.NBack{}
			for _, trial := range data {
				mapstructure.Decode(trial, &tableModel)
				errs := db.Table(tableName).Create(tableModel).GetErrors()
				if len(errs) > 0 {
					return errs
				}
			}
			return []error{}
		case TASKSWITCHING:
			tableModel := models.TaskSwitching{}
			for _, trial := range data {
				mapstructure.Decode(trial, &tableModel)
				errs := db.Table(tableName).Create(tableModel).GetErrors()
				if len(errs) > 0 {
					return errs
				}
			}
			return []error{}
		case TRAILMAKING:
			tableModel := models.TrailMaking{}
			for _, trial := range data {
				mapstructure.Decode(trial, &tableModel)
				errs := db.Table(tableName).Create(tableModel).GetErrors()
				if len(errs) > 0 {
					return errs
				}
			}
			return []error{}
		case DEMANDSELECTION:
			tableModel := models.DemandSelection{}
			for _, trial := range data {
				mapstructure.Decode(trial, &tableModel)
				errs := db.Table(tableName).Create(tableModel).GetErrors()
				if len(errs) > 0 {
					return errs
				}
			}
			return []error{}
		default:
			return append([]error{}, errors.New("Cannot populate task for "+taskName))
		}
	}
	return append([]error{}, errors.New("Could not cast trial data to model"))
}
