package services

import (
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type TaskService struct{}

// GetAllTasks returns all tasks
// It returns a 200 or 500 status code.
func (t *TaskService) GetAllTasks() ([]models.Task, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("TASK SERVICE: GetAllTasks()")
	return taskRespositoryImpl.GetAllTasks()
}

// GetTaskById returns a task with the given id
// It returns a 200, 404, or 500
func (t *TaskService) GetTaskById(taskId string) (models.Task, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("TASK SERVICE: GetTaskById()")

	parsedTaskId, error := convertStringToUint8(taskId)
	if error != nil {
		return models.Task{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return taskRespositoryImpl.GetTaskById(parsedTaskId)
}

// GetAllTasksByStudyId gets all tasks for a given study id.
// It returns a 200 or 500
func (t *TaskService) GetAllTasksByStudyId(studyId string) ([]models.Task, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("TASK SERVICE: GetAllTasksByStudyId()")

	parsedStudyId, error := convertStringToUint8(studyId)
	if error != nil {
		return []models.Task{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return taskRespositoryImpl.GetAllTasksByStudyId(parsedStudyId)
}
