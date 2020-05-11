package models

import (
	"errors"

	"github.com/jinzhu/gorm"
)

// User represents a model for a user
type User struct {
	gorm.Model
	Email    string `gorm:"unique_index;not null;default:''"`
	Password string `gorm:"not null;default:''"`
	Role     string `gorm:"not null;default:'PARTICIPANT'"`
	SetCode  string `gorm:"not null;default:''"`
}

// Validate method validates a given model
func (user User) Validate(db *gorm.DB) {
	if user.Email == "" {
		db.AddError(errors.New("Email Cannot be empty"))
	}
	if user.Password == "" {
		db.AddError(errors.New("Password cannot be empty"))
	}
	if user.SetCode == "" {
		db.AddError(errors.New("SetCode cannot be empty"))
	}
}
