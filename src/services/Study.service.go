package services

import (
	"database/sql"
	"net/http"
	"strconv"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyService struct{}

// CreateStudy creates a study.
// It returns a 201 or 500 status code.
func (s *StudyService) CreateStudy(study *models.Study) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDY SERVICE: CreateStudy()")
	return studyRepositoryImpl.CreateStudy(study)
}

// GetStudyById retrieves the study by the given id.
// It returns a 200, 404, or 500 status code.
func (s *StudyService) GetStudyById(studyId string) (models.Study, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDY SERVICE: GetStudyById()")
	parsedId, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.Study{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return studyRepositoryImpl.GetStudyById(parsedId)
}

// GetStudiesByOrganizationId gets all the studies for a given organization
// It returns a 200, 404, or 500 status code.
func (s *StudyService) GetStudiesByOrganizationId(organizationId string) ([]models.Study, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDY SERVICE: GetStudiesByOrganizationId()")
	parsedOrganizationId, err := convertStringToUint8(organizationId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return []models.Study{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	return studyRepositoryImpl.GetStudiesByOrganizationId(parsedOrganizationId)
}

// UpdateStudy updates the study. The study object and the study id given in the URL must be the same.
// It returns a 200, 404, or 500 status code.
func (s *StudyService) UpdateStudy(studyId string, shouldUpdateTasks string, study *models.Study) (models.Study, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDY SERVICE: UpdateStudy()")
	parsedStudyId, parsedStudyIdErr := convertStringToUint8(studyId)
	if parsedStudyIdErr != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", parsedStudyIdErr)
		return models.Study{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	shouldUpdateTasksFlag, err := strconv.ParseBool(shouldUpdateTasks)
	if err != nil {
		axonlogger.WarningLogger.Println("could not convert string to boolean", err)
		return models.Study{}, models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
	}

	if parsedStudyId != study.ID {
		return models.Study{}, models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
	}

	studyFromDB, getStudyHttpStatus := studyRepositoryImpl.GetStudyById(study.ID)
	if !common.HTTPRequestIsSuccessful(getStudyHttpStatus.Status) {
		return models.Study{}, getStudyHttpStatus
	}

	studyFromDB.InternalName = study.InternalName
	studyFromDB.ExternalName = study.ExternalName
	studyFromDB.Started = study.Started
	studyFromDB.Consent = study.Consent
	studyFromDB.Description = study.Description
	studyFromDB.Config = study.Config

	// once a study has started, we dont want to be able to update study tasks as that could potentially result in data corruption
	if study.Started {
		studyFromDB.CanEdit = false
	}

	if shouldUpdateTasksFlag && study.CanEdit {

		studyFromDB.StudyTasks = study.StudyTasks
		if updateStudyHttpStatus := studyRepositoryImpl.UpdateStudy(&studyFromDB); !common.HTTPRequestIsSuccessful(updateStudyHttpStatus.Status) {
			return models.Study{}, updateStudyHttpStatus
		}
		return studyFromDB, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}

	} else {

		if updateStudyNoTasksHttpStatus := studyRepositoryImpl.UpdateStudyWithoutTaskUpdate(&studyFromDB); !common.HTTPRequestIsSuccessful(updateStudyNoTasksHttpStatus.Status) {
			return models.Study{}, updateStudyNoTasksHttpStatus
		}
		return studyFromDB, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}

	}
}

// ArchiveStudyById archives a study by the given id.
// It returns a 200, 404, or 500 status code
func (s *StudyService) ArchiveStudyById(studyId string, loggedInUserId string, loggedInUserRole string) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDY SERVICE: ArchiveStudyById()")

	parsedStudyId, parsedStudyIdErr := convertStringToUint8(studyId)
	parsedUserId, parsedUserIdErr := convertStringToUint8(loggedInUserId)
	if parsedStudyIdErr != nil || parsedUserIdErr != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", parsedStudyIdErr, parsedUserIdErr)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	study, getStudyHttpStatus := studyRepositoryImpl.GetStudyById(parsedStudyId)
	if !common.HTTPRequestIsSuccessful(getStudyHttpStatus.Status) {
		return getStudyHttpStatus
	}

	if parsedUserId != study.Owner.ID && loggedInUserRole != common.ADMIN {
		axonlogger.WarningLogger.Println("user", parsedStudyId, "is not authorized to archive the study")
		return models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
	}

	study.DeletedAt = sql.NullTime{
		Valid: true,
		Time:  time.Now().UTC(),
	}

	return studyRepositoryImpl.UpdateStudyWithoutTaskUpdate(&study)
}

// DeleteStudyById sets the deleted property in the db
// func (s *StudyService) DeleteStudyById(studyId string) models.HTTPStatus {
// 	id, err := convertStringToUint8(studyId)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println(err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "There was an error deleting the study"}
// 	}
// 	return studyRepositoryImpl.DeleteStudyById(id)
// }

// // GetAllStudies retrieves all studies from the db
// func (s *StudyService) GetAllStudies(role string) ([]models.Study, error) {
// 	studies, err := studyRepositoryImpl.GetAllStudies()
// 	if err != nil {
// 		return studies, err
// 	}
// 	if role != common.ADMIN {
// 		for _, study := range studies {
// 			// scrub sensitive info
// 			study.CreatedAt = time.Time{}
// 			study.DeletedAt.Time = time.Time{}
// 			study.DeletedAt.Valid = true
// 			study.InternalName = ""
// 			study.CanEdit = false
// 		}
// 	}

// 	return studies, err
// }

// func (s *StudyService) UpdateStudy(study *models.Study, shouldIncludeTasksUpdate string) models.HTTPStatus {
// 	shouldUpdateTasks, err := strconv.ParseBool(shouldIncludeTasksUpdate)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("could not update study", err)
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "could not update study, unexpected request received"}
// 	}

// 	if study.Started {
// 		study.CanEdit = false
// 	}

// 	if shouldUpdateTasks {
// 		return studyRepositoryImpl.UpdateStudy(study)
// 	} else {
// 		return studyRepositoryImpl.UpdateStudyNoTasks(study)
// 	}
// }

// // SaveStudy saves the given study in the db
// func (s *StudyService) SaveStudy(study *models.Study) models.HTTPStatus {
// 	study.CanEdit = true
// 	study.Started = false
// 	return studyRepositoryImpl.SaveStudy(study)
// }

// func (s *StudyService) GetStudyById(studyId string, role string) (models.Study, models.HTTPStatus) {
// 	id, err := convertStringToUint8(studyId)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("could not get study", err)
// 		return models.Study{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "could not get study"}
// 	}

// 	study, err := studyRepositoryImpl.GetStudyById(id)

// 	if err == sql.ErrNoRows {
// 		return study, models.HTTPStatus{Status: http.StatusNoContent, Message: "study does not exist"}
// 	} else if err != nil {
// 		return study, common.HTTPStatusServiceUnavailabStudy
// 	}

// 	// scrub sensitive info
// 	if role != common.ADMIN {
// 		study.CreatedAt = time.Time{}
// 		study.DeletedAt.Time = time.Time{}
// 		study.DeletedAt.Valid = true
// 		study.InternalName = ""
// 		study.CanEdit = false
// 	}
// 	if role == common.NONE {
// 		study.Tasks = []models.StudyTask{}
// 	}
// 	return study, common.HTTPStatusOK
// }
