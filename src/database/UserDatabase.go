package database

import (
	"errors"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveUser saves a user in the database
func SaveUser(user *models.User) models.HTTPErrorStatus {
	db := DBConn
	if db.NewRecord(user) {
		errors := db.Create(&user).GetErrors()
		if len(errors) == 0 {
			return models.HTTPErrorStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
		}
		return models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: errors[0].Error()}
	}
	return models.HTTPErrorStatus{Status: http.StatusConflict, Message: "Primary field present in body"}
}

// GetUserByEmail searches for a user given the email
func GetUserByEmail(email string) (models.User, error) {
	db := DBConn
	var user models.User
	var err error
	db.Where(&models.User{Email: email}).First(&user)
	if user.Email == email {
		err = nil
	} else {
		err = errors.New("Email does not exist in database")
	}
	return user, err
}

// GetAllUsers returns all users in DB
func GetAllUsers() ([]models.User, error) {
	db := DBConn
	var err error
	users := []models.User{}
	if err := db.Find(&users).Error; err != nil {
		err = errors.New("Could not fetch users")
	}
	return users, err
}
