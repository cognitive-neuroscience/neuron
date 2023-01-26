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

	var saveUserIntoDB = `
			INSERT INTO users 
			(name, organization_id, email, password, role, created_at, change_password_required, lang) 
			VALUES (?, ?, ?, ?, ?, ?, ?, ?);
		`
	_, err := db.Exec(saveUserIntoDB, user.Name, organizationId, user.Email, user.Password, user.Role, time.Now().UTC(), false, "")

	if err != nil {
		axonlogger.ErrorLogger.Println("Error saving user into DB", err)
		status := models.HTTPStatus{
			Status:  http.StatusInternalServerError,
			Message: "there was a problem creating the user",
		}
		if strings.Contains(err.Error(), "1062") {
			// 1062 is a mysql DB error indicating duplicate entry exists
			status.Status = http.StatusConflict
			status.Message = http.StatusText(http.StatusConflict)
		}
		return status
	}
	axonlogger.InfoLogger.Println("Successfully created user:", user.Email, user.ID, user.Role, user.CreatedAt)
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// GetUserById searches the db for a user with the given the id.
// It returns a 200, 404, or 500 status code.
func (u *UserRepository) GetUserById(id uint) (models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER DATABASE: GetUserById()")
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
	axonlogger.InfoLogger.Println("USER DATABASE: GetUserByEmail()")
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

// GetUsersByOrganizationId retrieves all members and guests for a given organization
func (u *UserRepository) GetUsersByOrganizationId(organizationId uint) ([]models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER DATABASE: GetUsersByOrganizationId()")
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
	axonlogger.InfoLogger.Println("USER DATABASE: DeleteUserByID()")
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

// func (u *UserRepository) SaveCrowdsourcedUser(crowdsourcedUser *models.CrowdSourcedUser) models.HTTPStatus {
// 	db := db.DB
// 	var saveCrowdsourcedUserQuery = `INSERT INTO crowdsourced_users (participant_id, study_id, register_date, completion_code, lang) VALUES (?, ?, ?, ?, ?);`
// 	_, err := db.Exec(
// 		saveCrowdsourcedUserQuery,
// 		crowdsourcedUser.ParticipantID,
// 		crowdsourcedUser.StudyID,
// 		time.Now().UTC(),
// 		crowdsourcedUser.CompletionCode,
// 		crowdsourcedUser.Lang,
// 	)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error saving crowdsourced user into DB", err)
// 		msg := "there was an error registering the participant"
// 		status := http.StatusInternalServerError
// 		if strings.Contains(err.Error(), "1062") {
// 			// 1062 is a mysql DB error indicating duplicate entry exists
// 			msg = "a participant with this id has already registered for this study"
// 			status = http.StatusConflict
// 		}

// 		return models.HTTPStatus{Status: status, Message: msg}
// 	}
// 	axonlogger.InfoLogger.Println("Successfully created crowdsourced user:", crowdsourcedUser.ParticipantID, crowdsourcedUser.StudyID)
// 	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
// }

// func (u *UserRepository) RegisterCrowdsourcedUserCompletion(participantId string, studyId uint, code string) (string, error) {
// 	db := db.DB
// 	var updateCompleteQuery = `UPDATE crowdsourced_users SET completion_code = ? WHERE participant_id = ? AND study_id = ?;`
// 	if _, err := db.Exec(updateCompleteQuery, code, participantId, studyId); err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error registering completion", err)
// 		return "", errors.New("there was an error registering completion")
// 	}
// 	return code, nil
// }

// func (u *UserRepository) GetCrowdsourcedUserById(id string, studyId uint) (models.CrowdSourcedUser, error) {
// 	db := db.DB
// 	var getCrowdsourcedUser = `SELECT participant_id, study_id, register_date, completion_code, lang FROM crowdsourced_users WHERE participant_id = ? AND study_id = ?;`
// 	crowdsourcedUser := models.CrowdSourcedUser{}
// 	rows, err := db.Query(getCrowdsourcedUser, id, studyId)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting the crowdsourced user from the DB", err)
// 		return crowdsourcedUser, errors.New("there was an error retrieving the user")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		if err := rows.Scan(
// 			&crowdsourcedUser.ParticipantID,
// 			&crowdsourcedUser.StudyID,
// 			&crowdsourcedUser.RegisterDate,
// 			&crowdsourcedUser.CompletionCode,
// 			&crowdsourcedUser.Lang,
// 		); err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving crowdsourced user", err)
// 			return crowdsourcedUser, errors.New("there was an error retrieving the user")
// 		}
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return crowdsourcedUser, errors.New("there was an error retrieving the user")
// 	}
// 	return crowdsourcedUser, nil
// }

// func (u *UserRepository) GetCrowdSourcedUsersByStudyId(studyId uint) ([]models.CrowdSourcedUser, error) {
// 	db := db.DB

// 	crowdsourcedUsers := []models.CrowdSourcedUser{}
// 	var getCrowdSourcedUsersByStudyIdQuery = `SELECT participant_id, study_id, register_date, completion_code, lang FROM crowdsourced_users WHERE study_id = ?;`
// 	rows, err := db.Query(getCrowdSourcedUsersByStudyIdQuery, studyId)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting users from the DB", err)
// 		return crowdsourcedUsers, errors.New("there was an error retrieving users")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		crowdsourcedUser := models.CrowdSourcedUser{}
// 		if err := rows.Scan(
// 			&crowdsourcedUser.ParticipantID,
// 			&crowdsourcedUser.StudyID,
// 			&crowdsourcedUser.RegisterDate,
// 			&crowdsourcedUser.CompletionCode,
// 			&crowdsourcedUser.Lang,
// 		); err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving users", err)
// 			return crowdsourcedUsers, errors.New("there was an error retrieving users")
// 		}
// 		crowdsourcedUsers = append(crowdsourcedUsers, crowdsourcedUser)
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return crowdsourcedUsers, errors.New("there was an error retrieving users")
// 	}
// 	return crowdsourcedUsers, nil
// }

// func (u *UserRepository) SaveStudyUser(studyUser models.StudyUser) models.HTTPStatus {
// 	db := db.DB
// 	var saveStudyUserQuery = `INSERT INTO study_users (user_id, study_id, completion_code, current_task_index, register_date, due_date, has_accepted_consent, lang, data) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);`
// 	_, err := db.Exec(
// 		saveStudyUserQuery,
// 		studyUser.UserID,
// 		studyUser.StudyID,
// 		studyUser.CompletionCode,
// 		studyUser.CurrentTaskIndex,
// 		time.Now().UTC(),
// 		sql.NullString{},
// 		studyUser.HasAcceptedConsent,
// 		studyUser.Lang,
// 		studyUser.Data,
// 	)
// 	if err != nil {
// 		msg := "there was an error registering the study user"
// 		status := http.StatusInternalServerError
// 		if strings.Contains(err.Error(), "1062") {
// 			axonlogger.WarningLogger.Println("Studyuser already exists", err)
// 			// 1062 is a mysql DB error indicating duplicate entry exists
// 			msg = "a participant with this id has already registered for this study"
// 			status = http.StatusConflict
// 		} else {
// 			axonlogger.ErrorLogger.Println("Error saving studyuser user into DB", err)
// 		}

// 		return models.HTTPStatus{Status: status, Message: msg}
// 	}
// 	axonlogger.InfoLogger.Println("Successfully created study user:", studyUser.UserID, studyUser.StudyID)
// 	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
// }

// func (u *UserRepository) UpdateStudyUser(studyUser models.StudyUser) models.HTTPStatus {
// 	db := db.DB
// 	var updateStudyUserQuery = `UPDATE study_users SET completion_code = ?, current_task_index = ?, has_accepted_consent = ?, due_date = ?, lang = ?, data = ? WHERE study_id = ? AND user_id = ?;`
// 	if _, err := db.Exec(updateStudyUserQuery, studyUser.CompletionCode, studyUser.CurrentTaskIndex, studyUser.HasAcceptedConsent, studyUser.DueDate, studyUser.Lang, studyUser.Data, studyUser.StudyID, studyUser.UserID); err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error updating the study user", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an update error"}
// 	}
// 	axonlogger.InfoLogger.Println("Successfully updated study user:", studyUser.CurrentTaskIndex, studyUser.DueDate, studyUser.HasAcceptedConsent, studyUser.CompletionCode, studyUser.Data)
// 	return models.HTTPStatus{Status: http.StatusOK, Message: "successfully updated"}
// }

// // GetAllStudyUsersByUserId gets all study users by the given user id. This is equivalent to seeing all studies that the current
// // user is part of
// func (u *UserRepository) GetAllStudyUsersByUserId(userId uint) ([]models.StudyUser, error) {
// 	db := db.DB
// 	studyRepositoryImpl := StudyRepository{}
// 	studyUsers := []models.StudyUser{}
// 	var getStudyUsersByStudyIdAndUserIdQuery = `SELECT user_id, study_id, completion_code, current_task_index, register_date, due_date, has_accepted_consent, lang, data FROM study_users WHERE user_id = ?;`
// 	rows, err := db.Query(getStudyUsersByStudyIdAndUserIdQuery, userId)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting users from the DB", err)
// 		return studyUsers, errors.New("there was an error retrieving study users")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		studyUser := models.StudyUser{}
// 		if err := rows.Scan(
// 			&studyUser.UserID,
// 			&studyUser.StudyID,
// 			&studyUser.CompletionCode,
// 			&studyUser.CurrentTaskIndex,
// 			&studyUser.RegisterDate,
// 			&studyUser.DueDate,
// 			&studyUser.HasAcceptedConsent,
// 			&studyUser.Lang,
// 			&studyUser.Data,
// 		); err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving users", err)
// 			return studyUsers, errors.New("there was an error retrieving users")
// 		}
// 		studyUsers = append(studyUsers, studyUser)
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return studyUsers, errors.New("there was an error retrieving users")
// 	}

// 	for i, studyTask := range studyUsers {
// 		study, err := studyRepositoryImpl.GetStudyById(studyTask.StudyID)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("Error when populating study with study tasks", err)
// 			return nil, errors.New("there was an error retrieving studies")
// 		}
// 		studyUsers[i].Study = study
// 	}
// 	return studyUsers, nil
// }

// // GetStudyUserById gets the given study user by the study user id and study id
// func (u *UserRepository) GetStudyUserById(studyUserId uint, studyId uint) (models.StudyUser, error) {
// 	db := db.DB
// 	studyUser := models.StudyUser{}
// 	var getStudyUsersByIdQuery = `SELECT user_id, study_id, completion_code, current_task_index, register_date, due_date, has_accepted_consent, lang, data FROM study_users WHERE user_id = ? AND study_id = ?;`

// 	rowErr := db.QueryRow(getStudyUsersByIdQuery, studyUserId, studyId).Scan(
// 		&studyUser.UserID,
// 		&studyUser.StudyID,
// 		&studyUser.CompletionCode,
// 		&studyUser.CurrentTaskIndex,
// 		&studyUser.RegisterDate,
// 		&studyUser.DueDate,
// 		&studyUser.HasAcceptedConsent,
// 		&studyUser.Lang,
// 		&studyUser.Data,
// 	)

// 	if rowErr == sql.ErrNoRows {
// 		axonlogger.WarningLogger.Println("cannot retrieve study user as they do not exist in DB", studyUserId)
// 		return studyUser, errors.New("user does not exist")
// 	} else if rowErr != nil {
// 		axonlogger.ErrorLogger.Println("Error scanning row when getting user by email", rowErr)
// 		return studyUser, errors.New("there was an error retrieving the user")
// 	}
// 	return studyUser, nil
// }

// // GetStudyUsersByStudyId gets every study user by the study id
// func (u *UserRepository) GetStudyUsersByStudyId(studyId uint) ([]models.StudyUser, error) {
// 	db := db.DB
// 	studyUsers := []models.StudyUser{}
// 	var getStudyUsersByStudyIdQuery = `SELECT user_id, study_id, completion_code, current_task_index, register_date, due_date, has_accepted_consent, lang, data FROM study_users WHERE study_id = ?;`
// 	rows, err := db.Query(getStudyUsersByStudyIdQuery, studyId)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting study users from the DB", err)
// 		return studyUsers, errors.New("there was an error retrieving study users")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		studyUser := models.StudyUser{}
// 		if err := rows.Scan(
// 			&studyUser.UserID,
// 			&studyUser.StudyID,
// 			&studyUser.CompletionCode,
// 			&studyUser.CurrentTaskIndex,
// 			&studyUser.RegisterDate,
// 			&studyUser.DueDate,
// 			&studyUser.HasAcceptedConsent,
// 			&studyUser.Lang,
// 			&studyUser.Data,
// 		); err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving study users", err)
// 			return studyUsers, errors.New("there was an error retrieving study users")
// 		}
// 		studyUsers = append(studyUsers, studyUser)
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return studyUsers, errors.New("there was an error retrieving study users")
// 	}
// 	return studyUsers, nil
// }

// // GetAllStudyUsers gets all study users
// func (u *UserRepository) GetAllStudyUsers() ([]models.StudyUser, error) {
// 	db := db.DB
// 	studyUsers := []models.StudyUser{}
// 	var getAllStudyUsers = `SELECT user_id, study_id, completion_code, current_task_index, register_date, due_date, has_accepted_consent, lang, data FROM study_users;`
// 	rows, err := db.Query(getAllStudyUsers)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting all study users from the DB", err)
// 		return studyUsers, errors.New("there was an error retrieving study users")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		studyUser := models.StudyUser{}
// 		if err := rows.Scan(
// 			&studyUser.UserID,
// 			&studyUser.StudyID,
// 			&studyUser.CompletionCode,
// 			&studyUser.CurrentTaskIndex,
// 			&studyUser.RegisterDate,
// 			&studyUser.DueDate,
// 			&studyUser.HasAcceptedConsent,
// 			&studyUser.Lang,
// 			&studyUser.Data,
// 		); err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving all study users", err)
// 			return studyUsers, errors.New("there was an error retrieving study users")
// 		}
// 		studyUsers = append(studyUsers, studyUser)
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return studyUsers, errors.New("there was an error retrieving study users")
// 	}
// 	return studyUsers, nil
// }

// // GetGuests retrieves all users of Role Guest from the DB
// func (u *UserRepository) GetGuests() ([]models.User, error) {
// 	db := db.DB
// 	var err error
// 	guests := []models.User{}

// 	var getAllGuests = `SELECT id, email, role FROM users WHERE role = ?`

// 	rows, err := db.Query(getAllGuests, common.GUEST)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting guests from the DB", err)
// 		return nil, errors.New("there was an error retrieving guests")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		guest := models.User{}
// 		err := rows.Scan(
// 			&guest.ID,
// 			&guest.Email,
// 			&guest.Role,
// 		)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving guests", err)
// 			return nil, errors.New("there was an error retrieving guests")
// 		}
// 		guests = append(guests, guest)
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return nil, errors.New("there was an error retrieving guests")
// 	}
// 	return guests, err
// }

// // DeleteUserByEmail deletes the guest with the given email
// func (u *UserRepository) DeleteUserByEmail(email string) models.HTTPStatus {
// 	db := db.DB
// 	var deleteUserQuery = `DELETE FROM users WHERE email = ?;`

// 	if _, err := db.Exec(deleteUserQuery, email); err != nil {
// 		axonlogger.ErrorLogger.Println("could not delete user", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "Could not delete study"}
// 	}
// 	return models.HTTPStatus{Status: http.StatusOK, Message: "Successfully deleted user"}
// }
