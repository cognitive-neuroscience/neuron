package models

import (
	"errors"

	"github.com/jinzhu/gorm"
)

// User represents a model for a user
type User struct {
	gorm.Model
	Email    string `json:"email" gorm:"unique_index;not null;default:''"`
	Password string `json:"password" gorm:"not null;default:''"`
	Role     string `json:"role" gorm:"not null;default:'PARTICIPANT'"`
}

// Validate method validates a given model
func (user User) Validate(db *gorm.DB) {
	if user.Email == "" {
		db.AddError(errors.New("Email Cannot be empty"))
	}
	if user.Password == "" {
		db.AddError(errors.New("Password cannot be empty"))
	}
}
