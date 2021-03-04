package models

import "github.com/jinzhu/gorm"

// Task represents the most basic configuration for the tasks in sharplab
type Task struct {
	gorm.Model
	TaskType          string `json:"taskType"`
	Route             string `json:"route"`
	Name              string `json:"name"`
	Description       string `json:"description"`
	ExternalURL       string `json:"externalUrl"`
	MappingIdentifier string `json:"mappingIdentifier"`
}

// TableName impplements TableName interface to change name of table
func (Task) TableName() string {
	return "tasks"
}
