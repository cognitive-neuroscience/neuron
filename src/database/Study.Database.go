package database

import (
	"database/sql"
	"net/http"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for saving/deleting/retrieving data involving experiments (studies)
 */

type StudyRepository struct{}

// CreateStudy creates a study.
// It returns a 201 or 500 status code.
func (s *StudyRepository) CreateStudy(study *models.Study) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDY DATABASE: CreateStudy()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study by id", err)
		}
	}()

	db := db.DB

	// begin transaction
	tx, err := db.Beginx()
	if err != nil {
		axonlogger.ErrorLogger.Println("Error starting transaction", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	// 1. save study to db
	result, err := tx.Exec(
		`
			INSERT INTO studies 
			(owner_id, created_at, deleted_at, internal_name, external_name, started, can_edit, consent, description, config) 
			VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
		`,
		study.Owner.ID,
		time.Now().UTC(),
		sql.NullTime{Valid: false, Time: time.Time{}},
		study.InternalName,
		study.ExternalName,
		study.Started,
		study.CanEdit,
		study.Consent.ID,
		study.Description,
		study.Config,
	)
	if err != nil {
		tx.Rollback()
		axonlogger.ErrorLogger.Println("could not save study", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	// 2. get id from the inserted study record
	id, err := result.LastInsertId()
	if err != nil {
		tx.Rollback()
		axonlogger.ErrorLogger.Println("could not get study id after insert", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	// 3. set the received id so that the study tasks refer to it
	for i := range study.StudyTasks {
		study.StudyTasks[i].StudyID = uint(id)
	}

	// 4. save study tasks into study_task db
	for _, studyTask := range study.StudyTasks {
		if createStudyTaskHttpStatus := studyTaskRepositoryImpl.CreateStudyTaskAsTransaction(studyTask, tx); !common.HTTPRequestIsSuccessful(createStudyTaskHttpStatus.Status) {
			return createStudyTaskHttpStatus
		}
	}

	// commit transaction
	if err := tx.Commit(); err != nil {
		axonlogger.ErrorLogger.Println("Error committing study and associated task", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// GetStudyById retrieves a study from the database given the study id.
// It returns a 200, 404, or 500 status code.
func (s *StudyRepository) GetStudyById(studyId uint) (models.Study, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDY DATABASE: GetStudyById()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study by id", err)
		}
	}()

	study := models.Study{}
	dbStudy := models.DBStudy{}

	httpStatus := baseRepositoryImpl.GetOneBy(
		&dbStudy,
		`
			SELECT id, owner_id, created_at, deleted_at, internal_name, external_name, started, can_edit, consent, description, config 
			FROM studies 
			WHERE id = ? 
			LIMIT 1;
		`,
		studyId,
	)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return study, httpStatus
	}

	owner, getOwnerHttpStatus := userRepositoryImpl.GetUserById(dbStudy.OwnerId)
	if !common.HTTPRequestIsSuccessful(getOwnerHttpStatus.Status) {
		return study, getOwnerHttpStatus
	}

	consent, getTaskHttpStatus := taskRepositoryImpl.GetTaskById(dbStudy.ConsentId)
	if !common.HTTPRequestIsSuccessful(getTaskHttpStatus.Status) {
		return study, getTaskHttpStatus
	}

	studyTasks, getTasksHttpStatus := studyTaskRepositoryImpl.GetStudyTasksByStudyId(studyId)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return study, getTasksHttpStatus
	}

	study.ID = dbStudy.ID
	study.Owner = owner
	study.CreatedAt = dbStudy.CreatedAt
	study.DeletedAt = dbStudy.DeletedAt
	study.InternalName = dbStudy.InternalName
	study.ExternalName = dbStudy.ExternalName
	study.Started = dbStudy.Started
	study.CanEdit = dbStudy.CanEdit
	study.Consent = consent
	study.Description = dbStudy.Description
	study.Config = dbStudy.Config
	study.StudyTasks = studyTasks

	return study, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetStudiesByOrganizationId gets all studies for the organization.
// It returns a 200, 404, or 500 status code.
func (s *StudyRepository) GetStudiesByOrganizationId(organizationId uint) ([]models.Study, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDY DATABASE: GetStudiesByOrganizationId()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study by id", err)
		}
	}()

	studies := []models.Study{}
	dbStudies := []models.DBStudy{}

	if httpStatus := baseRepositoryImpl.GetAllBy(
		&dbStudies,
		`
			SELECT studies.id, owner_id, studies.created_at, deleted_at, internal_name, external_name, started, can_edit, consent, description, config 
			FROM studies JOIN users 
			ON studies.owner_id = users.id 
			WHERE users.organization_id = ? AND deleted_at IS NULL ORDER BY created_at DESC;
		`,
		organizationId,
	); !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return []models.Study{}, httpStatus
	}

	for _, dbStudy := range dbStudies {
		study, getStudyHttpStatus := s.GetStudyById(dbStudy.ID)
		if !common.HTTPRequestIsSuccessful(getStudyHttpStatus.Status) {
			return []models.Study{}, getStudyHttpStatus
		}

		studies = append(studies, study)
	}
	return studies, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// UpdateStudy updates the study. It removes all study tasks from the database and updates the study with new study tasks.
// It returns a 200 or 500
func (s *StudyRepository) UpdateStudy(study *models.Study) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDY DATABASE: UpdateStudy()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study by id", err)
		}
	}()

	db := db.DB

	if httpStatus := s.UpdateStudyWithoutTaskUpdate(study); !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return httpStatus
	}

	// begin transaction
	tx, err := db.Beginx()

	if err != nil {
		axonlogger.ErrorLogger.Println("Error starting transaction", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	if _, err := tx.Exec(`DELETE FROM study_tasks WHERE study_id = ?;`, study.ID); err != nil {
		tx.Rollback()
		axonlogger.ErrorLogger.Println("There was an error deleting study tasks from the DB", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	for _, studyTask := range study.StudyTasks {
		if studyTask.Task.ID != study.ID {
			axonlogger.WarningLogger.Println("study task ID received is different from parent study id")
			return models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
		}

		if _, err := tx.Exec(
			`INSERT INTO study_tasks (study_id, task_id, task_order, config) VALUES (?, ?, ?, ?);`,
			studyTask.StudyID,
			studyTask.Task.ID,
			studyTask.TaskOrder,
			studyTask.Config,
		); err != nil {
			tx.Rollback()
			axonlogger.ErrorLogger.Println("could not save study tasks into db", err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
		}
	}

	// commit transaction
	if err := tx.Commit(); err != nil {
		axonlogger.ErrorLogger.Println("Error committing saved study into database", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// UpdateStudyWithoutTaskUpdate updates the study. It only updates superficial fields like name, description, etc.
// It returns a 200 or 500 status code.
func (s *StudyRepository) UpdateStudyWithoutTaskUpdate(study *models.Study) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDY DATABASE: UpdateStudyWithoutTaskUpdate()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study by id", err)
		}
	}()

	db := db.DB

	if _, err := db.Exec(
		`
			UPDATE studies 
			SET deleted_at = ?, internal_name = ?, external_name = ?, started = ?, description = ?, can_edit = ?, consent = ?, config = ? 
			WHERE id = ?;
		`,
		study.DeletedAt,
		study.InternalName,
		study.ExternalName,
		study.Started,
		study.Description,
		study.CanEdit,
		study.Consent.ID,
		study.Config,
		study.ID,
	); err != nil {
		if err == sql.ErrNoRows {
			return models.HTTPStatus{Status: http.StatusNotFound, Message: http.StatusText(http.StatusNotFound)}
		}
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// id INT UNSIGNED NOT NULL AUTO_INCREMENT,
// owner_id INT UNSIGNED NOT NULL,
// created_at DATETIME NOT NULL,
// deleted_at DATETIME DEFAULT(NULL),
// internal_name VARCHAR(255) NOT NULL,
// external_name VARCHAR(255) NOT NULL,
// started BOOLEAN DEFAULT FALSE,
// can_edit BOOLEAN DEFAULT TRUE,
// consent INT UNSIGNED DEFAULT(NULL),
// description VARCHAR(300),
// config JSON NOT NULL DEFAULT (JSON_OBJECT()),
// FOREIGN KEY (consent) REFERENCES tasks(id),
// FOREIGN KEY (owner_id) REFERENCES users(id),
// PRIMARY KEY (id)
// );
// `

// // Study represents a model for a set of tasks
// type Study struct {
// ID           uint               `json:"id"`
// Owner        User               `json:"owner"`
// CreatedAt    time.Time          `json:"createdAt"`
// DeletedAt    sql.NullTime       `json:"deletedAt"`
// InternalName string             `json:"internalName"`
// ExternalName string             `json:"externalName"`
// Started      bool               `json:"started"`
// CanEdit      bool               `json:"canEdit"`
// Consent      Task               `json:"consent"`
// Description  string             `json:"description"`
// Config       MapStringInterface `json:"config"`
// StudyTasks   []StudyTask        `json:"studyTasks"`
// }

// // DBStudy is the database representation of a study
// type DBStudy struct {
// ID           uint               `json:"id"`
// OwnerId      uint               `json:"ownerId"`
// CreatedAt    time.Time          `json:"createdAt"`
// DeletedAt    sql.NullTime       `json:"deletedAt"`
// InternalName string             `json:"internalName"`
// ExternalName string             `json:"externalName"`
// Started      bool               `json:"started"`
// CanEdit      bool               `json:"canEdit"`
// ConsentId    uint               `json:"consentId"`
// Description  string             `json:"description"`
// Config       MapStringInterface `json:"config"`

// func (s *StudyRepository) UpdateStudy(study *models.Study) models.HTTPStatus {
// 	var genericErrMessage = `There was an error updating the study`
// 	db := db.DB

// 	var deleteStudyTaskQuery = `DELETE FROM study_tasks WHERE study_id = ?;`
// 	var saveStudyTasksQuery = `INSERT INTO study_tasks (study_id, task_id, task_order, config) VALUES (?, ?, ?, ?);`

// 	// begin transaction
// 	tx, err := db.Begin()
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error starting transaction", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
// 	}

// 	if httpStatusModel := s.UpdateStudyNoTasks(study); httpStatusModel.Status == http.StatusInternalServerError {
// 		tx.Rollback()
// 		axonlogger.ErrorLogger.Println("There was an error updating the study from the DB", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
// 	}

// 	if _, err := tx.Exec(deleteStudyTaskQuery, study.ID); err != nil {
// 		tx.Rollback()
// 		axonlogger.ErrorLogger.Println("There was an error deleting study tasks from the DB", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
// 	}

// 	for _, studyTask := range study.Tasks {
// 		if _, err := tx.Exec(saveStudyTasksQuery, studyTask.StudyID, studyTask.TaskID, studyTask.TaskOrder, studyTask.Config); err != nil {
// 			tx.Rollback()
// 			axonlogger.ErrorLogger.Println("could not save study tasks", err)
// 			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
// 		}
// 	}

// 	// commit transaction
// 	if err := tx.Commit(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error committing study and associated task", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// 	}

// 	return models.HTTPStatus{Status: http.StatusOK, Message: "Successfully updated task"}
// }

// func (s *StudyRepository) DeleteStudyById(studyId uint) models.HTTPStatus {
// 	db := db.DB
// 	var deleteStudy = `UPDATE studies SET deleted_at = ? WHERE id = ?;`

// 	if _, err := db.Exec(deleteStudy, time.Now().UTC(), studyId); err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error deleting the study", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "There was an error archiving the study"}
// 	}
// 	return models.HTTPStatus{Status: http.StatusOK, Message: "successfully deleted study"}
// }

// func (s *StudyRepository) GetAllStudies() ([]models.Study, error) {
// 	var genericErrorMessage = `There was an error retrieving studies`
// 	taskRespositoryImpl := TaskRepository{}
// 	db := db.DB
// 	var err error
// 	studies := []models.Study{}

// 	var getAllStudies = `
// 		SELECT id, created_at, internal_name, external_name, started, description, can_edit, consent, config
// 		FROM studies
// 		WHERE deleted_at IS NULL ORDER BY created_at DESC;`

// 	rows, err := db.Query(getAllStudies)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("There was an error getting studies from the DB", err)
// 		return studies, errors.New(genericErrorMessage)
// 	}
// 	defer rows.Close()
// 	for rows.Next() {
// 		study := models.Study{}
// 		err := rows.Scan(
// 			&study.ID,
// 			&study.CreatedAt,
// 			&study.InternalName,
// 			&study.ExternalName,
// 			&study.Started,
// 			&study.Description,
// 			&study.CanEdit,
// 			&study.Consent,
// 			&study.Config,
// 		)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("Could not scan rows when retrieving studies", err)
// 			return nil, errors.New(genericErrorMessage)
// 		}
// 		studies = append(studies, study)
// 	}
// 	if err := rows.Err(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error when iterating over rows", err)
// 		return nil, errors.New(genericErrorMessage)
// 	}

// 	// populate the study with the associated study tasks
// 	for i, study := range studies {
// 		studyTasks, err := taskRespositoryImpl.GetTasksByStudyId(study.ID)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("Error when populating study with study tasks", err)
// 			return nil, errors.New(genericErrorMessage)
// 		}
// 		studies[i].Tasks = studyTasks
// 	}

// 	return studies, err
// }

// // SaveStudy
// func (s *StudyRepository) SaveStudy(study *models.Study) models.HTTPStatus {
// 	db := db.DB
// 	var saveStudyTasksQuery = `INSERT INTO study_tasks (study_id, task_id, task_order, config) VALUES (?, ?, ?, ?);`
// 	var saveStudyQuery = `INSERT INTO studies (created_at, deleted_at, internal_name, external_name, started, description, can_edit, consent, config) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);`
// 	var genericErrMessage = `There was an error saving the study`

// 	// begin transaction
// 	tx, err := db.Beginx()
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error starting transaction", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
// 	}

// 	// 1. save study to db
// 	x, err := tx.Exec(saveStudyQuery, time.Now().UTC(), models.NullTime{Valid: false, Time: time.Time{}}, study.InternalName, study.ExternalName, study.Started, study.Description, study.CanEdit, study.Consent, study.Config)
// 	if err != nil {
// 		tx.Rollback()
// 		axonlogger.ErrorLogger.Println("could not save study", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
// 	}

// 	// 2. get id from the inserted study record
// 	id, err := x.LastInsertId()
// 	if err != nil {
// 		tx.Rollback()
// 		axonlogger.ErrorLogger.Println("could not get study id after insert", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
// 	}

// 	// 3. set the received id so that the tasks have a reference to it
// 	for i := range study.Tasks {
// 		study.Tasks[i].StudyID = uint(id)
// 	}

// 	// 2. save tasks into study_task db
// 	for _, task := range study.Tasks {
// 		if _, err := tx.Exec(saveStudyTasksQuery, task.StudyID, task.TaskID, task.TaskOrder, task.Config); err != nil {
// 			tx.Rollback()
// 			axonlogger.ErrorLogger.Println("could not save study tasks", err)
// 			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: genericErrMessage}
// 		}
// 	}

// 	// commit transaction
// 	if err := tx.Commit(); err != nil {
// 		axonlogger.ErrorLogger.Println("Error committing study and associated task", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
// 	}

// 	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
// }

// func (s *StudyRepository) GetStudyById(studyId uint) (models.Study, error) {
// 	taskRespositoryImpl := TaskRepository{}
// 	db := db.DB
// 	var err error
// 	var getStudyByIdQuery = `SELECT id, created_at, internal_name, external_name, started, description, can_edit, consent, config FROM studies WHERE id = ?;`
// 	study := models.Study{}

// 	rowErr := db.QueryRow(getStudyByIdQuery, studyId).Scan(
// 		&study.ID,
// 		&study.CreatedAt,
// 		&study.InternalName,
// 		&study.ExternalName,
// 		&study.Started,
// 		&study.Description,
// 		&study.CanEdit,
// 		&study.Consent,
// 		&study.Config,
// 	)

// 	if rowErr != nil {
// 		return study, rowErr
// 	}

// 	studyTasks, err := taskRespositoryImpl.GetTasksByStudyId(study.ID)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error when populating study with study tasks", err)
// 		return study, err
// 	}
// 	study.Tasks = studyTasks
// 	return study, err
// }
