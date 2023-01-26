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
	axonlogger.InfoLogger.Println("TASK DATABASE: GetTaskById()")
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

// id INT UNSIGNED NOT NULL AUTO_INCREMENT,
// from_platform ENUM("PSHARPLAB", "SURVEYMONKEY", "PAVLOVIA"),
// task_type ENUM("NAB", "EXPERIMENTAL", "QUESTIONNAIRE", "CONSENT", "INFO_DISPLAY"),
// name VARCHAR(255) NOT NULL CHECK(name != ""),
// description VARCHAR(500) NOT NULL DEFAULT "",
// external_url VARCHAR(500) NOT NULL DEFAULT "",
// config JSON NOT NULL DEFAULT (JSON_OBJECT()),

// func (t *TaskRepository) GetTasksByStudyId(studyID uint) ([]models.StudyTask, error) {
// 	db := db.DB
// 	var err error
// 	studyTasks := []models.StudyTask{}

// 	var getAllStudyTasks = `
// 		SELECT study_id, task_id, task_order, study_tasks.config, tasks.config, tasks.description, tasks.external_url, tasks.from_platform, tasks.id, tasks.name, tasks.task_type
// 		FROM study_tasks JOIN tasks
// 		ON study_tasks.task_id = tasks.id
// 		WHERE study_id = ?
// 		ORDER BY task_order;
// 	`

// 	rows, err := db.Query(getAllStudyTasks, studyID)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting tasks from the DB", err)
// 		return nil, errors.New("there was an error retrieving tasks")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		studyTask := models.StudyTask{}
// 		if err := rows.Scan(
// 			&studyTask.StudyID,
// 			&studyTask.TaskID,
// 			&studyTask.TaskOrder,
// 			&studyTask.Config,
// 			&studyTask.Task.Config,
// 			&studyTask.Task.Description,
// 			&studyTask.Task.ExternalURL,
// 			&studyTask.Task.FromPlatform,
// 			&studyTask.Task.ID,
// 			&studyTask.Task.Name,
// 			&studyTask.Task.TaskType,
// 		); err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving study tasks", err)
// 			return nil, errors.New("there was an error retrieving tasks")
// 		}
// 		studyTasks = append(studyTasks, studyTask)
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return nil, errors.New("there was an error retrieving tasks")
// 	}
// 	return studyTasks, nil
// }

// // GetAllTasks returns a list of all questionnaires from the DB
// func (t *TaskRepository) GetAllTasks() ([]models.Task, error) {
// 	db := db.DB
// 	var err error
// 	tasks := []models.Task{}

// 	var getAllTasks = `SELECT id, from_platform, task_type, name, description, external_url, config FROM tasks ORDER BY name ASC;`

// 	rows, err := db.Query(getAllTasks)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting tasks from the DB", err)
// 		return nil, errors.New("there was an error retrieving tasks")
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		task := models.Task{}
// 		if err := rows.Scan(
// 			&task.ID,
// 			&task.FromPlatform,
// 			&task.TaskType,
// 			&task.Name,
// 			&task.Description,
// 			&task.ExternalURL,
// 			&task.Config,
// 		); err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving tasks", err)
// 			return nil, errors.New("there was an error retrieving tasks")
// 		}
// 		tasks = append(tasks, task)
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return nil, errors.New("there was an error retrieving tasks")
// 	}
// 	return tasks, err
// }

// func (t *TaskRepository) GetTaskByTaskId(id uint) (models.Task, error) {
// 	db := db.DB
// 	task := models.Task{}

// 	var getTaskByIdQuery = `SELECT id, from_platform, task_type, name, description, external_url, config FROM tasks WHERE id = ?;`

// 	rowErr := db.QueryRow(getTaskByIdQuery, id).Scan(
// 		&task.ID,
// 		&task.FromPlatform,
// 		&task.TaskType,
// 		&task.Name,
// 		&task.Description,
// 		&task.ExternalURL,
// 		&task.Config,
// 	)

// 	if rowErr == sql.ErrNoRows {
// 		axonlogger.WarningLogger.Println("cannot retrieve task as it does not exist in the DB", id)
// 		return task, errors.New("task does not exist")
// 	} else if rowErr != nil {
// 		axonlogger.ErrorLogger.Println("Error scanning row when getting task by id", rowErr)
// 		return task, errors.New("there was an error getting the task")
// 	}
// 	return task, nil
// }
