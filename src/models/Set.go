package models

import "github.com/jinzhu/gorm"

// Set represents a model for an experiment set
type Set struct {
	gorm.Model
	Description string `json:"description" gorm:"not null;default:''"`
	Code        string `json:"code" gorm:"unique;not null"`
	Tasks       string `json:"tasks" gorm:"not null;default:''"`
}
