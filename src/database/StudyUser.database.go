package database

import (
	"database/sql"
	"net/http"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyUserRepository struct{}

// baseGetStudyUsersById is a generic function that takes the given arg(s) and runs the given query. This function returns a study user slice.
// It returns a 200, 404, or 500 status code.
func baseGetStudyUsersById(query string, args ...interface{}) ([]models.StudyUser, models.HTTPStatus) {
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study users by user id", err)
		}
	}()

	dbStudyUsers := []models.DBStudyUser{}
	studyUsers := []models.StudyUser{}

	httpStatus := baseRepositoryImpl.GetAllBy(
		&dbStudyUsers,
		query,
		args...,
	)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return studyUsers, httpStatus
	}

	for _, dbStudyUser := range dbStudyUsers {
		study, getStudyHttpStatus := studyRepositoryImpl.GetStudyById(dbStudyUser.StudyID)
		if !common.HTTPRequestIsSuccessful(getStudyHttpStatus.Status) {
			return []models.StudyUser{}, getStudyHttpStatus
		}
		user, getUserHttpStatus := userRepositoryImpl.GetUserById(dbStudyUser.UserID)
		if !common.HTTPRequestIsSuccessful(getUserHttpStatus.Status) {
			return studyUsers, getUserHttpStatus
		}

		studyUser := models.StudyUser{
			User:               user,
			Study:              study,
			CompletionCode:     dbStudyUser.CompletionCode,
			RegisterDate:       dbStudyUser.RegisterDate,
			DueDate:            dbStudyUser.DueDate,
			CurrentTaskIndex:   dbStudyUser.CurrentTaskIndex,
			HasAcceptedConsent: dbStudyUser.HasAcceptedConsent,
			Lang:               dbStudyUser.Lang,
			Data:               dbStudyUser.Data,
		}

		studyUsers = append(studyUsers, studyUser)
	}

	return studyUsers, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetAllStudyUsersByStudyId retrieves all study users associated with the given user id from the database.
// It returns a 200, 404, or 500 status code.
func (s *StudyUserRepository) GetAllStudyUsersByStudyId(studyId uint) ([]models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER DATABASE: GetAllStudyUsersByStudyId()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study users by user id", err)
		}
	}()

	return baseGetStudyUsersById(
		`
			SELECT user_id, study_id, completion_code, register_date, due_date, current_task_index, has_accepted_consent, lang, data 
			FROM study_users 
			WHERE study_id = ?;
		`,
		studyId,
	)
}

// GetAllStudyUsersByUserId retrieves all study users associated with the given user id from the database.
// It returns a 200, 404, or 500 status code.
func (s *StudyUserRepository) GetAllStudyUsersByUserId(userId uint) ([]models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER DATABASE: GetAllStudyUsersByUserId()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study users by user id", err)
		}
	}()

	return baseGetStudyUsersById(
		`
			SELECT user_id, study_id, completion_code, register_date, due_date, current_task_index, has_accepted_consent, lang, data 
			FROM study_users 
			WHERE user_id = ?;
		`,
		userId,
	)
}

