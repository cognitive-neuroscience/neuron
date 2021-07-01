package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

type StudyDataController struct{}

// UploadTaskData represents the entry point for the Upload API
func (s *StudyDataController) UploadTaskData(e echo.Context) error {
	participantData := new(models.ParticipantData)

	if err := e.Bind(participantData); err != nil {
		axonlogger.WarningLogger.Println("Could not parse participant data details", err)
		return common.SendHTTPBadRequest(e)
	}
	result := studyDataServiceImpl.UploadTaskData(*participantData)
	return common.SendGenericHTTPWithMessage(e, result)
}

func (s *StudyDataController) GetTaskData(e echo.Context) error {
	studyId := e.Param("studyId")
	taskOrder := e.Param("taskOrder")

	taskData, err := studyDataServiceImpl.GetTaskData(studyId, taskOrder)
	if err != nil {
		return common.SendGenericHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusInternalServerError, Message: err.Error()})
	}
	return common.SendHTTPOkWithBody(e, taskData)
}

func (s *StudyDataController) UploadFeedback(e echo.Context) error {
	var feedback = new(models.FeedbackQuestionnaireResponse)
	if err := e.Bind(feedback); err != nil {
		axonlogger.WarningLogger.Println("Could not parse feedback", err)
		return common.SendHTTPBadRequest(e)
	}
	return common.SendGenericHTTPWithMessage(e, studyDataServiceImpl.UploadFeedback(feedback))
}
