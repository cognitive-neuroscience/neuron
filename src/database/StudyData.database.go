package database

import (
	"database/sql"
	"encoding/json"
	"errors"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for uploading all participant task data to the DB
 */

type StudyDataRepository struct{}

// UploadTaskData saves the given GENERIC taskData into the correct database
func (s *StudyDataRepository) UploadTaskData(participantData models.ParticipantData) models.HTTPStatus {
	db := db.DB
	var uploadTaskDataQuery = `INSERT INTO participant_data (user_id, study_id, task_order, participant_type, submitted_at, data) values (?, ?, ?, ?, ?, ?);`
	var updateTaskDataQuery = `UPDATE participant_data set data = ? WHERE study_id = ? AND user_id = ? AND task_order = ?;`

	retrievedParticipantData, err := s.GetTaskDataByUserForStudyTask(participantData.StudyID, participantData.UserID, participantData.TaskOrder)
	if err == sql.ErrNoRows {
		// if no such row exists, create one
		if _, err := db.Exec(uploadTaskDataQuery, participantData.UserID, participantData.StudyID, participantData.TaskOrder, participantData.ParticipantType, participantData.SubmittedAt, participantData.Data); err != nil {
			axonlogger.ErrorLogger.Println("could not save participant data", err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "could not save participant data"}
		}
	} else if err != nil {
		// if there is some other error then return an error
		axonlogger.ErrorLogger.Println("could not save participant data")
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "could not save participant data"}
	} else {
		// if a row exists, then we need to append the data we receive to the existing row

		for _, trial := range participantData.Data {
			retrievedParticipantData.Data = append(retrievedParticipantData.Data, trial)
		}

		if _, err := db.Exec(updateTaskDataQuery, retrievedParticipantData.Data, retrievedParticipantData.StudyID, retrievedParticipantData.UserID, retrievedParticipantData.TaskOrder); err != nil {
			axonlogger.ErrorLogger.Println("could not save participant data", err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "could not save participant data"}
		}
	}

	axonlogger.InfoLogger.Println("Successfully uploaded task data:", participantData.UserID, participantData.StudyID, participantData.TaskOrder)
	marshalledJSON, _ := json.MarshalIndent(participantData, "", "\t")
	axonlogger.InfoLogger.Println(string(marshalledJSON))
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

func (s *StudyDataRepository)GetTaskDataByUserForStudyTask(studyId uint, userId string, taskOrder int) (models.ParticipantData, error) {
	db := db.DB
	var getTaskDataQuery = `SELECT user_id, study_id, task_order, participant_type, submitted_at, data FROM participant_data WHERE study_id = ? AND user_id = ? AND task_order = ?;`
	participantData := models.ParticipantData{}

	rowErr := db.QueryRow(getTaskDataQuery, studyId, userId, taskOrder).Scan(
		&participantData.UserID,
		&participantData.StudyID,
		&participantData.TaskOrder,
		&participantData.ParticipantType,
		&participantData.SubmittedAt,
		&participantData.Data,
	)

	if rowErr != nil {
		return participantData, rowErr
	}
	return participantData, nil
}

func (s *StudyDataRepository) GetTaskData(studyId uint, taskOrder uint) ([]models.ParticipantData, error) {
	db := db.DB
	var getTaskDataQuery = `SELECT user_id, study_id, task_order, participant_type, submitted_at, data FROM participant_data WHERE study_id = ? AND task_order = ?;`
	participantData := []models.ParticipantData{}

	rows, err := db.Query(getTaskDataQuery, studyId, taskOrder)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error getting tasks from the DB", err)
		return nil, errors.New("there was an error retrieving participant data")
	}
	defer rows.Close()
	for rows.Next() {
		taskData := models.ParticipantData{}
		if err := rows.Scan(
			&taskData.UserID,
			&taskData.StudyID,
			&taskData.TaskOrder,
			&taskData.ParticipantType,
			&taskData.SubmittedAt,
			&taskData.Data,
		); err != nil {
			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving participant data", err)
			return nil, errors.New("there was an error retrieving participant data")
		}
		participantData = append(participantData, taskData)
	}
	if err := rows.Err(); err != nil {
		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
		return nil, errors.New("there was an error retrieving participant data")
	}
	return participantData, nil
}