// CreateStudyUser stores the study user in the database
// It returns a 201, 409, or 500 status code
func (s *StudyUserRepository) CreateStudyUser(studyUser *models.StudyUser) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDYUSER DATABASE: CreateStudyUser()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error creating the study user", err)
		}
	}()

	db := db.DB
	if _, err := db.Exec(
		`
			INSERT INTO study_users 
			(user_id, study_id, completion_code, current_task_index, register_date, due_date, has_accepted_consent, lang, data) 
			VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);
		`,
		studyUser.User.ID,
		studyUser.Study.ID,
		studyUser.CompletionCode,
		studyUser.CurrentTaskIndex,
		time.Now().UTC(),
		sql.NullTime{},
		studyUser.HasAcceptedConsent,
		studyUser.Lang,
		studyUser.Data,
	); err != nil {
		httpStatus := models.HTTPStatus{
			Status:  http.StatusInternalServerError,
			Message: http.StatusText(http.StatusInternalServerError),
		}
		if strings.Contains(err.Error(), "1452") {
			axonlogger.WarningLogger.Println("user or study connected to this study user does not exist", err)
			// 1452 is a mysql DB error indicating that the foreign key constraint fails - either the study or the user does not exist
			httpStatus.Status = http.StatusNotFound
			httpStatus.Message = http.StatusText(http.StatusNotFound)
		} else if strings.Contains(err.Error(), "1062") {
			axonlogger.WarningLogger.Println("Cannot create Studyuser as it already exists", err)
			// 1062 is a mysql DB error indicating duplicate entry exists
			httpStatus.Status = http.StatusConflict
			httpStatus.Message = http.StatusText(http.StatusConflict)
		} else {
			axonlogger.ErrorLogger.Println("Error saving studyuser user into DB", err)
		}
		return httpStatus
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// GetStudyUserByUserAndStudyId retrieves the study user by its associated study id and user id
// It returns a 200, 404, or 500 status code
func (s *StudyUserRepository) GetStudyUserByUserAndStudyId(userId uint, studyId uint) (models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER DATABASE: GetStudyUserByUserAndStudyId()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study users by user and study id", err)
		}
	}()

	dbStudyUser := models.DBStudyUser{}
	studyUser := models.StudyUser{}

	if httpStatus := baseRepositoryImpl.GetOneBy(
		&dbStudyUser,
		`
			SELECT user_id, study_id, completion_code, register_date, due_date, current_task_index, has_accepted_consent, lang, data 
			FROM study_users 
			WHERE user_id = ? AND study_id = ?;
		`,
		userId,
		studyId,
	); !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return studyUser, httpStatus
	}

	userForStudyUser, getUserHttpStatus := userRepositoryImpl.GetUserById(userId)
	if !common.HTTPRequestIsSuccessful(getUserHttpStatus.Status) {
		return models.StudyUser{}, getUserHttpStatus
	}
	studyForStudyUser, getStudyHttpStatus := studyRepositoryImpl.GetStudyById(studyId)
	if !common.HTTPRequestIsSuccessful(getUserHttpStatus.Status) {
		return models.StudyUser{}, getStudyHttpStatus
	}

	studyUser.User = userForStudyUser
	studyUser.Study = studyForStudyUser
	studyUser.CompletionCode = dbStudyUser.CompletionCode
	studyUser.RegisterDate = dbStudyUser.RegisterDate
	studyUser.DueDate = dbStudyUser.DueDate
	studyUser.CurrentTaskIndex = dbStudyUser.CurrentTaskIndex
	studyUser.HasAcceptedConsent = dbStudyUser.HasAcceptedConsent
	studyUser.Lang = dbStudyUser.Lang
	studyUser.Data = dbStudyUser.Data
	return studyUser, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// UpdateStudyUser updates a study user in the db.
// It returns a 200 or 500 status code
func (s *StudyUserRepository) UpdateStudyUser(studyUser *models.StudyUser) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDYUSER DATABASE: UpdateStudyUser()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study users by user and study id", err)
		}
	}()

	db := db.DB

	if _, err := db.Exec(
		`
			UPDATE study_users 
			SET completion_code = ?, due_date = ?, current_task_index = ?, has_accepted_consent = ?, lang = ?, data = ? 
			WHERE study_id = ? AND user_id = ?;
		`,
		studyUser.CompletionCode,
		studyUser.DueDate,
		studyUser.CurrentTaskIndex,
		studyUser.HasAcceptedConsent,
		studyUser.Lang,
		studyUser.Data,
		studyUser.Study.ID,
		studyUser.User.ID,
	); err != nil {
		httpStatus := models.HTTPStatus{
			Status:  http.StatusInternalServerError,
			Message: http.StatusText(http.StatusInternalServerError),
		}
		if strings.Contains(err.Error(), "1452") {
			axonlogger.WarningLogger.Println("user or study connected to this study user does not exist", err)
			// 1452 is a mysql DB error indicating that the foreign key constraint fails - either the study or the user does not exist
			httpStatus.Status = http.StatusNotFound
			httpStatus.Message = http.StatusText(http.StatusNotFound)
		} else {
			axonlogger.ErrorLogger.Println("Error saving studyuser user into DB", err)
		}
		return httpStatus
	}
	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetAllStudyUsers gets all study users for the database. This is used for the summary.
// It returns a 200 or 500 status code.
func (u *StudyUserRepository) GetAllStudyUsers() ([]models.DBStudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER DATABASE: GetAllStudyUsers()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error updating the user", err)
		}
	}()

	dbStudyUsers := []models.DBStudyUser{}
	httpStatus := baseRepositoryImpl.GetAllBy(
		&dbStudyUsers,
		`SELECT user_id, study_id, completion_code, register_date, due_date, current_task_index, has_accepted_consent, lang, data 
		FROM study_users;`,
	)

	return dbStudyUsers, httpStatus
}
