package models

import (
	"errors"

	"github.com/jinzhu/gorm"
)

// Set represents a model for an experiment set
type Set struct {
	gorm.Model
	Description string `json:"description" gorm:"not null;default:''"`
	Code        string `json:"code" gorm:"unique;not null;default:''"`
	Tasks       string `json:"tasks" gorm:"not null;default:''"`
}

// Validate method validates a given model
func (set Set) Validate(db *gorm.DB) {
	if set.Code == "" {
		db.AddError(errors.New("Code cannot be empty"))
	}
}
