package services

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// UploadTaskData saves the given experiment data into a table
func UploadTaskData(experimentCode string, taskName string, data interface{}) models.HTTPStatus {
	return database.UploadTaskData(experimentCode, taskName, data)
}
