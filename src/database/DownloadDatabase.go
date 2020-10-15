package database

import (
	"errors"
	"log"
	"strings"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

var getTableNames string = "SHOW TABLES"

// GetTableNames returns a list of tables that data can be retrieved from
func GetTableNames() ([]string, error) {
	db := DBConn
	tableNames := []string{}
	if err := db.Raw(getTableNames).Pluck("tables_in_sharplab", &tableNames).Error; err != nil {
		log.Println(err)
		return tableNames, err
	}
	filteredTableNames := []string{}
	for index, name := range tableNames {
		newStr := strings.Split(name, "_")
		if len(newStr) == 4 && newStr[0] == "experiment" && newStr[2] == "task" {
			filteredTableNames = append(filteredTableNames, tableNames[index])
		}
	}
	return filteredTableNames, nil
}

// GetTableData receives the experimentCode and taskName, retrieving the data from the assoc table
// from the database
func GetTableData(experimentCode string, taskName string) (interface{}, error) {
	task := strings.ToLower(RemoveWhiteSpace(taskName))
	tableName := "experiment_" + experimentCode + "_task_" + task
	return retrieveDataFromTable(tableName, task)

}

func retrieveDataFromTable(tableName string, taskName string) (interface{}, error) {
	db := DBConn
	var err error = nil
	switch taskName {
	case "strooptask":
		slice := []models.StroopTask{}
		err = db.Table(tableName).Order("user_id, trial").Find(&slice).Error
		return slice, err
	case "nback":
		slice := []models.NBack{}
		err = db.Table(tableName).Order("user_id, trial").Find(&slice).Error
		return slice, err
	default:
		return nil, errors.New("Could not get model from task name")
	}
}
