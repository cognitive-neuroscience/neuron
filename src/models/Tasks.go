package models

import "github.com/jinzhu/gorm"

// Task represents a model to store task data which experiments can refer to
type Task struct {
	gorm.Model
	Title       string `json:"title" gorm:"unique;not null;default:''"`
	Description string `json:"description"`
	Route       string `json:"route" gorm:"not null"`
	Type        string `json:"type"`
}
