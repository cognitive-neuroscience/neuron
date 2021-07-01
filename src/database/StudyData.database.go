package database

import (
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
	var uploadTaskDataQuery = `INSERT INTO participant_data (user_id, study_id, task_order, submitted_at, data) values (?, ?, ?, ?, ?);`

	if _, err := db.Exec(uploadTaskDataQuery, participantData.UserID, participantData.StudyID, participantData.TaskOrder, participantData.SubmittedAt, participantData.Data); err != nil {
		axonlogger.ErrorLogger.Println("could not save participant data", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "could not save participant data"}
	}

	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

func (s *StudyDataRepository) GetTaskData(studyId uint, taskOrder uint) ([]models.ParticipantData, error) {
	db := db.DB
	var getTaskDataQuery = `SELECT user_id, study_id, task_order, submitted_at, data FROM participant_data WHERE study_id = ? AND task_order = ?;`
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

func (s *StudyDataRepository) UploadFeedback(feedback *models.FeedbackQuestionnaireResponse) models.HTTPStatus {
	db := db.DB
	var insertFeedbackQuery = `INSERT INTO feedback_questionnaire_response (user_id, study_id, issues_encountered, additional_feedback, browser, submitted_at) VALUES(?, ?, ?, ?, ?, ?)`
	if _, err := db.Exec(insertFeedbackQuery, feedback.UserID, feedback.StudyId, feedback.IssuesEncountered, feedback.AdditionalFeedback, feedback.Browser, feedback.SubmittedAt); err != nil {
		axonlogger.ErrorLogger.Println("could not save feedback data", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "could not save feedback"}
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}
