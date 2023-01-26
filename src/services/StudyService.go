package services

import (
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyService struct{}

// CreateStudy creates a study
func (s *StudyService) CreateStudy(study *models.Study) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDY SERVICE: CreateStudy()")
	return studyRepositoryImpl.CreateStudy(study)
}

// GetStudyById retrieves the study by the given id
func (s *StudyService) GetStudyById(studyId string) (models.Study, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDY SERVICE: GetStudyById()")
	parsedId, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.Study{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return studyRepositoryImpl.GetStudyById(parsedId)
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
