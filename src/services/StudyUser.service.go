package services

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyUserService struct{}

// GetAllStudyUsersByUserId retrieves all study users for the given user id.
// It returns a 200, 404, or 500 status code.
func (s *StudyUserService) GetAllStudyUsersByUserId(userId string) ([]models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER SERVICE: GetAllStudyUsersByUserId()")

	parsedId, err := convertStringToUint8(userId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert user id to uint", err)
		return []models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return studyUserRepositoryImpl.GetAllStudyUsersByUserId(parsedId)
}

// GetAllStudyUsersByStudyId retrieves all study users for the given user id.
// It returns a 200, 404, or 500 status code.
func (s *StudyUserService) GetAllStudyUsersByStudyId(studyId string) ([]models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER SERVICE: GetAllStudyUsersByStudyId()")

	parsedId, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert user id to uint", err)
		return []models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return studyUserRepositoryImpl.GetAllStudyUsersByStudyId(parsedId)
}

// GetStudyUserByUserAndStudyId retrieves a study user by the given user ID and study ID
// It returns a 200, 404, or 500 status code
func (s *StudyUserService) GetStudyUserByUserAndStudyId(studyId string, userId string) (models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER SERVICE: GetStudyUserByUserAndStudyId()")

	parsedUserId, parseUserIdErr := convertStringToUint8(userId)
	parsedStudyId, parseStudyIdErr := convertStringToUint8(studyId)
	if parseUserIdErr != nil || parseStudyIdErr != nil {
		axonlogger.WarningLogger.Println("Could not parse id", parseUserIdErr, parseStudyIdErr)
		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return studyUserRepositoryImpl.GetStudyUserByUserAndStudyId(parsedUserId, parsedStudyId)
}

// CreateStudyUser creates the given study user in the database.
// It returns a 201, 409, or 500 status code
func (s *StudyUserService) CreateStudyUser(studyUser *models.StudyUser) models.HTTPStatus {
	axonlogger.InfoLogger.Println("STUDYUSER SERVICE: CreateStudyUser()")

	studyUser.CompletionCode = ""
	studyUser.CurrentTaskIndex = 0

	return studyUserRepositoryImpl.CreateStudyUser(studyUser)
}

// UpdateStudyUser updates a studyuser.
// It returns a 200, 404, or 500 status code
func (s *StudyUserService) UpdateStudyUser(userId string, studyId string, studyUser *models.StudyUser) (models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER SERVICE: UpdateStudyUser()")

	parsedUserId, parseUserIdErr := convertStringToUint8(userId)
	parsedStudyId, parseStudyIdErr := convertStringToUint8(studyId)
	if parseUserIdErr != nil || parseStudyIdErr != nil {
		axonlogger.WarningLogger.Println("Could not parse id", parseUserIdErr, parseStudyIdErr)
		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	if parsedUserId != studyUser.UserID || parsedStudyId != studyUser.StudyID {
		axonlogger.WarningLogger.Println("Given id is not equivalent. User ID Param:", userId, "StudyUser User ID:", studyUser.UserID, "Study ID Param:", studyId, "StudyUser Study ID:", studyUser.StudyID)
		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
	}

	studyUserInDB, httpStatus := studyUserRepositoryImpl.GetStudyUserByUserAndStudyId(parsedUserId, parsedStudyId)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return models.StudyUser{}, httpStatus
	}

	studyUserInDB.Data = studyUser.Data
	studyUserInDB.DueDate = studyUser.DueDate
	studyUserInDB.HasAcceptedConsent = studyUser.HasAcceptedConsent
	studyUserInDB.Lang = studyUser.Lang

	// if the current task index is being modified, verify that this modification is allowed
	// We add this extra check to ensure that the current task index is in sync with the participant data recorded.
	if studyUserInDB.CurrentTaskIndex != studyUser.CurrentTaskIndex {
		if !allowStudyUserCurrentTaskIndexIncrement(studyUserInDB) {
			return models.StudyUser{}, models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
		}
		studyUserInDB.CurrentTaskIndex = studyUserInDB.CurrentTaskIndex + 1
	}

	if updateStudyUserHttpStatus := studyUserRepositoryImpl.UpdateStudyUser(&studyUserInDB); !common.HTTPRequestIsSuccessful(updateStudyUserHttpStatus.Status) {
		return models.StudyUser{}, updateStudyUserHttpStatus
	}
	return studyUserInDB, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// allowStudyUserCurrentTaskIndexIncrement returns true if the increment is allowed, and false otherwise.
// the increment is allowed if there exists ParticipantData for the given currentTaskIndex for the studyuser.
// i.e. ParticipantData.Data[studyUser.currentTaskIndex] should exist.
// This function also returns false if it encounters an error.
func allowStudyUserCurrentTaskIndexIncrement(studyUser models.StudyUser) bool {
	userIdAsString := common.ConvertUintToString(studyUser.UserID)

	_, httpStatus := participantDataRepositoryImpl.GetParticipantDataByStudyAndUserIdAndTaskOrder(
		studyUser.StudyID,
		userIdAsString,
		studyUser.CurrentTaskIndex,
	)

	if httpStatus.Status == http.StatusNotFound {
		return false
	} else if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("encountered an error while getting participant data", httpStatus)
		return false
	}

	return true
}

// GetStudyUserSummary returns a summary of all users and the studies that they are currently registered for.
// This includes users that have a currentTaskIndex of 0.
// It returns a 200, or 500 status code
func (s *StudyUserService) GetStudyUserSummary() ([]models.StudyUserSummary, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER SERVICE: GetStudyUserSummary()")

	allDbStudyUsers, httpStatus := studyUserRepositoryImpl.GetAllStudyUsers()
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return []models.StudyUserSummary{}, httpStatus
	}

	// create mapping of userID to a slice of study IDs
	var studyUsersMap = make(map[uint][]uint)
	for _, studyUser := range allDbStudyUsers {
		if value, ok := studyUsersMap[studyUser.UserID]; ok {
			studyUsersMap[studyUser.UserID] = append(value, studyUser.StudyID)
		} else {
			studyUsersMap[studyUser.UserID] = []uint{studyUser.StudyID}
		}
	}

	// transform the studyUser map into the Study User Summary model
	var studyUserSummary = make([]models.StudyUserSummary, len(studyUsersMap))
	index := 0
	for key, studiesSlice := range studyUsersMap {
		studyUserSummary[index].UserId = key
		studyUserSummary[index].Studies = studiesSlice
		index++
	}
	return studyUserSummary, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}
