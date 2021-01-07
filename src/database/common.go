package database

import (
	"errors"
	"strings"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for common methods shared within the database module
 */

// exported task names
const (
	STROOP                    = "stroop"
	NBACK                     = "nback"
	TASKSWITCHING             = "taskswitching"
	TRAILMAKING               = "trailmaking"
	DEMANDSELECTION           = "demandselection"
	FINGERTAPPING             = "fingertapping"
	EXPERIMENTUSERS           = "experiment_users"
	DEMOGRAPHICSQUESTIONNAIRE = "demographics_questionnaire_responses"
	FEEDBACKQUESTIONNAIRE     = "feedback_questionnaire_responses"
)

// GetModel receives the given task, and gets the model for that task
func GetModel(task string) (interface{}, error) {
	switch task {
	case STROOP:
		return models.Stroop{}, nil
	case NBACK:
		return models.NBack{}, nil
	case TASKSWITCHING:
		return models.TaskSwitching{}, nil
	case TRAILMAKING:
		return models.TrailMaking{}, nil
	case DEMANDSELECTION:
		return models.DemandSelection{}, nil
	case FINGERTAPPING:
		return models.FingerTapping{}, nil
	default:
		return nil, errors.New("Could not get model from task name: " + task)
	}
}

// GetModelSlice receives the given task and returns the model slice for that task
func GetModelSlice(task string) (interface{}, error) {
	switch task {
	case STROOP:
		return []models.Stroop{}, nil
	case NBACK:
		return []models.NBack{}, nil
	case EXPERIMENTUSERS:
		return []models.ExperimentUser{}, nil
	case DEMANDSELECTION:
		return []models.DemandSelection{}, nil
	case TASKSWITCHING:
		return []models.TaskSwitching{}, nil
	case TRAILMAKING:
		return []models.TrailMaking{}, nil
	case FINGERTAPPING:
		return []models.FingerTapping{}, nil
	case DEMOGRAPHICSQUESTIONNAIRE:
		return []models.DemographicsQuestionnaireResponse{}, nil
	default:
		return nil, errors.New("Could not get model slice from task name: " + task)
	}
}

// Format formats the given string, removing all special characters and transforming to lower case
func Format(str string) string {
	return strings.ToLower(removeWhiteSpace(str))
}

func removeWhiteSpace(str string) string {
	// replace " " with "" for all instances
	// replace "%20" with "" (%20 is space encoding)
	replacer := strings.NewReplacer(" ", "", "%20", "", "-", "")
	return replacer.Replace(str)
}
