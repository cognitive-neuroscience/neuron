package database

import (
	"net/http"
	"reflect"
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

// CreateUser saves a user in the database.
// It returns a 201, 409, or 500 status code.
func (u *UserRepository) CreateUser(user *models.User) (httpStatus models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER DATABASE: CreateUser()")
	axonlogger.InfoLogger.Println(user.Email, user.ID, user.Role, user.CreatedAt)
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error creating the user", err)
		}
	}()

	db := db.DB
	var organizationId *uint // set as pointer so that it defaults to nil. This inserts a null value into the db
	if !reflect.ValueOf(user.Organization).IsNil() {
		organizationId = &user.Organization.ID
	}

	_, err := db.Exec(
		`
			INSERT INTO users 
			(name, organization_id, email, password, role, created_at, change_password_required, lang) 
			VALUES (?, ?, ?, ?, ?, ?, ?, ?);
		`,
		user.Name,
		organizationId,
		user.Email,
		user.Password,
		user.Role,
		time.Now().UTC(),
		user.ChangePasswordRequired,
		user.Lang,
	)

	if err != nil {
		axonlogger.ErrorLogger.Println("Error saving user into DB", err)
		status := models.HTTPStatus{
			Status:  http.StatusInternalServerError,
			Message: "there was a problem creating the user",
		}
		if strings.Contains(err.Error(), "1062") {
			// 1062 is a mysql DB error indicating duplicate entry exists. Either the id or the email is duplicated.
			status.Status = http.StatusConflict
			status.Message = http.StatusText(http.StatusConflict)
		}
		return status
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// GetUserById searches the db for a user with the given the id.
// It returns a 200, 404, or 500 status code.
func (u *UserRepository) GetUserById(id uint) (models.User, models.HTTPStatus) {
	// commented this out because it spams the logs
	// axonlogger.InfoLogger.Println("USER DATABASE: GetUserById()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting user by id", err)
		}
	}()

	dbUser := models.DBUser{}
	user := models.User{}
	httpStatus := baseRepositoryImpl.GetOneBy(
		&dbUser,
		`
			SELECT id, name, organization_id, email, password, role, created_at, change_password_required, lang 
			FROM users 
			WHERE id = ?
			LIMIT 1;
		`,
		id,
	)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return user, httpStatus
	}

	var organization *models.Organization
	if dbUser.OrganizationId.Valid {
		org, getOrgHttpStatus := organizationRepositoryImpl.GetOrganizationById(uint(dbUser.OrganizationId.Int32))
		if !common.HTTPRequestIsSuccessful(getOrgHttpStatus.Status) {
			return user, getOrgHttpStatus
		}
		organization = &org
	}

	user = models.User{
		ID:                     dbUser.ID,
		Name:                   dbUser.Name,
		Organization:           organization,
		Email:                  dbUser.Email,
		Password:               dbUser.Password,
		Role:                   dbUser.Role,
		CreatedAt:              dbUser.CreatedAt,
		ChangePasswordRequired: dbUser.ChangePasswordRequired,
		Lang:                   dbUser.Lang,
	}

	return user, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetUserByEmail searches for a user given the email.
// It returns a 200, 404, or 500 status code
func (u *UserRepository) GetUserByEmail(email string) (models.User, models.HTTPStatus) {
	// commented this out because it spams the logs
	// axonlogger.InfoLogger.Println("USER DATABASE: GetUserByEmail()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting user by email", err)
		}
	}()

	dbUser := models.DBUser{}
	user := models.User{}
	httpStatus := baseRepositoryImpl.GetOneBy(
		&dbUser,
		`
			SELECT id, name, organization_id, email, password, role, created_at, change_password_required, lang 
			FROM users 
			WHERE email = ?
			LIMIT 1;
		`,
		email,
	)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return user, httpStatus
	}

	var organization *models.Organization
	if dbUser.OrganizationId.Valid {
		org, getOrgHttpStatus := organizationRepositoryImpl.GetOrganizationById(uint(dbUser.OrganizationId.Int32))

		if !common.HTTPRequestIsSuccessful(getOrgHttpStatus.Status) {
			return user, getOrgHttpStatus
		}
		organization = &org
	}

	user = models.User{
		ID:                     dbUser.ID,
		Name:                   dbUser.Name,
		Organization:           organization,
		Email:                  dbUser.Email,
		Password:               dbUser.Password,
		Role:                   dbUser.Role,
		CreatedAt:              dbUser.CreatedAt,
		ChangePasswordRequired: dbUser.ChangePasswordRequired,
		Lang:                   dbUser.Lang,
	}

	return user, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetUsersByOrganizationId retrieves all members and guests for a given organization.
