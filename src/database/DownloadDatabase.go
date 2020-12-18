package database

import (
	"log"
	"strings"
)

/*
 * This file is for getting data so that the admin can download it onto excel spreadsheets.
 */

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
	// manually add experiment_users and mturk_questionnaire_responses tables as we will always
	// want to see this
	filteredTableNames = append(filteredTableNames, "experiment_users")
	filteredTableNames = append(filteredTableNames, "mturk_questionnaire_responses")
	return filteredTableNames, nil
}

// GetTableData receives the experimentCode and taskName, retrieving the data from the assoc table
// from the database
func GetTableData(experimentCode string, taskName string) (interface{}, error) {
	if experimentCode == "experiment" && taskName == "users" {
		return retrieveDataFromTable("experiment_users", "experiment_users")
	} else if experimentCode == "mturk" && taskName == "questionnaire" {
		return retrieveDataFromTable("mturk_questionnaire_responses", "mturk_questionnaire_responses")
	} else {
		task := Format(taskName)
		tableName := "experiment_" + experimentCode + "_task_" + task
		return retrieveDataFromTable(tableName, task)
	}
}

func retrieveDataFromTable(tableName string, taskName string) (interface{}, error) {
	db := DBConn
	var err error = nil

	slice, err := GetModelSlice(taskName)
	if err != nil {
		return nil, err
	}

	if taskName == "experiment_users" || taskName == "mturk_questionnaire_responses" {
		err = db.Table(tableName).Find(&slice).Error
		return slice, err
	}
	err = db.Table(tableName).Order("user_id, trial").Find(&slice).Error
	return slice, err

}
