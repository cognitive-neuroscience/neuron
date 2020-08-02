package models

import (
	"errors"

	"github.com/jinzhu/gorm"
)

// Experiment represents a model for a set which contains tasks
type Experiment struct {
	gorm.Model
	Name        string `json:"name" gorm:"not null;default:''"`
	Description string `json:"description" gorm:"not null;default:''"`
	Code        string `json:"code" gorm:"unique;not null;default:''"`
	Tasks       string `json:"tasks" gorm:"not null;default:''"`
}

// Validate method validates a given model
func (experiment Experiment) Validate(db *gorm.DB) {
	if experiment.Code == "" {
		db.AddError(errors.New("Code cannot be empty"))
	}
}