// It returns a 200, 404, or 500 status code.
func (u *UserRepository) GetUsersByOrganizationId(organizationId uint) ([]models.User, models.HTTPStatus) {
	// commented this out because it spams the logs
	// axonlogger.InfoLogger.Println("USER DATABASE: GetUsersByOrganizationId()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting users by organization id", err)
		}
	}()

	dbUsers := []models.DBUser{}
	users := []models.User{}
	httpStatus := baseRepositoryImpl.GetAllBy(
		&dbUsers,
		`	SELECT id, name, organization_id, email, "" as password, role, created_at, change_password_required, lang
			FROM users
			WHERE organization_id = ?;
		`,
		organizationId,
	)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return users, httpStatus
	}

	org, getOrgHttpStatus := organizationRepositoryImpl.GetOrganizationById(organizationId)
	if !common.HTTPRequestIsSuccessful(getOrgHttpStatus.Status) {
		axonlogger.WarningLogger.Println("could not get organization:", organizationId)
		// return status ok so that an empty list is returned in case the queried organization does not exist
		return users, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
	}

	for _, dbUser := range dbUsers {
		users = append(users, models.User{
			ID:                     dbUser.ID,
			Name:                   dbUser.Name,
			Organization:           &org,
			Email:                  dbUser.Email,
			Password:               "",
			Role:                   dbUser.Role,
			CreatedAt:              dbUser.CreatedAt,
			ChangePasswordRequired: dbUser.ChangePasswordRequired,
			Lang:                   dbUser.Lang,
		})
	}

	return users, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// UpdateUser updates the given user in the db.
// It returns a 200 or 500 status code.
func (u *UserRepository) UpdateUser(user *models.User) (httpStatus models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER DATABASE: UpdateUser()")
	axonlogger.InfoLogger.Println(user.Email, user.ID, user.Role, user.CreatedAt, user.Lang, user.ChangePasswordRequired, user.Name)
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error updating the user", err)
		}
	}()

	db := db.DB
	var organizationId *uint // set as pointer so that it defaults to nil. This inserts a null value into the db
	if !reflect.ValueOf(user.Organization).IsNil() {
		organizationId = &user.Organization.ID
	}

	var updateUserInDB = `
			UPDATE users 
			SET name = ?, organization_id = ?, email = ?, password = ?, role = ?, created_at = ?, change_password_required = ?, lang = ? 
			WHERE id = ?;
		`
	if _, err := db.Exec(updateUserInDB, user.Name, organizationId, user.Email, user.Password, user.Role, user.CreatedAt, user.ChangePasswordRequired, user.Lang, user.ID); err != nil {
		axonlogger.ErrorLogger.Println("Error updating user from DB", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	axonlogger.InfoLogger.Println("Successfully updated user:", user.Email, user.ID, user.Role)
	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// DeleteUserByID deletes a user with the given Id.
// It returns a 200, or 500 status code
func (u *UserRepository) DeleteUserByID(userId uint) models.HTTPStatus {
	// commented this out because it spams the logs
	// axonlogger.InfoLogger.Println("USER DATABASE: DeleteUserByID()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error updating the user", err)
		}
	}()

	db := db.DB

	if _, err := db.Exec(
		`DELETE FROM users WHERE id = ?;`,
		userId,
	); err != nil {
		axonlogger.ErrorLogger.Println("Error deleting the user from the DB", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}
