package services

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type CrowdSourcedUserService struct{}

// CreateCrowdSourcedUser creates a crowdsourced user in the database.
// It returns a 201, 400, 409, or 500 status code
func (c *CrowdSourcedUserService) CreateCrowdSourcedUser(crowdSourcedUser models.CrowdSourcedUser) models.HTTPStatus {
	axonlogger.InfoLogger.Println("CROWDSOURCEDUSER SERVICE: CreateCrowdSourcedUser()")

	if crowdSourcedUser.ParticipantID == "" || crowdSourcedUser.StudyID == 0 {
		axonlogger.WarningLogger.Println("crowdsourced user invalid:", crowdSourcedUser)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
	}

	crowdSourcedUser.CompletionCode = ""

	return crowdSourcedUserRepositoryImpl.CreateCrowdSourcedUser(crowdSourcedUser)
}

// GetCrowdSourcedUserByCrowdSourcedUserAndStudyId gets a crowdSourcedUser by the given ID.
// It returns a 200, 404, or 500 status code
func (c *CrowdSourcedUserService) GetCrowdSourcedUserByCrowdSourcedUserAndStudyId(crowdSourcedUserId string, studyId string) (models.CrowdSourcedUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("CROWDSOURCEDUSER SERVICE: GetCrowdSourcedUserByCrowdSourcedUserAndStudyId()")

	parsedInt, err := convertStringToUint8(studyId)
	if err != nil {
		return models.CrowdSourcedUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return crowdSourcedUserRepositoryImpl.GetCrowdSourcedUserByCrowdSourcedUserAndStudyId(crowdSourcedUserId, parsedInt)
}

// GetCrowdSourcedUsersByStudyId gets all crowdsourced users for a given study id.
// It returns a 200 or 500 status code.
func (c *CrowdSourcedUserService) GetCrowdSourcedUsersByStudyId(studyId string) ([]models.CrowdSourcedUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDY SERVICE: GetCrowdSourcedUsersByStudyId()")
	parsedStudyId, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return []models.CrowdSourcedUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return crowdSourcedUserRepositoryImpl.GetAllCrowdSourcedUsersByStudyId(parsedStudyId)
}

// HandleSetComplete sets a string as the completion code.
// It returns a 200, 404, or 500 status code.
func (c *CrowdSourcedUserService) HandleSetComplete(crowdSourcedUser models.CrowdSourcedUser) (models.CrowdSourcedUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("CROWDSOURCEDUSER SERVICE: HandleSetComplete()")

	crowdSourcedUserInDB, httpStatus := crowdSourcedUserRepositoryImpl.GetCrowdSourcedUserByCrowdSourcedUserAndStudyId(crowdSourcedUser.ParticipantID, crowdSourcedUser.StudyID)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return models.CrowdSourcedUser{}, httpStatus
	}

	// TODO: validate that the crowdsourced user complete the study - they should have entries for each task

	crowdSourcedUserInDB.CompletionCode = generateCode(10)

	return crowdSourcedUserInDB, crowdSourcedUserRepositoryImpl.UpdateCrowdSourcedUser(crowdSourcedUserInDB)
}
