package database

import (
	"errors"
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for saving/deleting/retrieving user data
 */

// SaveUser saves a user in the database
func SaveUser(user *models.User) models.HTTPStatus {
	db := DBConn
	if db.NewRecord(user) {
		errors := db.Create(&user).GetErrors()
		if len(errors) == 0 {
			axonlogger.InfoLogger.Println("Successfully saved user", user.Email, user.ID, user.Role)
			return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
		}
		axonlogger.ErrorLogger.Println("Could not save user", errors)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: errors[0].Error()}
	}
	axonlogger.WarningLogger.Println("Did not save record, DB NewRecord check failed")
	return models.HTTPStatus{Status: http.StatusConflict, Message: "Primary field present in body"}
}

// SaveExperimentAndParticipant sees if the record exists. If not, it creates one
func SaveExperimentAndParticipant(expUser models.ExperimentUser) models.HTTPStatus {
	// TODO: refactor this so that we do a search first, and then return true/false based on if we find the participant or not
	db := DBConn
	if errors := db.Create(&expUser).GetErrors(); len(errors) != 0 {
		axonlogger.ErrorLogger.Println("Could not create experiment user:", errors)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Participant has already registered or completed the given experiment"}
	}
	axonlogger.InfoLogger.Println("Successfully saved experiment user", expUser)
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// MarkAsComplete gets the record with the associated userID and experiment code, setting completion to true (or 1)
func MarkAsComplete(experimentUser models.ExperimentUser) models.HTTPStatus {
	db := DBConn
	var expUserFromDB models.ExperimentUser
	if errs := db.Where(models.ExperimentUser{Code: experimentUser.Code, ID: experimentUser.ID}).First(&expUserFromDB).GetErrors(); len(errs) > 0 {
		axonlogger.ErrorLogger.Println("Error retreiving", experimentUser.ID, experimentUser.Code, "from DB:", errs)
		return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
	}
	if expUserFromDB.ID != "" {
		expUserFromDB.Complete = experimentUser.Complete
		expUserFromDB.CompletionCode = experimentUser.CompletionCode
		if errs := db.Save(&expUserFromDB).GetErrors(); len(errs) > 0 {
			axonlogger.ErrorLogger.Println("Found", experimentUser, "from DB but there was an error saving", expUserFromDB, "to DB")
			return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
		}
		axonlogger.InfoLogger.Println("Successfully marked user as complete", experimentUser)
		return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
	}
	axonlogger.ErrorLogger.Println("User retrieved from DB has empty ID:", expUserFromDB)
	return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
}

// GetCompletionCode returns the associated completion code of the user
func GetCompletionCode(userID string, code string) (string, error) {
	db := DBConn
	var expUserFromDB models.ExperimentUser
	if errs := db.Where(models.ExperimentUser{ID: userID, Code: code}).First(&expUserFromDB).GetErrors(); len(errs) > 0 {
		axonlogger.ErrorLogger.Println("Error retrieving completion code from DB for user", userID, code, ":", errs)
		return "", errs[0]
	}
	axonlogger.InfoLogger.Println("Successfully retrieved completion code for", userID, ":", code)
	return expUserFromDB.CompletionCode, nil
}

// GetExperimentUsers retrieves all the experimentUsers from the database
func GetExperimentUsers(experimentUser models.ExperimentUser) ([]models.ExperimentUser, error) {
	db := DBConn
	var experimentUsers []models.ExperimentUser
	if err := db.Find(&experimentUsers).Error; err != nil {
		return experimentUsers, errors.New("Could not fetch experimentUsers")
	}
	axonlogger.InfoLogger.Println("Successfully retrieved experiment users")
	return experimentUsers, nil
}

// GetUserByEmail searches for a user given the email
func GetUserByEmail(email string) (models.User, error) {
	db := DBConn

	var user models.User
	var err error

	// error getting data from the db
	if err = db.Where(&models.User{Email: email}).First(&user).Error; err != nil {
		axonlogger.ErrorLogger.Println(err)
		return user, errors.New("There was an issue retrieving your login information")
	}

	if user.Email == email {
		axonlogger.InfoLogger.Println("Successfully retrieved user", user)
		return user, err
	}
	return user, errors.New("Email has not been registered")

}

// GetAllUsers returns all users in DB
func GetAllUsers() ([]models.User, error) {
	db := DBConn
	var err error
	users := []models.User{}
	if err := db.Find(&users).Error; err != nil {
		err = errors.New("Could not fetch users")
	}
	axonlogger.InfoLogger.Println("Successfully retrieved all users")
	return users, err
}
