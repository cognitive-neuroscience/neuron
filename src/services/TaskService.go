package services

import (
	"errors"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type TaskService struct{}

// GetAllCustomTasks returns a list of all questionnaires from the DB
func (t *TaskService) GetAllTasks() ([]models.Task, error) {
	return taskRespositoryImpl.GetAllTasks()
}

func (t *TaskService) GetTasksByStudyId(studyId string) ([]models.StudyTask, error) {
	id, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println(err)
		return []models.StudyTask{}, errors.New("could not get tasks")
	}
	return taskRespositoryImpl.GetTasksByStudyId(id)
}

func (t *TaskService) GetTaskByTaskId(taskId string) (models.Task, error) {
	id, err := convertStringToUint8(taskId)
	if err != nil {
		axonlogger.WarningLogger.Println(err)
		return models.Task{}, errors.New("could not get tasks")
	}
	return taskRespositoryImpl.GetTaskByTaskId(id)
}
