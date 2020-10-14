package database

import (
	"net/http"
	"strings"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/mitchellh/mapstructure"
)

// UploadTaskData saves the given taskData into the correct database. The database is of the name
// EXPERIMENT_<experimentCode>_TASK_<taskName>
func UploadTaskData(experimentCode string, taskName string, taskData interface{}) models.HTTPStatus {
	db := DBConn
	taskName = strings.ToLower(RemoveWhiteSpace(taskName))
	tableName := "experiment_" + experimentCode + "_task_" + strings.ToLower(RemoveWhiteSpace(taskName))

	// get the model based off of the table name
	tableModel, err := GetModel(taskName)
	if err != nil {
		return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
	}

	// cast data to slice of interface{}
	if data, ok := taskData.([]interface{}); ok {
		// iterate over maps
		for _, trial := range data {
			// decode the given json map and parse it into the table model
			mapstructure.Decode(trial, &tableModel)
			// create the record
			errs := db.Table(tableName).Create(&tableModel).GetErrors()
			if len(errs) > 0 {
				return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
			}
		}
		return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
	}
	return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
}
