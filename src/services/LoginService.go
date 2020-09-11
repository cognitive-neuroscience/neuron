package services

import (
	"errors"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"golang.org/x/crypto/bcrypt"
)

// DoLogin hashes the password and queries the database
func DoLogin(email string, password string) (models.User, error) {

	user, err := database.GetUserByEmail(email)
	if err != nil {
		return user, err
	}
	if !passwordIsCorrect(user.Password, password) {
		return user, errors.New("Password is invalid")
	}
	return user, nil
}

func passwordIsCorrect(hashedPassword string, plaintextPassword string) bool {
	// convert both into byte hashes for bcrypt
	byteHashPassword := []byte(hashedPassword)
	bytePlaintextPassword := []byte(plaintextPassword)
	err := bcrypt.CompareHashAndPassword(byteHashPassword, bytePlaintextPassword)
	if err != nil {
		return false
	}
	return true
}
