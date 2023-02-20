package services

import (
	"errors"
	"net"
	"net/http"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"golang.org/x/crypto/bcrypt"
)

type AuthService struct{}

// ValidateCredentialsAndGetUser checks to see if the email and password match by querying the db
// for the correct email and then comparing
func (l *AuthService) ValidateCredentialsAndGetUser(email string, password string) (models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("AUTH SERVICE: ValidateCredentialsAndGetUser()")

	user, httpStatus := userRepositoryImpl.GetUserByEmail(email)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		user.Password = ""
		user.CreatedAt = time.Time{}
		return user, httpStatus
	}
	if user.ChangePasswordRequired {
		user.Password = ""
		user.CreatedAt = time.Time{}
		return user, models.HTTPStatus{Status: http.StatusForbidden, Message: "password must be changed"}
	}
	// check if their password matches
	if !passwordIsCorrect(user.Password, password) {
		user.Password = ""
		user.CreatedAt = time.Time{}
		return user, models.HTTPStatus{Status: http.StatusUnauthorized, Message: "password is incorrect"}
	}
	user.Password = ""
	user.CreatedAt = time.Time{}
	return user, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// passwordIsCorrect compares the given password to the hashed password and determines if they match
func passwordIsCorrect(hashedPassword string, plaintextPassword string) bool {
	// convert both into byte hashes for bcrypt
	byteHashPassword := []byte(hashedPassword)
	bytePlaintextPassword := []byte(plaintextPassword)
	err := bcrypt.CompareHashAndPassword(byteHashPassword, bytePlaintextPassword)
	if err != nil {
		axonlogger.ErrorLogger.Println("error comparing passwords", err)
		return false
	}
	return true
}

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
		return "", errors.New("could not hash password")
	}
	return string(hash), nil
}
