package database

import (
	"net/http"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type CrowdSourcedUserRepository struct{}

// CreateCrowdSourcedUser saves a crowdsourced user within the database.
// It returns a 201, 409, or 500 status code
func (c *CrowdSourcedUserRepository) CreateCrowdSourcedUser(crowdSourcedUser models.CrowdSourcedUser) models.HTTPStatus {
	axonlogger.InfoLogger.Println("CROWDSOURCEDUSER DATABASE: CreateCrowdSourcedUser()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error creating the crowdsourced user", err)
		}
	}()

	db := db.DB
	if _, err := db.Exec(
		`
			INSERT INTO crowdsourced_users 
			(participant_id, study_id, register_date, completion_code, lang) 
			VALUES (?, ?, ?, ?, ?);
		`,
		crowdSourcedUser.ParticipantID,
		crowdSourcedUser.StudyID,
		time.Now().UTC(),
		crowdSourcedUser.CompletionCode,
		crowdSourcedUser.Lang,
	); err != nil {
		axonlogger.ErrorLogger.Println("Error saving crowdsourced user into DB", err)
		httpStatus := models.HTTPStatus{
			Status:  http.StatusInternalServerError,
			Message: http.StatusText(http.StatusInternalServerError),
		}
		if strings.Contains(err.Error(), "1062") {
			// 1062 is a mysql DB error indicating duplicate entry exists
			httpStatus.Status = http.StatusConflict
			httpStatus.Message = http.StatusText(http.StatusConflict)
		}
		return httpStatus
	}
	axonlogger.InfoLogger.Println("Successfully created crowdsourced user:", crowdSourcedUser.ParticipantID, "for study:", crowdSourcedUser.StudyID)
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// GetCrowdSourcedUserByCrowdSourcedUserAndStudyId gets a CrowdSourcedUser by the given id.
// It returns a 200, 404, or 500 status code
func (c *CrowdSourcedUserRepository) GetCrowdSourcedUserByCrowdSourcedUserAndStudyId(crowdSourcedUserId string, studyId uint) (models.CrowdSourcedUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("CROWDSOURCEDUSER DATABASE: GetCrowdSourcedUserByCrowdSourcedUserAndStudyId()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error creating the crowdsourced user", err)
		}
	}()

	crowdSourcedUser := models.CrowdSourcedUser{}

	httpStatus := baseRepositoryImpl.GetOneBy(&crowdSourcedUser,
		`
		SELECT participant_id, study_id, register_date, completion_code, lang 
		FROM crowdsourced_users 
		WHERE participant_id = ? AND study_id = ?;
	`,
		crowdSourcedUserId,
		studyId,
	)
	return crowdSourcedUser, httpStatus
}

// UpdateCrowdSourcedUser updates a crowdsourced user with the given details.
// It returns a 200 or 500 status code.
func (c *CrowdSourcedUserRepository) UpdateCrowdSourcedUser(crowdSourcedUser models.CrowdSourcedUser) models.HTTPStatus {
	axonlogger.InfoLogger.Println("CROWDSOURCEDUSER DATABASE: UpdateCrowdSourcedUser()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error creating the crowdsourced user", err)
		}
	}()

	db := db.DB
	if _, err := db.Exec(
		`
		UPDATE crowdsourced_users 
		SET participant_id = ?, study_id = ?, register_date = ?, completion_code = ?, lang = ? 
		WHERE participant_id = ? AND study_id = ?;
		`,
		crowdSourcedUser.ParticipantID,
		crowdSourcedUser.StudyID,
		crowdSourcedUser.RegisterDate,
		crowdSourcedUser.CompletionCode,
		crowdSourcedUser.Lang,
		crowdSourcedUser.ParticipantID,
		crowdSourcedUser.StudyID,
	); err != nil {
		axonlogger.ErrorLogger.Println("Error updating crowdsourced user into DB", err)
		return models.HTTPStatus{
			Status:  http.StatusInternalServerError,
			Message: http.StatusText(http.StatusInternalServerError),
		}
	}

	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetAllCrowdSourcedUsersByStudyId retrieves all crowdsourced users for the given study id
// It returns a 200 or 500 status code.
func (c *CrowdSourcedUserRepository) GetAllCrowdSourcedUsersByStudyId(studyId uint) ([]models.CrowdSourcedUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("CROWDSOURCEDUSER DATABASE: GetAllCrowdSourcedUsersByStudyId()")

	crowdsourcedUsers := []models.CrowdSourcedUser{}
	httpStatus := baseRepositoryImpl.GetAllBy(
		&crowdsourcedUsers,
		`
			SELECT participant_id, study_id, register_date, completion_code, lang 
			FROM crowdsourced_users 
			WHERE study_id = ?;
		`,
		studyId,
	)
	return crowdsourcedUsers, httpStatus
}

// participant_id VARCHAR(255) NOT NULL CHECK(participant_id != ""),
// study_id INT UNSIGNED NOT NULL CHECK(study_id != ""),
// register_date DATETIME NOT NULL,
// completion_code VARCHAR(255) DEFAULT "",
// lang VARCHAR(100) NOT NULL DEFAULT '',
