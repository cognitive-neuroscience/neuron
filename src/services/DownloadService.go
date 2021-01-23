package services

import "github.com/cognitive-neuroscience/neuron/src/database"

// GetTableData retrieves the experiment data
func GetTableData(experimentCode string, taskName string) (interface{}, error) {
	return database.GetTableData(experimentCode, taskName)
}
