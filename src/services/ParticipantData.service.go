package services

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type ParticipantDataService struct{}

// CreateParticipantData saves the given experiment data into a table.
// It returns a 200 or 500 status code.
func (s *ParticipantDataService) CreateParticipantData(participantData models.ParticipantData) models.HTTPStatus {
	axonlogger.InfoLogger.Println("PARTICIPANTDATA SERVICE: CreateParticipantData()")
	return participantDataRepositoryImpl.CreateParticipantData(participantData)
}

// GetParticipantDataByStudyIdAndTaskOrder gets task data given a study id and task order.
// It returns a 200, or 500
func (s *ParticipantDataService) GetParticipantDataByStudyIdAndTaskOrder(studyIdFromPath string, taskOrderFromPath string, userId string) ([]models.ParticipantData, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("PARTICIPANTDATA SERVICE: GetParticipantDataByStudyIdAndTaskOrder()")
	studyId, convertStudyIdErr := convertStringToUint8(studyIdFromPath)
	taskOrder, convertTaskOrderErr := convertStringToUint8(taskOrderFromPath)
	if convertStudyIdErr != nil || convertTaskOrderErr != nil {
		axonlogger.WarningLogger.Println(convertStudyIdErr, convertTaskOrderErr)
		return []models.ParticipantData{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	parsedUserId, getUserIdError := convertStringToUint8(userId)
	if getUserIdError != nil {
		axonlogger.WarningLogger.Println(getUserIdError)
		return []models.ParticipantData{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	user, getUserHttpStatus := userRepositoryImpl.GetUserById(parsedUserId)
	if !common.HTTPRequestIsSuccessful(getUserHttpStatus.Status) {
		return []models.ParticipantData{}, getUserHttpStatus
	}

	study, getStudyHttpStatus := studyRepositoryImpl.GetStudyById(studyId)
	if !common.HTTPRequestIsSuccessful(getStudyHttpStatus.Status) {
		return []models.ParticipantData{}, getStudyHttpStatus
	}

	if user.Organization.ID != study.Owner.Organization.ID {
		return []models.ParticipantData{}, models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
	}

	return participantDataRepositoryImpl.GetAllParticipantDataByStudyIdAndTaskOrder(studyId, taskOrder)

}
