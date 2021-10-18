package database

import (
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

type StudyRepository struct{}

func (s *StudyRepository) UpdateStudyNoTasks(study *models.Study) models.HTTPStatus {
	db := db.DB
	var setStudyActiveValue = `
		UPDATE studies 
		SET internal_name = ?, external_name = ?, started = ?, description = ?, can_edit = ?, consent = ?, config = ?
		WHERE id = ?;
	`

	if _, err := db.Exec(setStudyActiveValue, study.InternalName, study.ExternalName, study.Started, study.Description, study.CanEdit, study.Consent, study.Config, study.ID); err != nil {
		axonlogger.ErrorLogger.Println("Could not scan rows when retrieving studies", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "could not update study"}
	}

	return models.HTTPStatus{Status: http.StatusOK, Message: "successfully updated study"}
}

func (s *StudyRepository) UpdateStudy(study *models.Study) models.HTTPStatus {
	var genericErrMessage = `There was an error updating the study`
	db := db.DB

	var deleteStudyTaskQuery = `DELETE FROM study_tasks WHERE study_id = ?;`
	var saveStudyTasksQuery = `INSERT INTO study_tasks (study_id, task_id, task_order, config) VALUES (?, ?, ?, ?);`

	// begin transaction
	tx, err := db.Begin()
	if err != nil {
		axonlogger.ErrorLogger.Println("Error starting transaction", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
	}

	if httpStatusModel := s.UpdateStudyNoTasks(study); httpStatusModel.Status == http.StatusInternalServerError {
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
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "There was an error archiving the study"}
	}
	return models.HTTPStatus{Status: http.StatusOK, Message: "successfully deleted study"}
}

func (s *StudyRepository) GetAllStudies() ([]models.Study, error) {
	var genericErrorMessage = `There was an error retrieving studies`
	taskRespositoryImpl := TaskRepository{}
	db := db.DB
	var err error
	studies := []models.Study{}

	var getAllStudies = `
		SELECT id, created_at, internal_name, external_name, started, description, can_edit, consent, config
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
			&study.Description,
			&study.CanEdit,
			&study.Consent,
			&study.Config,
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
	var saveStudyQuery = `INSERT INTO studies (created_at, deleted_at, internal_name, external_name, started, description, can_edit, consent, config) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);`
	var genericErrMessage = `There was an error saving the study`

	// begin transaction
	tx, err := db.Beginx()
	if err != nil {
		axonlogger.ErrorLogger.Println("Error starting transaction", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
	}

	// 1. save study to db
	x, err := tx.Exec(saveStudyQuery, time.Now().UTC(), models.NullTime{Valid: false, Time: time.Time{}}, study.InternalName, study.ExternalName, study.Started, study.Description, study.CanEdit, study.Consent, study.Config)
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

func (s *StudyRepository) GetStudyById(studyId uint) (models.Study, error) {
	taskRespositoryImpl := TaskRepository{}
	db := db.DB
	var err error
	var getStudyByIdQuery = `SELECT id, created_at, internal_name, external_name, started, description, can_edit, consent, config FROM studies WHERE id = ?;`
	study := models.Study{}

	rows, err := db.Query(getStudyByIdQuery, studyId)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not get study from db", err)
		return study, err
	}
	defer rows.Close()
	for rows.Next() {
		if err := rows.Scan(
			&study.ID,
			&study.CreatedAt,
			&study.InternalName,
			&study.ExternalName,
			&study.Started,
			&study.Description,
			&study.CanEdit,
			&study.Consent,
			&study.Config,
		); err != nil {
			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving study", err)
			return study, err
		}
	}
	if err := rows.Err(); err != nil {
		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
		return study, errors.New("there was an error retrieving tasks")
	}

	studyTasks, err := taskRespositoryImpl.GetTasksByStudyId(study.ID)
	if err != nil {
		axonlogger.ErrorLogger.Println("Error when populating study with study tasks", err)
		return study, errors.New("there was an error")
	}
	study.Tasks = studyTasks
	return study, err
}
