package services

// import (
// 	"errors"

// 	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

// 	"github.com/cognitive-neuroscience/neuron/src/database"
// 	"github.com/cognitive-neuroscience/neuron/src/models"
// 	"golang.org/x/crypto/bcrypt"
// )

// // ValidateCredentials checks to see if the email and password match by querying the db
// // for the correct email and then comparing
// func ValidateCredentials(email string, password string) (models.User, error) {

// 	user, err := database.GetUserByEmail(email)
// 	if err != nil {
// 		return user, err
// 	}
// 	// check if their password matches
// 	if !passwordIsCorrect(user.Password, password) {
// 		return user, errors.New("Password is incorrect")
// 	}
// 	return user, nil
// }

// func passwordIsCorrect(hashedPassword string, plaintextPassword string) bool {
// 	// convert both into byte hashes for bcrypt
// 	byteHashPassword := []byte(hashedPassword)
// 	bytePlaintextPassword := []byte(plaintextPassword)
// 	err := bcrypt.CompareHashAndPassword(byteHashPassword, bytePlaintextPassword)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println(err)
// 		return false
// 	}
// 	return true
// }
