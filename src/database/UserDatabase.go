package database

import (
	"errors"
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveUser saves a user in the database
func SaveUser(user *models.User) models.HTTPStatus {
	db := DBConn
	if db.NewRecord(user) {
		errors := db.Create(&user).GetErrors()
		if len(errors) == 0 {
			return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
		}
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: errors[0].Error()}
	}
	return models.HTTPStatus{Status: http.StatusConflict, Message: "Primary field present in body"}
}

// SaveExperimentAndParticipant sees if the record exists. If not, it creates one
func SaveExperimentAndParticipant(expUser models.ExperimentUser) models.HTTPStatus {
	db := DBConn
	if errors := db.Create(&expUser).GetErrors(); len(errors) != 0 {
		log.Println(errors[0].Error())
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Participant has already registered or completed the given experiment"}
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// MarkAsComplete gets the record with the associated userID and experiment code, setting completion to true (or 1)
func MarkAsComplete(experimentUser models.ExperimentUser) models.HTTPStatus {
	db := DBConn
	var expUserFromDB models.ExperimentUser
	if errs := db.Where(&experimentUser).First(&expUserFromDB).GetErrors(); len(errs) > 0 {
		log.Println(errs)
		return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
	}
	if expUserFromDB.ID != "" {
		expUserFromDB.Complete = true
		db.Save(&expUserFromDB)
		return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
	}
	return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
}

// GetCompletionCode returns the associated completion code of the user
func GetCompletionCode(userID string, code string) (string, error) {
	db := DBConn
	var expUserFromDB models.ExperimentUser
	if errs := db.Where(models.ExperimentUser{ID: userID, Code: code}).First(&expUserFromDB).GetErrors(); len(errs) > 0 {
		log.Println(errs)
		return "", errs[0]
	}
	return expUserFromDB.CompletionCode, nil
}

// GetExperimentUsers retrieves all the experimentUsers from the database
func GetExperimentUsers(experimentUser models.ExperimentUser) ([]models.ExperimentUser, error) {
	db := DBConn
	var experimentUsers []models.ExperimentUser
	if err := db.Find(&experimentUsers).Error; err != nil {
		return experimentUsers, errors.New("Could not fetch experimentUsers")
	}
	return experimentUsers, nil
}

// GetUserByEmail searches for a user given the email
func GetUserByEmail(email string) (models.User, error) {
	db := DBConn
	var user models.User
	var err error
	db.Where(&models.User{Email: email}).First(&user)
	if user.Email == email {
		err = nil
	} else {
		err = errors.New("Email does not exist")
	}
	return user, err
}

// GetAllUsers returns all users in DB
func GetAllUsers() ([]models.User, error) {
	db := DBConn
	var err error
	users := []models.User{}
	if err := db.Find(&users).Error; err != nil {
		err = errors.New("Could not fetch users")
	}
	return users, err
}
