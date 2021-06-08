package services

import (
	"errors"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type TaskService struct{}

// GetAllSharplabRoutes calls the repository and queries the db
// func (t TaskService) GetAllSharplabRoutes() ([]models.Task, error) {
// 	log.Println("calling db")
// 	return database.TaskRepositoryImpl.GetAllTasksByPlatform("sharplab")
// }

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

// SaveCustomTask saves the given customTask data into the database as a customTask object
// func SaveCustomTask(customTask *models.CustomTask) models.HTTPStatus {
// 	return database.SaveCustomTask(customTask)
// }

// DeleteCustomTaskByID deletes the given custom task by id
// func DeleteCustomTaskByID(id string) models.HTTPStatus {
// 	idNum, err := strconv.Atoi(id)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Could not parse the given id", id)
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
// 	}

// 	return database.DeleteCustomTaskByID(idNum)
// }
