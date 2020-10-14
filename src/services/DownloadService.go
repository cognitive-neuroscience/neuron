package services

import "github.com/cognitive-neuroscience/neuron/src/database"

// GetTableData retrieves the experiment data
func GetTableData(experimentCode string, taskName string) (interface{}, error) {
	return database.GetTableData(experimentCode, taskName)
}

// GetTableNames returns names of tables that data can be retrieved from
func GetTableNames() ([]string, error) {
	return database.GetTableNames()
}
