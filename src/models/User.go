package models

import "github.com/jinzhu/gorm"

// User represents a model for a user
type User struct {
	gorm.Model
	Email    string `gorm:"unique;not null"`
	Password string `gorm:"not null"`
	Role     string `gorm:"not null;default:'PARTICIPANT'"`
	SetCode  string `gorm:"not null;default:'DEFAULT'"`
}
