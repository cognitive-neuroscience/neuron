package services

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type TaskService struct{}

var taskRepository = database.TaskRepository{}

// GetAllSharplabRoutes calls the repository and queries the db
func (t TaskService) GetAllSharplabRoutes() ([]models.Task, error) {
	return taskRepository.GetAllTasksByPlatform("sharplab")
}

// // GetAllCustomTasks returns a list of all questionnaires from the DB
// func GetAllCustomTasks() ([]models.CustomTask, error) {
// 	return database.GetAllCustomTasks()
// }

// // SaveCustomTask saves the given customTask data into the database as a customTask object
// func SaveCustomTask(customTask *models.CustomTask) models.HTTPStatus {
// 	return database.SaveCustomTask(customTask)
// }

// // DeleteCustomTaskByID deletes the given custom task by id
// func DeleteCustomTaskByID(id string) models.HTTPStatus {
// 	idNum, err := strconv.Atoi(id)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Could not parse the given id", id)
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
// 	}

// 	return database.DeleteCustomTaskByID(idNum)
// }
