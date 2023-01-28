package services

import (
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type ParticipantDataService struct{}

// CreateParticipantData saves the given experiment data into a table.
// It returns a 200 or 500 status code.
func (s *ParticipantDataService) CreateParticipantData(participantData models.ParticipantData) models.HTTPStatus {
	return participantDataRepositoryImpl.CreateParticipantData(participantData)
}

// GetParticipantDataByStudyIdAndTaskOrder gets task data given a study id and task order.
// It returns a 200, or 500
func (s *ParticipantDataService) GetParticipantDataByStudyIdAndTaskOrder(studyIdFromPath string, taskOrderFromPath string) ([]models.ParticipantData, models.HTTPStatus) {
	studyId, convertStudyIdErr := convertStringToUint8(studyIdFromPath)
	taskOrder, convertTaskOrderErr := convertStringToUint8(taskOrderFromPath)
	if convertStudyIdErr != nil || convertTaskOrderErr != nil {
		axonlogger.WarningLogger.Println(convertStudyIdErr, convertTaskOrderErr)
		return []models.ParticipantData{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return participantDataRepositoryImpl.GetAllParticipantDataByStudyIdAndTaskOrder(studyId, taskOrder)
}
