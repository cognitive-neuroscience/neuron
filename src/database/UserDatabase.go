package database

import (
	"errors"
	"net/http"
	"strings"
	"time"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for saving/deleting/retrieving user data
 */

// SaveUser saves a user in the database
func SaveUser(user *models.User) models.HTTPStatus {
	db := DBConn
	if err := db.Create(&user).Error; err != nil {
		axonlogger.ErrorLogger.Println("Could not save user", err)
		// 1062 = duplicate entry
		msg := "There was a problem saving the user"
		if strings.Contains(err.Error(), "1062") {
			msg = "A user with this email already exists"
			return models.HTTPStatus{Status: http.StatusBadRequest, Message: msg}
		}
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: msg}
	}
	axonlogger.InfoLogger.Println("Successfully saved user", user.Email, user.ID, user.Role)
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
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

// GetGuests retrieves all users of Role Guest from the DB
func GetGuests() ([]models.User, error) {
	db := DBConn
	var err error
	guests := []models.User{}
	if err := db.Where(&models.User{Role: "GUEST"}).Find(&guests).Error; err != nil {
		axonlogger.ErrorLogger.Println("Error fetching all guests", err)
		return guests, errors.New("Error getting guests")
	}
	axonlogger.InfoLogger.Println("Successfully retrieved guests")

	return scrubPrivateData(guests), err
}

func scrubPrivateData(users []models.User) []models.User {
	for i := 0; i < len(users); i++ {
		user := &users[i]
		user.CreatedAt = time.Time{}
		user.DeletedAt = &time.Time{}
		user.Password = ""
		user.UpdatedAt = time.Time{}

	}
	return users
}

// DeleteUserByEmail deletes the guest with the given email
func DeleteUserByEmail(email string) models.HTTPStatus {
	db := DBConn
	var user = models.User{}
	if err := db.Where(&models.User{Email: email}).First(&user).Error; err != nil {
		axonlogger.ErrorLogger.Println("Could not check if user exists", email, err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	if err := db.Unscoped().Where("email = ?", email).Delete(&models.User{}).Error; err != nil {
		axonlogger.ErrorLogger.Println("Could not delete user:", email, err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	axonlogger.InfoLogger.Println("User with:", email, "delete")
	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
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
		axonlogger.InfoLogger.Println("Successfully retrieved user", user.Email)
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
		axonlogger.ErrorLogger.Println("Error fetching all users", err)
		err = errors.New("Could not fetch users")
		return users, err
	}
	axonlogger.InfoLogger.Println("Successfully retrieved all users")
	return users, err
}
