package services

import (
	"crypto/md5"
	"encoding/hex"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveUser saves the user
func SaveUser(user *models.User) models.HTTPErrorStatus {
	hash := md5.New()
	hash.Write([]byte(user.Password))
	user.Password = hex.EncodeToString(hash.Sum(nil))
	return database.SaveUser(user)
}

// GetUsers returns all users
func GetUsers() []models.User {
	users, err := database.GetAllUsers()
	if err != nil {
		return []models.User{}
	}
	return users
}
