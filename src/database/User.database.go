package database

import (
	"database/sql"
	"errors"
	"net/http"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

type UserRepository struct {
}

/*
 * This file is for saving/deleting/retrieving user data
 */

// SaveUser saves a user in the database
func (u *UserRepository) SaveUser(user *models.User) (operationStatus models.HTTPStatus) {
	db := db.DB

	var saveUserIntoDB = `INSERT INTO users (email, password, role, created_at) VALUES (?, ?, ?, ?)`
	_, err := db.Exec(saveUserIntoDB, user.Email, user.Password, user.Role, time.Now().UTC())

	if err != nil {
		axonlogger.ErrorLogger.Println("Error saving user into DB", err)
		msg := "There was a problem creating the user"
		status := http.StatusInternalServerError
		if strings.Contains(err.Error(), "1062") {
			// 1062 is a mysql DB error indicating duplicate entry exists
			msg = "A user with this email already exists"
			status = http.StatusConflict
		}
		return models.HTTPStatus{Status: status, Message: msg}
	}
	axonlogger.InfoLogger.Println("Successfully created user:", user.Email, user.ID, user.Role, user.CreatedAt)
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// // SaveExperimentAndParticipant sees if the record exists. If not, it creates one
// func SaveExperimentAndParticipant(expUser models.ExperimentUser) models.HTTPStatus {
// 	// TODO: refactor this so that we do a search first, and then return true/false based on if we find the participant or not
// 	db := DBConn
// 	if errors := db.Create(&expUser).GetErrors(); len(errors) != 0 {
// 		axonlogger.ErrorLogger.Println("Could not create experiment user:", errors)
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Participant has already registered or completed the given experiment"}
// 	}
// 	axonlogger.InfoLogger.Println("Successfully saved experiment user", expUser)
// 	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
// }

// // MarkAsComplete gets the record with the associated userID and experiment code, setting completion to true (or 1)
// func MarkAsComplete(experimentUser models.ExperimentUser) models.HTTPStatus {
// 	db := DBConn
// 	var expUserFromDB models.ExperimentUser
// 	if errs := db.Where(models.ExperimentUser{Code: experimentUser.Code, ID: experimentUser.ID}).First(&expUserFromDB).GetErrors(); len(errs) > 0 {
// 		axonlogger.ErrorLogger.Println("Error retreiving", experimentUser.ID, experimentUser.Code, "from DB:", errs)
// 		return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
// 	}
// 	if expUserFromDB.ID != "" {
// 		expUserFromDB.Complete = experimentUser.Complete
// 		expUserFromDB.CompletionCode = experimentUser.CompletionCode
// 		if errs := db.Save(&expUserFromDB).GetErrors(); len(errs) > 0 {
// 			axonlogger.ErrorLogger.Println("Found", experimentUser, "from DB but there was an error saving", expUserFromDB, "to DB")
// 			return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
// 		}
// 		axonlogger.InfoLogger.Println("Successfully marked user as complete", experimentUser)
// 		return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
// 	}
// 	axonlogger.ErrorLogger.Println("User retrieved from DB has empty ID:", expUserFromDB)
// 	return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
// }

// // GetCompletionCode returns the associated completion code of the user
// func GetCompletionCode(userID string, code string) (string, error) {
// 	db := DBConn
// 	var expUserFromDB models.ExperimentUser
// 	if errs := db.Where(models.ExperimentUser{ID: userID, Code: code}).First(&expUserFromDB).GetErrors(); len(errs) > 0 {
// 		axonlogger.ErrorLogger.Println("Error retrieving completion code from DB for user", userID, code, ":", errs)
// 		return "", errs[0]
// 	}
// 	axonlogger.InfoLogger.Println("Successfully retrieved completion code for", userID, ":", code)
// 	return expUserFromDB.CompletionCode, nil
// }

// // GetExperimentUsers retrieves all the experimentUsers from the database
// func GetExperimentUsers(experimentUser models.ExperimentUser) ([]models.ExperimentUser, error) {
// 	db := DBConn
// 	var experimentUsers []models.ExperimentUser
// 	if err := db.Find(&experimentUsers).Error; err != nil {
// 		return experimentUsers, errors.New("Could not fetch experimentUsers")
// 	}
// 	axonlogger.InfoLogger.Println("Successfully retrieved experiment users")
// 	return experimentUsers, nil
// }

// GetGuests retrieves all users of Role Guest from the DB
func (u *UserRepository) GetGuests() ([]models.User, error) {
	db := db.DB
	var err error
	guests := []models.User{}

	var getAllGuests = `SELECT id, email, role FROM users WHERE role = ?`

	rows, err := db.Query(getAllGuests, common.GUEST)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error getting guests from the DB", err)
		return nil, errors.New("there was an error retrieving guests")
	}
	defer rows.Close()
	for rows.Next() {
		guest := models.User{}
		err := rows.Scan(
			&guest.ID,
			&guest.Email,
			&guest.Role,
		)
		if err != nil {
			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving guests", err)
			return nil, errors.New("there was an error retrieving guests")
		}
		guests = append(guests, guest)
	}
	if err := rows.Err(); err != nil {
		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
		return nil, errors.New("there was an error retrieving guests")	
	}
	return guests, err
}


// func scrubPrivateData(users []models.User) []models.User {
// 	for i := 0; i < len(users); i++ {
// 		user := &users[i]
// 		user.CreatedAt = time.Time{}
// 		user.DeletedAt = &time.Time{}
// 		user.Password = ""
// 		user.UpdatedAt = time.Time{}

// 	}
// 	return users
// }

// // DeleteUserByEmail deletes the guest with the given email
// func DeleteUserByEmail(email string) models.HTTPStatus {
// 	db := DBConn
// 	var user = models.User{}
// 	if err := db.Where(&models.User{Email: email}).First(&user).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Could not check if user exists", email, err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// 	}

// 	if err := db.Unscoped().Where("email = ?", email).Delete(&models.User{}).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Could not delete user:", email, err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// 	}
// 	axonlogger.InfoLogger.Println("User with:", email, "delete")
// 	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
// }

// GetUserByEmail searches for a user given the email
func (u *UserRepository) GetUserByEmail(email string) (models.User, error) {
	db := db.DB
	var user models.User

	var getUserByEmail = `SELECT id, email, password, role, created_at FROM users WHERE email = ?`

	rowErr := db.QueryRow(getUserByEmail, email).Scan(
		&user.ID,
		&user.Email,
		&user.Password,
		&user.Role,
		&user.CreatedAt,
	)
	
	if rowErr == sql.ErrNoRows {
		axonlogger.WarningLogger.Println("cannot retrieve user as they do not exist in DB", email)
		return user, errors.New("user does not exist")
	} else if rowErr != nil {
		axonlogger.ErrorLogger.Println("Error scanning row when getting user by email", rowErr)
		return user, errors.New("there was an error retrieving the user")
	}

	return user, nil
}

// // GetAllUsers returns all users in DB
// func GetAllUsers() ([]models.User, error) {
// 	db := DBConn
// 	var err error
// 	users := []models.User{}
// 	if err := db.Find(&users).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Error fetching all users", err)
// 		err = errors.New("Could not fetch users")
// 		return users, err
// 	}
// 	axonlogger.InfoLogger.Println("Successfully retrieved all users")
// 	return users, err
// }
