package services

import (
	"crypto/md5"
	"encoding/hex"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// DoLogin hashes the password and queries the database
func DoLogin(email string, password string) (models.User, error) {
	hash := md5.New()
	hash.Write([]byte(password))
	password = hex.EncodeToString(hash.Sum(nil))
	return database.DoesUserExistByEmailAndPassword(email, password)
}
