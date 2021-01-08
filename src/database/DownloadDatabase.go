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

// table that we don't want to show to the user
var excludedTableNames = []string{"users", "experiments", "experiment_tasks"}

// tables that
var specialTable = []string{}

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
	return retrieveDataFromTable(experimentCode, Format(taskName))
}

func retrieveDataFromTable(experimentCode string, taskName string) (interface{}, error) {
	db := DBConn

	switch taskName {
	case STROOP:
		slice := []models.Stroop{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Order("user_id, trial").Error
		return slice, err
	case NBACK:
		slice := []models.NBack{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Order("user_id, trial").Error
		return slice, err
	case EXPERIMENTUSERS:
		// TODO: refactor - change c'code' to experiment_code
		slice := []models.ExperimentUser{}
		err := db.Where("code = ?", experimentCode).Find(&slice).Error
		return slice, err
	case DEMANDSELECTION:
		slice := []models.DemandSelection{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Order("user_id, trial").Error
		return slice, err
	case TASKSWITCHING:
		slice := []models.TaskSwitching{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Order("user_id, trial").Error
		return slice, err
	case TRAILMAKING:
		slice := []models.TrailMaking{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Order("user_id, trial").Error
		return slice, err
	case FINGERTAPPING:
		slice := []models.FingerTapping{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Order("user_id, trial").Error
		return slice, err
	case DIGITSPAN:
		slice := []models.DigitSpan{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Order("user_id, trial").Error
		return slice, err
	case DEMOGRAPHICSQUESTIONNAIRE:
		slice := []models.DemographicsQuestionnaireResponse{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Error
		return slice, err
	case FEEDBACKQUESTIONNAIRE:
		slice := []models.FeedbackQuestionnaireResponse{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Error
		return slice, err
	default:
		return nil, errors.New("Could not get model slice from model name. Taskname is: " + taskName)
	}
}
