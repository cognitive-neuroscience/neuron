package database

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/jmoiron/sqlx"
)

type StudyTaskRepository struct{}

// CreateStudyTaskAsTransaction takes a given transaction and attempts to save studyTasks within the db, rolling back if an error is encountered.
// It returns a 201 or 500 status code.
func (s *StudyTaskRepository) CreateStudyTaskAsTransaction(studyTask models.StudyTask, tx *sqlx.Tx) models.HTTPStatus {
	// commented this out because it spams the logs
	// axonlogger.InfoLogger.Println("STUDYUSER DATABASE: CreateStudyTaskAsTransaction()")
	axonlogger.InfoLogger.Printf("%+v", studyTask)

	if _, err := tx.Exec(
		`
			INSERT INTO 
			study_tasks (study_id, task_id, task_order, config) 
			VALUES (?, ?, ?, ?);
		`,
		studyTask.StudyID,
		studyTask.Task.ID,
		studyTask.TaskOrder,
		studyTask.Config,
	); err != nil {
		tx.Rollback()
		axonlogger.ErrorLogger.Println("could not save study tasks", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// GetStudyTasksByStudyId retrieves all the study tasks given the study id.
// It returns a 200, 404, or 500 status code.
func (s *StudyTaskRepository) GetStudyTasksByStudyId(studyId uint) ([]models.StudyTask, models.HTTPStatus) {
	// commented this out because it spams the logs
	// axonlogger.InfoLogger.Println("STUDYUSER DATABASE: GetStudyTasksByStudyId()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study tasks by study id", err)
		}
	}()

	studyTasks := []models.StudyTask{}
	dbStudyTasks := []models.DBStudyTask{}

	httpStatus := baseRepositoryImpl.GetAllBy(
		&dbStudyTasks,
		`
			SELECT study_id, task_id, task_order, config 
			FROM study_tasks 
			WHERE study_id = ?
		`,
		studyId,
	)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return studyTasks, httpStatus
	}

	for _, dbStudyTask := range dbStudyTasks {
		task, getTaskHttpStatus := taskRepositoryImpl.GetTaskById(dbStudyTask.TaskID)

		if !common.HTTPRequestIsSuccessful(getTaskHttpStatus.Status) {
			return []models.StudyTask{}, getTaskHttpStatus
		}
		studyTask := models.StudyTask{
			StudyID:   dbStudyTask.StudyID,
			Task:      task,
			TaskOrder: dbStudyTask.TaskOrder,
			Config:    dbStudyTask.Config,
		}
		studyTasks = append(studyTasks, studyTask)
	}

	return studyTasks, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}
