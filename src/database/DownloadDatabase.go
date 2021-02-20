package database

import (
	"errors"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for getting data so that the admin can download it onto excel spreadsheets.
 */

// GetTableData receives the experimentCode and taskName, retrieving the data from the assoc table
// from the database
func GetTableData(experimentCode string, taskName string) (interface{}, error) {
	data, err := retrieveDataFromTable(experimentCode, Format(taskName))
	if err != nil {
		axonlogger.ErrorLogger.Println("Error getting table data:", experimentCode, taskName, err)
	}
	return data, err
}

func retrieveDataFromTable(experimentCode string, taskName string) (interface{}, error) {
	db := DBConn

	switch taskName {
	case STROOP, STROOPSHORT:
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
	case ODDBALL:
		slice := []models.Oddball{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Order("user_id, trial").Error
		return slice, err
	case SMILEYFACE:
		slice := []models.SmileyFace{}
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
	case RATING:
		slice := []models.Rating{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Error
		return slice, err
	case CHOICE:
		slice := []models.Choice{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Error
		return slice, err
	case POSTCHOICE:
		slice := []models.PostChoice{}
		err := db.Where("experiment_code = ?", experimentCode).Find(&slice).Error
		return slice, err
	default:
		return nil, errors.New("Could not get model slice from model name. Taskname is: " + taskName)
	}
}
