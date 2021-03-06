package models

import (
	"errors"

	"github.com/jinzhu/gorm"
)

// Experiment represents a model for a set which contains tasks
type Experiment struct {
	Name           string          `json:"name" gorm:"not null;default:''"`
	Code           string          `json:"code" gorm:"primary_key;not null;unique"`
	Description    string          `json:"description" gorm:"not null;default:''"`
	Deleted        bool            `json:"deleted" gorm:"default:false"`
	Tasks          []string        `json:"tasks" gorm:"-"` // ignore this field
	Questionnaires []Questionnaire `json:"questionnaires"`
	CustomTasks    []CustomTask    `json:"customTasks"`
}

// Validate method validates a given model
func (experiment Experiment) Validate(db *gorm.DB) {
	if experiment.Code == "" {
		db.AddError(errors.New("Code cannot be empty"))
	}
}
