// package database

// import (
// 	"database/sql/driver"
// 	"encoding/json"
// 	"errors"

// 	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
// 	"github.com/cognitive-neuroscience/neuron/src/models"
// 	"github.com/cognitive-neuroscience/neuron/src/setup"
// )

// var TaskRepositoryImpl = TaskRepository{}

// type TaskRepository struct {
// }

// const (
// 	PSHARPLAB    = "psharplab"
// 	SURVEYMONKEY = "surveymonkey"
// 	PAVLOVIA     = "pavlovia"
// )

// // reads json columns from mysql and parses them into mapstringinterface
// // The data stored in a JSON field is returned as a []uint8
// func (m *MapStringInterface) Scan(src interface{}) error {
// 	var source []byte
// 	tempMap := make(map[string]interface{})

// 	switch src.(type) {
// 	case []uint8:
// 		source = []byte(src.([]uint8))
// 	case nil:
// 		return nil
// 	default:
// 		return errors.New("Error converting MYSQL json to MapStringInterface")
// 	}
// 	err := json.Unmarshal(source, &tempMap)
// 	if err != nil {
// 		return err
// 	}
// 	*m = MapStringInterface(tempMap)
// 	return nil
// }

// var data = []byte(`{"cmd":"create","data":{"conf":{"a":1},"info":{"b":2}}} `)

// // converts mapstringinterface data to json to insert into mysql
// func (m MapStringInterface) Value() (driver.Value, error) {
// 	if len(m) == 0 {
// 		return nil, nil
// 	}
// 	json, err := json.Marshal(m)
// 	if err != nil {
// 		return nil, err
// 	}
// 	return driver.Value(json), nil
// }

// func (t *TaskRepository) DoSmth(r string) {

// }

// // GetAllSharplabTasks returns a list of all tasks supported natively by sharplab (e.g. stroop, nback, etc)
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

// // // GetAllCustomTasks returns a list of all questionnaires from the DB
// // func GetAllCustomTasks() ([]models.CustomTask, error) {
// // 	db := DBConn
// // 	var err error
// // 	customTasks := []models.CustomTask{}
// // 	if err := db.Find(&customTasks).Error; err != nil {
// // 		axonlogger.ErrorLogger.Println("There was an error getting customTasks from the DB", err)
// // 		err = errors.New("Could not fetch experiments")
// // 		return customTasks, err
// // 	}
// // 	axonlogger.InfoLogger.Println("Getting all customTasks")
// // 	return customTasks, err
// // }

// // // SaveCustomTask saves the given customTask data into the database as a customTask object
// // func SaveCustomTask(customTask *models.CustomTask) models.HTTPStatus {
// // 	db := DBConn
// // 	if err := db.Create(&customTask).Error; err != nil {
// // 		axonlogger.ErrorLogger.Println("Could not save customTask", customTask, err)
// // 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// // 	}
// // 	axonlogger.InfoLogger.Println("Successfully saved customTask", customTask.Name)
// // 	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
// // }

// // // DeleteCustomTaskByID deletes the given custom task by id
// // func DeleteCustomTaskByID(id int) models.HTTPStatus {
// // 	db := DBConn
// // 	if err := db.Delete(&models.CustomTask{}, id).Error; err != nil {
// // 		axonlogger.ErrorLogger.Println("Could not delete CustomTask", id, err)
// // 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// // 	}
// // 	axonlogger.InfoLogger.Println("Successfully deleted CustomTask", id)
// // 	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
// // }
