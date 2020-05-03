package database

import (
	"github.com/cognitive-neuroscience/neuron/src/models"
	"net/http"
)

// SaveUser saves a user in the database
func SaveUser(user models.User) models.HTTPErrorStatus {
	db := DBConn
	if db.NewRecord(user) {
		errors := db.Create(&user).GetErrors()
		if len(errors) == 0 {
			return models.HTTPErrorStatus { Status: 201, Error: http.StatusText(201)}
		}
		return models.HTTPErrorStatus { Status: 400, Error: errors[0].Error()}
	}
	return models.HTTPErrorStatus { Status: 409, Error: "Primary field present in body"}
}
