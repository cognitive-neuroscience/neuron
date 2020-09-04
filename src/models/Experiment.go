package models

import (
	"errors"
	"log"

	"github.com/jinzhu/gorm"
)

// Experiment represents a model for a set which contains tasks
type Experiment struct {
	Code        string `json:"code" gorm:"primaryKey;not null;unique"`
	Name        string `json:"name" gorm:"not null;default:''"`
	Description string `json:"description" gorm:"not null;default:''"`
	Tasks       []Task `json:"tasks"`
}

// Validate method validates a given model
func (experiment Experiment) Validate(db *gorm.DB) {
	log.Println("VALIDATING")
	if experiment.Code == "" {
		db.AddError(errors.New("Code cannot be empty"))
	}
}
