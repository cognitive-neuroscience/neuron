package services

import (
	"errors"
	"math/rand"
	"net/http"
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

func (s *StudyService) UpdateStudy(study *models.Study) models.HTTPStatus {
	return studyRepositoryImpl.UpdateStudy(study)
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

// // DeleteExperiment calls the db and deletes the experiment with the given code
// func DeleteExperiment(code string) models.HTTPStatus {
// 	return database.DeleteExperiment(code)
// }

// // SaveExperiment calls the DB and passes the given experiment data
// func SaveExperiment(experiment *models.Experiment) models.HTTPStatus {

// 	code, err := getNewCode()

// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Error creating experiment shortcode", err)
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "Error Creating Experiment Shortcode"}
// 	}
// 	axonlogger.InfoLogger.Println("Created experiment with shortcode:", code)
// 	experiment.Code = code

// 	return database.SaveExperiment(experiment)
// }

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

// // GetAllExperiments calls the DB and returns all experiments
// func GetAllExperiments() ([]models.Experiment, error) {
// 	return database.GetAllExperiments()
// }

// // GetExperiment gets the experiment based on the given code
// func GetExperiment(code string) (models.Experiment, error) {
// 	return database.GetExperiment(code)
// }
