package services

import (
	"errors"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyDataService struct{}

// UploadTaskData saves the given experiment data into a table
func (s *StudyDataService) UploadTaskData(participantData models.ParticipantData) models.HTTPStatus {
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