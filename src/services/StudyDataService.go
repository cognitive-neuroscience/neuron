package services

import (
	"errors"
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyDataService struct{}

// UploadTaskData saves the given experiment data into a table
func (s *StudyDataService) UploadTaskData(participantData models.ParticipantData) models.HTTPStatus {
	userServiceImpl := UserService{}

	if participantData.ParticipantType == "ACCOUNTHOLDER" {
		studyUser, err := userServiceImpl.GetStudyUserById(participantData.UserID, participantData.StudyID)
		if err != nil {
			axonlogger.WarningLogger.Println(err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was a problem uploading the task data"}
		}
		studyUser.CurrentTaskIndex = studyUser.CurrentTaskIndex + 1
		if status := userServiceImpl.UpdateStudyUser(studyUser); status.Status != http.StatusOK {
			axonlogger.WarningLogger.Println(err)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was a problem uploading the task data"}
		}
	}
	return studyDataRepositoryImpl.UploadTaskData(participantData)
}

// GetTaskData gets task data given a study id and task order
func (s *StudyDataService) GetTaskData(studyIdFromPath string, taskOrderFromPath string) ([]models.ParticipantData, error) {
	studyId, err := convertStringToUint8(studyIdFromPath)
	if err != nil {
		axonlogger.WarningLogger.Println(err)
		return []models.ParticipantData{}, errors.New("could not get participant data")
	}
	taskOrder, err := convertStringToUint8(taskOrderFromPath)
	if err != nil {
		axonlogger.WarningLogger.Println(err)
		return []models.ParticipantData{}, errors.New("could not get participant data")
	}

	return studyDataRepositoryImpl.GetTaskData(studyId, taskOrder)
}

func (s *StudyDataService) UploadFeedback(feedback *models.FeedbackQuestionnaireResponse) models.HTTPStatus {
	return studyDataRepositoryImpl.UploadFeedback(feedback)
}

func (s *StudyDataService) GetFeedbackForStudyId(studyIdFromPath string) ([]models.FeedbackQuestionnaireResponse, error) {
	studyId, err := convertStringToUint8(studyIdFromPath)
	if err != nil {
		axonlogger.WarningLogger.Println(err)
		return []models.FeedbackQuestionnaireResponse{}, errors.New("could not get feedback data")
	}
	return studyDataRepositoryImpl.GetFeedbackForStudyId(studyId)
}
