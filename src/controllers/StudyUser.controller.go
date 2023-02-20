package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

type StudyUserController struct{}

// CreateStudyUser creates a study user
func (s *StudyUserController) CreateStudyUser(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDYUSER CONTROLLER: CreateStudyUser() =============")

	studyUser := new(models.StudyUser)
	if err := e.Bind(&studyUser); err != nil {
		return common.SendHTTPBadRequest(e)
	}
	httpStatus := studyUserServiceImpl.CreateStudyUser(studyUser)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.InfoLogger.Println("CreateStudyUser() failed")
	}
	return e.JSON(httpStatus.Status, httpStatus)
}

// UpdateStudyUser updates the given study user
func (s *StudyUserController) UpdateStudyUser(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDYUSER CONTROLLER: UpdateStudyUser() =============")

	userParamId := e.Param("userId")
	studyParamId := e.Param("studyId")

	studyUser := new(models.StudyUser)
	if err := e.Bind(&studyUser); err != nil {
		return common.SendHTTPBadRequest(e)
	}
	result, httpStatus := studyUserServiceImpl.UpdateStudyUser(userParamId, studyParamId, studyUser)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.InfoLogger.Println("UpdateStudyUser() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, result)
}
