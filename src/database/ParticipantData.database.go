package database

import (
	"net/http"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for uploading all participant task data to the DB
 */

type ParticipantDataRepository struct{}

// CreateParticipantData saves the given generic taskData json into the database
// It returns a 200, or 500 status code
func (s *ParticipantDataRepository) CreateParticipantData(participantData models.ParticipantData) models.HTTPStatus {
	axonlogger.InfoLogger.Println("PARTICIPANTDATA DATABASE: CreateParticipantData()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error creating the participant data", err)
		}
	}()

	db := db.DB

	retrievedParticipantData, httpStatus := s.GetParticipantDataByStudyAndUserIdAndTaskOrder(participantData.StudyID, participantData.UserID, participantData.TaskOrder)
	if httpStatus.Status == http.StatusNotFound {

		// if no such row exists, create one
		if _, err := db.Exec(
			`
				INSERT INTO participant_data 
				(user_id, study_id, task_order, participant_type, submitted_at, data) 
				values (?, ?, ?, ?, ?, ?);
			`,
			participantData.UserID,
			participantData.StudyID,
			participantData.TaskOrder,
			participantData.ParticipantType,
			time.Now().UTC(),
			participantData.Data,
		); err != nil {
			axonlogger.ErrorLogger.Println("could not save participant data", err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
		}

	} else if !common.HTTPRequestIsSuccessful(httpStatus.Status) {

		// if there is some other error then return an error
		axonlogger.ErrorLogger.Println("could not save participant data", httpStatus)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}

	} else {

		// if a row exists, then we need to append the data we receive to the existing row
		for _, participantDataTrial := range participantData.Data {
			retrievedParticipantData.Data = append(retrievedParticipantData.Data, participantDataTrial)
		}
		if _, err := db.Exec(
			`
				UPDATE participant_data 
				set data = ? 
				WHERE study_id = ? AND user_id = ? AND task_order = ?;
			`,
			retrievedParticipantData.Data,
			retrievedParticipantData.StudyID,
			retrievedParticipantData.UserID,
			retrievedParticipantData.TaskOrder,
		); err != nil {
			axonlogger.ErrorLogger.Println("could not save participant data", err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
		}

	}

	axonlogger.InfoLogger.Println("Successfully uploaded task data:", participantData.UserID, participantData.StudyID, participantData.TaskOrder)
	// Printed JSON. Uncomment this to add user data to the logs. This makes the log files quite large.
	// marshalledJSON, _ := json.MarshalIndent(participantData, "", "\t")
	// axonlogger.InfoLogger.Println(string(marshalledJSON))
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// GetParticipantDataByStudyAndUserIdAndTaskOrder gets the participant data by the given study id and task order.
// Crowdsourced users have user IDs stored as strings, so the userId parameter must be a string. Accountholding userIDs should be converted to strings.
// It returns a 200, 404, or 500 status code
func (s *ParticipantDataRepository) GetParticipantDataByStudyAndUserIdAndTaskOrder(studyId uint, userId string, taskOrder int) (models.ParticipantData, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("PARTICIPANTDATA DATABASE: GetParticipantDataByStudyAndUserIdAndTaskOrder()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the participant data", err)
		}
	}()

	participantData := models.ParticipantData{}
	httpStatus := baseRepositoryImpl.GetOneBy(
		&participantData,
		`
			SELECT user_id, study_id, task_order, participant_type, submitted_at, data 
			FROM participant_data 
			WHERE study_id = ? AND user_id = ? AND task_order = ? 
			LIMIT 1;
		`,
		studyId,
		userId,
		taskOrder,
	)
	return participantData, httpStatus
}

// GetAllParticipantDataByStudyIdAndTaskOrder gets all the participant data for the given study id and task order
// It returns a 200 or 500 status code
func (s *ParticipantDataRepository) GetAllParticipantDataByStudyIdAndTaskOrder(studyId uint, taskOrder uint) ([]models.ParticipantData, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("PARTICIPANTDATA DATABASE: GetAllParticipantDataByStudyIdAndTaskOrder()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the participant data list", err)
		}
	}()

	participantData := []models.ParticipantData{}
	if httpStatus := baseRepositoryImpl.GetAllBy(
		&participantData,
		`
			SELECT user_id, study_id, task_order, participant_type, submitted_at, data 
			FROM participant_data 
			WHERE study_id = ? AND task_order = ?;
		`,
		studyId,
		taskOrder,
	); !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return participantData, httpStatus
	}

	return participantData, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}
