package database

import (
	"errors"
	"log"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for getting data so that the admin can download it onto excel spreadsheets.
 */

var getTableNames string = "SHOW TABLES"
var excludedTableNames = []string{"users", "experiments", "experiment_tasks"}

// GetTableNames returns a list of tables that data can be retrieved from
func GetTableNames() ([]string, error) {
	db := DBConn
	tableNames := []string{}
	if err := db.Raw(getTableNames).Pluck("tables_in_sharplab", &tableNames).Error; err != nil {
		log.Println(err)
		return tableNames, err
	}
	counter := 0
	for _, name := range tableNames {
		// keep all table names we want, and remove the ones we don't want
		if !contains(excludedTableNames, name) {
			tableNames[counter] = name
			counter++
		}
	}

	return tableNames[:counter], nil
}

func contains(stringSlice []string, val string) bool {
	for _, element := range stringSlice {
		if element == val {
			return true
		}
	}
	return false
}

// GetTableData receives the experimentCode and taskName, retrieving the data from the assoc table
// from the database
func GetTableData(experimentCode string, taskName string) (interface{}, error) {
	if experimentCode == "experiment" && taskName == "users" {
		return retrieveDataFromTable("experiment_users", "experiment_users")
	} else if experimentCode == "demographics" && taskName == "questionnaire" {
		return retrieveDataFromTable("demographics_questionnaire_responses", "demographics_questionnaire_responses")
	} else {
		task := Format(taskName)
		tableName := "experiment_" + experimentCode + "_task_" + task
		return retrieveDataFromTable(tableName, task)
	}
}

func retrieveDataFromTable(tableName string, taskName string) (interface{}, error) {
	db := DBConn

	switch taskName {
	case STROOP:
		slice := []models.Stroop{}
		err := db.Table(tableName).Order("user_id, trial").Find(&slice).Error
		return slice, err
	case NBACK:
		slice := []models.NBack{}
		err := db.Table(tableName).Order("user_id, trial").Find(&slice).Error
		return slice, err
	case EXPERIMENTUSERS:
		slice := []models.ExperimentUser{}
		err := db.Table(tableName).Find(&slice).Error
		return slice, err
	case DEMANDSELECTION:
		slice := []models.DemandSelection{}
		err := db.Table(tableName).Find(&slice).Error
		return slice, err
	case TASKSWITCHING:
		slice := []models.TaskSwitching{}
		err := db.Table(tableName).Find(&slice).Error
		return slice, err
	case TRAILMAKING:
		slice := []models.TrailMaking{}
		err := db.Table(tableName).Find(&slice).Error
		return slice, err
	case DEMOGRAPHICSQUESTIONNAIRE:
		slice := []models.DemographicsQuestionnaireResponse{}
		err := db.Table(tableName).Find(&slice).Error
		return slice, err
	default:
		return nil, errors.New("Could not get model slice from model name")
	}
}
