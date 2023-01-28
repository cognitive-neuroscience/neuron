package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

type ParticipantDataController struct{}

// CreateParticipantData creates a record containing participant data for a given task
func (s *ParticipantDataController) CreateParticipantData(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= PARTICIPANTDATA CONTROLLER: CreateParticipantData() =============")
	participantData := new(models.ParticipantData)

	if err := e.Bind(participantData); err != nil {
		axonlogger.WarningLogger.Println("Could not parse participant data details", err)
		return common.SendHTTPBadRequest(e)
	}
	httpStatus := participantDataServiceImpl.CreateParticipantData(*participantData)
	return e.JSON(httpStatus.Status, httpStatus)
}

// GetParticipantDataByStudyIdAndTaskOrder gets the participant data by the study id and task order
func (s *ParticipantDataController) GetParticipantDataByStudyIdAndTaskOrder(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= PARTICIPANTDATA CONTROLLER: CreateParticipantData() =============")
	studyId := e.Param("studyId")
	taskOrder := e.Param("taskOrder")

	taskData, httpStatus := participantDataServiceImpl.GetParticipantDataByStudyIdAndTaskOrder(studyId, taskOrder)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, taskData)
}
