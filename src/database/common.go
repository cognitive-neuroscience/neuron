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
	STROOPSHORT               = "stroopshort"
	NBACK                     = "nback"
	TASKSWITCHING             = "taskswitching"
	TRAILMAKING               = "trailmaking"
	DEMANDSELECTION           = "demandselection"
	FINGERTAPPING             = "fingertapping"
	DIGITSPAN                 = "digitspan"
	ODDBALL                   = "oddball"
	SMILEYFACE                = "smileyface"
	EXPERIMENTUSERS           = "experiment_users"
	DEMOGRAPHICSQUESTIONNAIRE = "demographicsquestionnaire"
	FEEDBACKQUESTIONNAIRE     = "feedback_questionnaire_responses"
	SURVEYMONKEYQUESTIONNAIRE = "surveymonkeyquestionnaire"
	RATING                    = "rating"
	CHOICE                    = "choice"
	POSTCHOICE                = "postchoice"
	PAVLOVIATASK              = "pavloviatask"
	RATINGNEW                 = "ratingnew"
)

// GetModel receives the given task, and gets the model for that task
func GetModel(task string) (interface{}, error) {
	switch task {
	case STROOP, STROOPSHORT:
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
	case DIGITSPAN:
		return models.DigitSpan{}, nil
	case ODDBALL:
		return models.Oddball{}, nil
	case SMILEYFACE:
		return models.SmileyFace{}, nil
	case RATING:
		return models.Rating{}, nil
	case RATINGNEW:
		return models.RatingNew{}, nil
	case CHOICE:
		return models.Choice{}, nil
	case POSTCHOICE:
		return models.PostChoice{}, nil
	default:
		return nil, errors.New("Could not get model from task name: " + task)
	}
}

// GetModelSlice receives the given task and returns the model slice for that task
func GetModelSlice(task string) (interface{}, error) {
	switch task {
	case STROOP, STROOPSHORT:
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
	case DIGITSPAN:
		return []models.DigitSpan{}, nil
	case ODDBALL:
		return []models.Oddball{}, nil
	case SMILEYFACE:
		return []models.SmileyFace{}, nil
	case DEMOGRAPHICSQUESTIONNAIRE:
		return []models.DemographicsQuestionnaireResponse{}, nil
	case RATING:
		return []models.Rating{}, nil
	case RATINGNEW:
		return []models.RatingNew{}, nil
	case CHOICE:
		return []models.Choice{}, nil
	case POSTCHOICE:
		return []models.PostChoice{}, nil
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
