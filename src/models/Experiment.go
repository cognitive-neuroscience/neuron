package models

import (
	"errors"

	"github.com/jinzhu/gorm"
)

// Experiment represents a model for a set which contains tasks
type Experiment struct {
	gorm.Model
	Code        string `json:"code" gorm:"not null;"`
	Name        string `json:"name" gorm:"not null;default:''"`
	Description string `json:"description" gorm:"not null;default:''"`
	Tasks       []Task `json:"tasks" gorm:"many2many:experiments_tasks;"`
}

// Validate method validates a given model
func (experiment Experiment) Validate(db *gorm.DB) {
	if experiment.Code == "" {
		db.AddError(errors.New("Code cannot be empty"))
	}
}
