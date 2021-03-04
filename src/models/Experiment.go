package models

import (
	"github.com/jinzhu/gorm"
)

// Experiment represents a model for a set which contains tasks
type Experiment struct {
	gorm.Model
	Name           string `json:"name" gorm:"not null;default:''"`
	ExperimentCode string `json:"experimentCode" gorm:"not null;unique;default:null"`
	Description    string `json:"description" gorm:"default:''"`
	Tasks          []Task `json:"tasks" gorm:"many2many:experimentTasks"`
}
