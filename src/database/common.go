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
	STROOP          = "stroop"
	NBACK           = "nback"
	TASKSWITCHING   = "taskswitching"
	TRAILMAKING     = "trailmaking"
	DEMANDSELECTION = "demandselection"
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
	default:
		return nil, errors.New("Could not get model from task name: " + task)
	}
}

// GetModelSlice receives the given model name nad returns a slice of the model
func GetModelSlice(modelName string) (interface{}, error) {
	switch modelName {
	case "stroop":
		return []models.Stroop{}, nil
	case "nback":
		return []models.NBack{}, nil
	case "experiment_users":
		return []models.ExperimentUser{}, nil
	case "mturk_questionnaire_responses":
		return []models.DemographicsQuestionnaireResponse{}, nil
	default:
		return nil, errors.New("Could not get model slice from model name")
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
