package services

import (
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyUserService struct{}

// GetAllStudyUsersByUserId retrieves all study users for the given user id
func (s *StudyUserService) GetAllStudyUsersByUserId(userId string) ([]models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER SERVICE: GetAllStudyUsersByUserId()")

	parsedId, err := convertStringToUint8(userId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert user id to uint", err)
		return []models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return studyUserRepositoryImpl.GetAllStudyUsersByUserId(parsedId)
}
