package database

import (
	"database/sql"
	"errors"
	"net/http"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for saving/deleting/retrieving data involving experiments (studies)
 */

type StudyRepository struct {
}

func (s *StudyRepository) UpdateStudy(study *models.Study) models.HTTPStatus {
	var genericErrMessage = `There was an error updating the study`
	db := db.DB
	var setStudyActiveValue = `
		UPDATE studies 
		SET internal_name = ?, external_name = ?, started = ?, description = ?
		WHERE id = ?;
	`

	var deleteStudyTaskQuery = `DELETE FROM study_tasks WHERE study_id = ?;`
	var saveStudyTasksQuery = `INSERT INTO study_tasks (study_id, task_id, task_order, config) VALUES (?, ?, ?, ?);`

	// begin transaction
	tx, err := db.Begin()
	if err != nil {
		axonlogger.ErrorLogger.Println("Error starting transaction", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
	}

	if _, err := tx.Exec(setStudyActiveValue, study.InternalName, study.ExternalName, study.Started, study.Description, study.ID); err != nil {
		tx.Rollback()
		axonlogger.ErrorLogger.Println("There was an error updating the study from the DB", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
	}

	if _, err := tx.Exec(deleteStudyTaskQuery, study.ID); err != nil {
		tx.Rollback()
		axonlogger.ErrorLogger.Println("There was an error deleting study tasks from the DB", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
	}

	for _, studyTask := range study.Tasks {
		if _, err := tx.Exec(saveStudyTasksQuery, studyTask.StudyID, studyTask.TaskID, studyTask.TaskOrder, studyTask.Config); err != nil {
			tx.Rollback()
			axonlogger.ErrorLogger.Println("could not save study tasks", err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
		}
	}

	// commit transaction
	if err := tx.Commit(); err != nil {
		axonlogger.ErrorLogger.Println("Error committing study and associated task", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return models.HTTPStatus{Status: http.StatusOK, Message: "Successfully updated task"}
}

func (s *StudyRepository) DeleteStudyById(studyId uint) models.HTTPStatus {
	db := db.DB
	var deleteStudy = `UPDATE studies SET deleted_at = ? WHERE id = ?;`

	if _, err := db.Exec(deleteStudy, time.Now().UTC(), studyId); err != nil {
		axonlogger.ErrorLogger.Println("There was an error deleting the study", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "There was an error deleting the study"}
	}
	return models.HTTPStatus{Status: http.StatusOK, Message: "Successfully deleted study"}
}

func (s *StudyRepository) GetAllStudies() ([]models.Study, error) {
	var genericErrorMessage = `There was an error retrieving studies`
	taskRespositoryImpl := TaskRepository{}
	db := db.DB
	var err error
	studies := []models.Study{}

	var getAllStudies = `
		SELECT id, created_at, internal_name, external_name, started, study_code, description 
		FROM studies
		WHERE deleted_at IS NULL ORDER BY created_at DESC;`

	rows, err := db.Query(getAllStudies)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error getting studies from the DB", err)
		return studies, errors.New(genericErrorMessage)
	}
	defer rows.Close()
	for rows.Next() {
		study := models.Study{}
		err := rows.Scan(
			&study.ID,
			&study.CreatedAt,
			&study.InternalName,
			&study.ExternalName,
			&study.Started,
			&study.StudyCode,
			&study.Description,
		)
		if err != nil {
			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving studies", err)
			return nil, errors.New(genericErrorMessage)
		}
		studies = append(studies, study)
	}
	if err := rows.Err(); err != nil {
		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
		return nil, errors.New(genericErrorMessage)
	}

	// populate the study with the associated study tasks
	for i, study := range studies {
		studyTasks, err := taskRespositoryImpl.GetTasksByStudyId(study.ID)
		if err != nil {
			axonlogger.ErrorLogger.Println("Error when populating study with study tasks", err)
			return nil, errors.New(genericErrorMessage)
		}
		studies[i].Tasks = studyTasks
	}

	return studies, err
}

// SaveStudy
func (s *StudyRepository) SaveStudy(study *models.Study) models.HTTPStatus {
	db := db.DB
	var saveStudyTasksQuery = `INSERT INTO study_tasks (study_id, task_id, task_order, config) VALUES (?, ?, ?, ?);`
	var saveStudyQuery = `INSERT INTO studies (created_at, deleted_at, internal_name, external_name, started, study_code, description) VALUES (?, ?, ?, ?, ?, ?, ?);`
	var genericErrMessage = `There was an error saving the study`

	// begin transaction
	tx, err := db.Beginx()
	if err != nil {
		axonlogger.ErrorLogger.Println("Error starting transaction", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
	}

	// 1. save study to db
	x, err := tx.Exec(saveStudyQuery, time.Now().UTC(), sql.NullString{}, study.InternalName, study.ExternalName, study.Started, study.StudyCode, study.Description)
	if err != nil {
		tx.Rollback()
		axonlogger.ErrorLogger.Println("could not save study", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
	}

	// 2. get id from the inserted study record
	id, err := x.LastInsertId()
	if err != nil {
		tx.Rollback()
		axonlogger.ErrorLogger.Println("could not get study id after insert", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
	}

	// 3. set the received id so that the tasks have a reference to it
	for i := range study.Tasks {
		study.Tasks[i].StudyID = uint(id)
	}

	// 2. save tasks into study_task db
	for _, task := range study.Tasks {
		if _, err := tx.Exec(saveStudyTasksQuery, task.StudyID, task.TaskID, task.TaskOrder, task.Config); err != nil {
			tx.Rollback()
			axonlogger.ErrorLogger.Println("could not save study tasks", err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
		}
	}

	// commit transaction
	if err := tx.Commit(); err != nil {
		axonlogger.ErrorLogger.Println("Error committing study and associated task", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// GetAllStudyCodes is a helper method to retrieve all codes. One use case for this function is to
// make sure there is no duplication when we are creating a new code for a study
func (s *StudyRepository) GetAllStudyCodes() ([]string, error) {
	db := db.DB
	var err error
	studyCodes := []string{}
	var getAllStudyCodes = `SELECT study_code FROM studies;`

	rows, err := db.Query(getAllStudyCodes)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not get study codes from db", err)
		return studyCodes, err
	}
	defer rows.Close()
	for rows.Next() {
		var studyCode string
		if err := rows.Scan(&studyCode); err != nil {
			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving study codes", err)
			return nil, err
		}
		studyCodes = append(studyCodes, studyCode)
	}
	if err := rows.Err(); err != nil {
		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
		return nil, errors.New("there was an error retrieving tasks")
	}
	return studyCodes, err
}

// // DeleteExperiment deletes the experiment with the given code. It also deletes all references in the ExperimentTask join table
// func DeleteExperiment(code string) models.HTTPStatus {
// 	db := DBConn
// 	var experiment models.Experiment
// 	// return an error if we cannot find the experiment with the given code
// 	if err := db.Where(&models.Experiment{Code: code}).First(&experiment).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Could not check if experiment exists:", code, err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// 	}

// 	if err := db.First(&experiment).Update("deleted", true).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Could not delete experiment:", code, err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// 	}
// 	axonlogger.InfoLogger.Println("Experiment", code, "deleted")
// 	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
// }

// // GetAllExperiments finds and returns all existing experiments
// func GetAllExperiments() ([]models.Experiment, error) {
// 	db := DBConn
// 	var err error
// 	experiments := []models.Experiment{}
// 	if err := db.Find(&experiments).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting the experiments from the DB", err)
// 		err = errors.New("Could not fetch experiments")
// 		return experiments, err
// 	}

// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting questionnaires from the DB", err)
// 		return nil, err
// 	}

// 	// for each experiment, get the associated tasks and questionnaires
// 	for index, experiment := range experiments {
// 		// for each experiment, make an SQL query to get all tasks
// 		err = db.Raw(getOrderedTasks, experiment.Code).Pluck("Tasks", &experiments[index].Tasks).Error
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("There was an error getting experiment tasks from the DB:", experiment, err)
// 			return nil, err
// 		}

// 		idList := []string{}
// 		// for each taskname, find the survey monkey ones and grab the ID
// 		for _, taskName := range experiments[index].Tasks {
// 			if strings.Contains(taskName, SURVEYMONKEYQUESTIONNAIRE) {
// 				split := strings.Split(taskName, "-")
// 				idList = append(idList, split[1])
// 			}
// 		}

// 		err = db.Find(&experiments[index].Questionnaires, idList).Error
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("There was an error getting questionnaires from the DB", experiment, err)
// 		}
// 	}

// 	axonlogger.InfoLogger.Println("Getting all experiments")
// 	return experiments, err
// }

// // SaveExperiment saves the given experiment into the db
// func SaveExperiment(experiment *models.Experiment) models.HTTPStatus {
// 	db := DBConn

// 	// create the experiment
// 	errors := db.Create(&experiment).GetErrors()
// 	if len(errors) > 0 {
// 		axonlogger.ErrorLogger.Println("Error creating experiment", experiment, ":", errors)
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error creating an experiment"}
// 	}

// 	// create an ExperimentTask record for each task to preserve the order
// 	adjustment := 0
// 	for index, task := range experiment.Tasks {

// 		// TODO: validate that the given task is correct with the same name and type
// 		experimentTaskObj := models.ExperimentTask{
// 			ExperimentCode: experiment.Code,
// 			TaskID:         task,
// 			Place:          index - adjustment,
// 		}
// 		errors := db.Create(&experimentTaskObj).GetErrors()
// 		// if there is an error creating, then skip adding this ExperimentTask
// 		// and make sure the next one maintains the correct chronological order
// 		if len(errors) > 0 {
// 			axonlogger.ErrorLogger.Println("Error creating experiment task:", experimentTaskObj, ":", errors)
// 			adjustment++
// 		}
// 	}
// 	axonlogger.InfoLogger.Println("Saved Experiment", experiment)
// 	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
// }

// // ExperimentExists takes a code and returns a bool representing if that code exists or not in the db
// func ExperimentExists(code string) (bool, error) {
// 	db := DBConn
// 	experiments := []models.Experiment{}
// 	if err := db.Find(&experiments).Error; err != nil {
// 		axonlogger.ErrorLogger.Println(err)
// 		return false, errors.New("Could not fetch experiments")
// 	}

// 	for _, experiment := range experiments {
// 		if experiment.Code == code {
// 			return true, nil
// 		}
// 	}

// 	return false, nil
// }

// // GetExperiment gets the experiment based on the given code
// func GetExperiment(code string) (models.Experiment, error) {
// 	db := DBConn
// 	experiment := models.Experiment{}
// 	// TODO: refactor this, you can just do a join on experiment and tasks
// 	if err := db.Where("code = ?", code).First(&experiment).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Error retrieving experiment", code)
// 		return experiment, errors.New(err.Error())
// 	}
// 	// use pluck to get the specific column
// 	if err := db.Raw(getOrderedTasks, experiment.Code).Pluck("Tasks", &experiment.Tasks).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("error retrieving experiment tasks", code)
// 		return experiment, errors.New(err.Error())
// 	}

// 	idList := []string{}
// 	// for each taskname, find the survey monkey ones and grab the ID
// 	for _, taskName := range experiment.Tasks {
// 		if strings.Contains(taskName, SURVEYMONKEYQUESTIONNAIRE) {
// 			split := strings.Split(taskName, "-")
// 			idList = append(idList, split[1])
// 		}
// 	}
// 	if err := db.Find(&experiment.Questionnaires, idList).Error; err != nil {
// 		axonlogger.ErrorLogger.Println("Error retreiving questionnaire(s) for experiment", experiment, err)
// 		return experiment, err
// 	}

// 	axonlogger.InfoLogger.Println("Successfully retrieving experiment", code)
// 	return experiment, nil
// }
