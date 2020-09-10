package services

import (
	"errors"
	"net"
	"net/http"
	"regexp"
	"strings"

	"golang.org/x/crypto/bcrypt"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

var cost = 13

var emailRegex = regexp.MustCompile("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")

// SaveUser saves the user
func SaveUser(user *models.User) models.HTTPErrorStatus {
	if user.Password == "" {
		return models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: "Password cannot be empty"}
	}
	if !isEmailValid(user.Email) {
		return models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: "Email is not valid"}
	}

	hashedPassword, err := hashAndSalt(user.Password)
	if err != nil {
		return models.HTTPErrorStatus{Status: http.StatusBadGateway, Message: http.StatusText(http.StatusBadGateway)}
	}
	user.Password = hashedPassword
	return database.SaveUser(user)
}

func isEmailValid(email string) bool {
	if len(email) < 3 || len(email) > 254 {
		return false
	}
	if !emailRegex.MatchString(email) {
		return false
	}
	// if it passed the regex test, it must have an "@" sign
	// so this is safe
	emailSections := strings.Split(email, "@")

	mx, err := net.LookupMX(emailSections[1])

	if err != nil || len(mx) == 0 {
		return false
	}

	return true
}

func hashAndSalt(password string) (string, error) {
	hash, err := bcrypt.GenerateFromPassword([]byte(password), cost)
	if err != nil {
		return "", errors.New("Could not Hash password")
	}
	return string(hash), nil
}

// GetUsers returns all users
func GetUsers() []models.User {
	users, err := database.GetAllUsers()
	if err != nil {
		return []models.User{}
	}
	return users
}
