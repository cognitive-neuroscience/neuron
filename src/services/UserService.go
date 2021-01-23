package services

import (
	"errors"
	"net"
	"net/http"
	"regexp"
	"strings"

	"golang.org/x/crypto/bcrypt"

	"github.com/cognitive-neuroscience/neuron/src/database"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

var cost = 13

var emailRegex = regexp.MustCompile("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")

// SaveExperimentAndParticipant saves user into ExperimentUser database and records if experiment has been complete
// as well as the completion string for turkers
func SaveExperimentAndParticipant(experimentUser models.ExperimentUser) models.HTTPStatus {
	experimentUser.ID = strings.ToUpper(experimentUser.ID)
	return database.SaveExperimentAndParticipant(experimentUser)
}

// SaveUser saves the user
func SaveUser(user *models.User) models.HTTPStatus {
	if user.Password == "" {
		axonlogger.WarningLogger.Println("Did not save", user.Email, "password cannot be empty")
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Password cannot be empty"}
	}
	if !isEmailValid(user.Email) {
		axonlogger.WarningLogger.Println("Email not valid:", user.Email)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Email is not valid"}
	}

	hashedPassword, err := hashAndSalt(user.Password)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error hashing the given password", user.Email)
		return models.HTTPStatus{Status: http.StatusBadGateway, Message: http.StatusText(http.StatusBadGateway)}
	}
	user.Password = hashedPassword
	return database.SaveUser(user)
}

// MarkAsComplete updates the given experimentUser as complete
func MarkAsComplete(experimentUser models.ExperimentUser) models.HTTPStatus {
	code := GenerateCode(10)
	experimentUser.CompletionCode = code
	experimentUser.Complete = true
	axonlogger.InfoLogger.Println("Generated completion code for user", experimentUser.ID, ":", code)
	return database.MarkAsComplete(experimentUser)
}

// GetCompletionCode return the completion code of the given experimentUser
func GetCompletionCode(userID string, code string) (string, error) {
	return database.GetCompletionCode(userID, code)
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
