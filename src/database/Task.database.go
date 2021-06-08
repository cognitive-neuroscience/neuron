package database

import (
	"errors"

	"github.com/cognitive-neuroscience/neuron/src/db"
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

// GetAllSharplabTasks returns a list of all tasks supported natively by sharplab (e.g. stroop, nback, etc)
// func (t *TaskRepository) GetAllTasksByPlatform(platform string) ([]models.Task, error) {
// 	db := setup.DB
// 	tasks := []models.Task{}

// 	var getAllSharplabTasksQuery = `SELECT * FROM tasks WHERE fromPlatform = ?;`

// 	rows, err := db.Query(getAllSharplabTasksQuery, platform)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error retrieving psharplab tasks while executing: "+getAllSharplabTasksQuery, err)
// 		return nil, errors.New("There was an error while retrieving tasks")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		task := models.Task{}
// 		err := rows.Scan(
// 			&task.ID,
// 			&task.FromPlatform,
// 			&task.TaskType,
// 			&task.Name,
// 			&task.Description,
// 			&task.Config,
// 			&task.ExternalURL,
// 			&task.ComponentMapping,
// 		)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Panicln("There was an error mapping the values from DB rows to the given struct", err)
// 			return nil, errors.New("There was an error while retrieving tasks")
// 		}
// 		tasks = append(tasks, task)
// 	}

// 	err = rows.Err()
// 	if err != nil {
// 		axonlogger.ErrorLogger.Panicln("There was an error scanning the rows", err)
// 		return nil, errors.New("There was an error while retrieving tasks")
// 	}
// 	return tasks, nil
// }

func (t *TaskRepository) GetTasksByStudyId(studyID uint) ([]models.StudyTask, error) {
	db := db.DB
	var err error
	studyTasks := []models.StudyTask{}

	var getAllStudyTasks = `
		SELECT study_id, task_id, task_order, study_tasks.config, tasks.config, tasks.description, tasks.external_url, tasks.from_platform, tasks.id, tasks.name, tasks.task_type 
		FROM study_tasks JOIN tasks 
		ON study_tasks.task_id = tasks.id
		WHERE study_id = ?
		ORDER BY task_order;
	`

	rows, err := db.Query(getAllStudyTasks, studyID)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error getting tasks from the DB", err)
		return nil, errors.New("there was an error retrieving tasks")
	}
	defer rows.Close()
	for rows.Next() {
		studyTask := models.StudyTask{}
		if err := rows.Scan(
			&studyTask.StudyID,
			&studyTask.TaskID,
			&studyTask.TaskOrder,
			&studyTask.Config,
			&studyTask.Task.Config,
			&studyTask.Task.Description,
			&studyTask.Task.ExternalURL,
			&studyTask.Task.FromPlatform,
			&studyTask.Task.ID,
			&studyTask.Task.Name,
			&studyTask.Task.TaskType,
		); err != nil {
			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving study tasks", err)
			return nil, errors.New("there was an error retrieving tasks")
		}
		studyTasks = append(studyTasks, studyTask)
	}
	if err := rows.Err(); err != nil {
		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
		return nil, errors.New("there was an error retrieving tasks")
	}
	return studyTasks, nil
}

// GetAllTasks returns a list of all questionnaires from the DB
func (t *TaskRepository) GetAllTasks() ([]models.Task, error) {
	db := db.DB
	var err error
	tasks := []models.Task{}

	var getAllTasks = `SELECT id, from_platform, task_type, name, description, external_url, config FROM tasks;`

	rows, err := db.Query(getAllTasks)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error getting tasks from the DB", err)
		return nil, errors.New("there was an error retrieving tasks")
	}
	defer rows.Close()
	for rows.Next() {
		task := models.Task{}
		if err := rows.Scan(
			&task.ID,
			&task.FromPlatform,
			&task.TaskType,
			&task.Name,
			&task.Description,
			&task.ExternalURL,
			&task.Config,
		); err != nil {
			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving tasks", err)
			return nil, errors.New("there was an error retrieving tasks")
		}
		tasks = append(tasks, task)
	}
	if err := rows.Err(); err != nil {
		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
		return nil, errors.New("there was an error retrieving tasks")
	}
	return tasks, err
}

// SaveCustomTask saves the given customTask data into the database as a customTask object
// func SaveCustomTask(customTask *models.CustomTask) models.HTTPStatus {
// 	db := DBConn
// 	if err := db.Create(&customTask).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Could not save customTask", customTask, err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// 	}
// 	axonlogger.InfoLogger.Println("Successfully saved customTask", customTask.Name)
// 	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
// }

// DeleteCustomTaskByID deletes the given custom task by id
// func DeleteCustomTaskByID(id int) models.HTTPStatus {
// 	db := DBConn
// 	if err := db.Delete(&models.CustomTask{}, id).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Could not delete CustomTask", id, err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// 	}
// 	axonlogger.InfoLogger.Println("Successfully deleted CustomTask", id)
// 	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
// }
