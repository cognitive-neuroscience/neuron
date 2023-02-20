package database

import (
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type TaskRepository struct {
}

const (
	PSHARPLAB    = "psharplab"
	SURVEYMONKEY = "surveymonkey"
	PAVLOVIA     = "pavlovia"
)

// GetTaskById retrieves a task from the given id.
// It returns a 200, 404, or 500 status code.
func (t *TaskRepository) GetTaskById(taskID uint) (models.Task, models.HTTPStatus) {
	// commented this out because it spams the logs
	// axonlogger.InfoLogger.Println("TASK DATABASE: GetTaskById()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the task by id", err)
		}
	}()

	task := models.Task{}
	httpStatus := baseRepositoryImpl.GetOneBy(
		&task,
		`
			SELECT id, from_platform, task_type, name, description, external_url, config 
			FROM tasks 
			WHERE id = ?
		`,
		taskID,
	)

	return task, httpStatus
}

// GetAllTasks retrieves all tasks from the database.
// It returns a 200 or 500 status code.
func (t *TaskRepository) GetAllTasks() ([]models.Task, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("TASK DATABASE: GetAllTasks()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting all tasks", err)
		}
	}()

	tasks := []models.Task{}
	httpStatus := baseRepositoryImpl.GetAllBy(
		&tasks,
		`SELECT id, from_platform, task_type, name, description, external_url, config 
		FROM tasks;`,
	)

	return tasks, httpStatus
}

// GetAllTasksByStudyId gets all tasks for a given study id. Currently unused.
// It returns a 200 or 500 status code
func (t *TaskRepository) GetAllTasksByStudyId(studyId uint) ([]models.Task, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("TASK DATABASE: GetAllTasksByStudyId")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting all tasks", err)
		}
	}()

	tasks := []models.Task{}
	httpStatus := baseRepositoryImpl.GetAllBy(
		&tasks,
		`
			SELECT id, from_platform, task_type, name, description, external_url, config 
			FROM tasks WHERE 
			study_id = ?;
		`,
		studyId,
	)

	return tasks, httpStatus
}
