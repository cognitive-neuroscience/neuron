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

// DoesUserExistByEmailAndPassword searches for a user, given the email and password
func DoesUserExistByEmailAndPassword(email string, password string) (models.User, error) {
	db := DBConn
	var user models.User
	var err error
	db.Where(&models.User{Email: email, Password: password}).First(&user)
	if user.Email == email && user.Password == password {
		err = nil
	} else {
		err = errors.New("Invalid Email or Password")
	}
	return user, err
}
