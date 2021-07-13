package services

import (
	"errors"
	"math/rand"
	"net/http"
	"strconv"
	"strings"
	"time"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyService struct{}

// CodeCharacters represents the atomic characters that make up a short code
var CodeCharacters string = "bcdfghjklmnpqrstvwxyz0123456789"

// DeleteStudyById sets the deleted property in the db
func (s *StudyService) DeleteStudyById(studyId string) models.HTTPStatus {
	id, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println(err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "There was an error deleting the study"}
	}
	return studyRepositoryImpl.DeleteStudyById(id)
}

// GetAllStudies retrieves all studies from the db
func (s *StudyService) GetAllStudies() ([]models.Study, error) {
	return studyRepositoryImpl.GetAllStudies()
}

func (s *StudyService) UpdateStudy(study *models.Study, shouldIncludeTasksUpdate string) models.HTTPStatus {
	shouldUpdateTasks, err := strconv.ParseBool(shouldIncludeTasksUpdate)
	if err != nil {
		axonlogger.WarningLogger.Println("could not update study", err)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "could not update study, unexpected request received"}
	}

	if study.Started {
		study.CanEdit = false
	}

	if shouldUpdateTasks {
		return studyRepositoryImpl.UpdateStudy(study)
	} else {
		return studyRepositoryImpl.UpdateStudyNoTasks(study)
	}
}

// SaveStudy saves the given study in the db
func (s *StudyService) SaveStudy(study *models.Study) models.HTTPStatus {
	study.CanEdit = true
	study.Started = false
	return studyRepositoryImpl.SaveStudy(study)
}

func (s *StudyService) GetStudyById(studyId string) (models.Study, error) {
	id, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("could not get study", err)
		return models.Study{}, errors.New("could not get study")
	}
	return studyRepositoryImpl.GetStudyById(id)
}

// GenerateCode creates a code using the CharacterCode string of x size
func GenerateCode(size int) string {
	rand.Seed(time.Now().UnixNano())
	var str strings.Builder

	for i := 0; i < size; i++ {
		randIndex := rand.Intn(len(CodeCharacters))
		str.WriteString(string(CodeCharacters[randIndex]))
	}
	return str.String()
}
