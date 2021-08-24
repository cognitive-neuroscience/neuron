package services

import (
	"errors"
	"time"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"golang.org/x/crypto/bcrypt"
)

type AuthService struct{}

func (l *AuthService) GetTemporaryPassword() string {
	return GenerateCode(10)
}

// ValidateCredentials checks to see if the email and password match by querying the db
// for the correct email and then comparing
func (l *AuthService) ValidateCredentials(email string, password string) (models.User, error) {

	user, err := userRepositoryImpl.GetUserByEmail(email)
	if err != nil {
		return user, err
	}
	if user.ChangePasswordRequired {
		return user, errors.New("password must be changed before login")
	}
	// check if their password matches
	if !passwordIsCorrect(user.Password, password) {
		return user, errors.New("password is incorrect")
	}
	user.Password = ""
	user.CreatedAt = time.Time{}
	return user, nil
}

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
