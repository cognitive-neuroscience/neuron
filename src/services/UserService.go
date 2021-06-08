package services

import (
	"errors"
	"net"
	"net/http"
	"regexp"
	"strings"
	"time"

	"golang.org/x/crypto/bcrypt"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type UserService struct{}

var cost = 14
var emailRegex = regexp.MustCompile("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")

// SaveExperimentAndParticipant saves user into ExperimentUser database and records if experiment has been complete
// as well as the completion string for turkers
// func SaveExperimentAndParticipant(experimentUser models.ExperimentUser) models.HTTPStatus {
// 	experimentUser.ID = strings.ToUpper(experimentUser.ID)
// 	return database.SaveExperimentAndParticipant(experimentUser)
// }

// SaveUser saves the user
func (u *UserService) SaveUser(user *models.User) models.HTTPStatus {
	if user.Password == "" {
		axonlogger.WarningLogger.Println("Did not save", user.Email, "password cannot be empty")
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Password cannot be empty"}
	}
	if !isEmailValid(user.Email) {
		axonlogger.WarningLogger.Println("Email not valid:", user.Email)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Email is not valid"}
	}
	if user.Role != "PARTICIPANT" && user.Role != "GUEST" {
		axonlogger.WarningLogger.Println("Role not recognized", user.Role)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Role is not valid"}
	}

	hashedPassword, err := hashAndSalt(user.Password)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error hashing the given password", user.Email)
		return models.HTTPStatus{Status: http.StatusBadGateway, Message: http.StatusText(http.StatusBadGateway)}
	}
	user.Password = hashedPassword
	return userRepositoryImpl.SaveUser(user)
}

// GetGuests retrieves all users of the Role GUEST
func (u *UserService) GetGuests() ([]models.User, error) {
	return userRepositoryImpl.GetGuests()
}

// GetUserByEmail retrieves the user by the given email
func (u *UserService) GetUserByEmail(email string) (models.User, error) {
	user, err := userRepositoryImpl.GetUserByEmail(email)
	// scrub sensitive data
	user.CreatedAt = time.Time{}
	user.Password = ""
	return user, err
}

// DeleteUserById deletes the guest with the given email
func (u *UserService) DeleteGuestById(id string) models.HTTPStatus {
	parsedId, err := convertStringToUint8(id)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
	}

	guest, err := userRepositoryImpl.GetUserById(parsedId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not retrieve guest", err)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
	}
	if guest.Role != common.GUEST {
		axonlogger.WarningLogger.Println("Did not delete guest - unexpected role")
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
	}
	return userRepositoryImpl.DeleteUserByEmail(guest.Email)
}

// // MarkAsComplete updates the given experimentUser as complete
// func MarkAsComplete(experimentUser models.ExperimentUser) models.HTTPStatus {
// 	// code := GenerateCode(10)
// 	code := "hello"
// 	experimentUser.CompletionCode = code
// 	experimentUser.Complete = true
// 	axonlogger.InfoLogger.Println("Generated completion code for user", experimentUser.ID, ":", code)
// 	return database.MarkAsComplete(experimentUser)
// }

// // GetCompletionCode return the completion code of the given experimentUser
// func GetCompletionCode(userID string, code string) (string, error) {
// 	return database.GetCompletionCode(userID, code)
// }

func isEmailValid(email string) bool {
	if len(email) < 3 || len(email) > 254 {
		return false
	}
	if !emailRegex.MatchString(email) {
		return false
	}
	// if it passed the regex test, it must have an "@" sign so this is safe
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

// // GetUsers returns all users
// func GetUsers() []models.User {
// 	users, err := database.GetAllUsers()
// 	if err != nil {
// 		return []models.User{}
// 	}
// 	return users
// }
