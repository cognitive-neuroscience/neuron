package models

import "github.com/jinzhu/gorm"

// ExperimentTask represents a many to many relationship between experiments and tasks
type ExperimentTask struct {
	gorm.Model
	ExperimentID int `gorm:"primary_key;not null"`
	TaskID       int `gorm:"primary_key;not null"`
	taskOrder    int `gorm:"not null;default:null"`
}

// TableName impplements TableName interface to change name of table
func (ExperimentTask) TableName() string {
	return "experimentTasks"
}
