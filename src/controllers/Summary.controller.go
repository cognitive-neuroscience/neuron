package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/labstack/echo/v4"
)

type SummaryController struct{}

// GetStudyUsersSummary gets the study user summary which is a mapping between the user id and study ids that the user is registered to
func (s *SummaryController) GetStudyUsersSummary(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= SUMMARY CONTROLLER: GetStudyUsersSummary() =============")

	summary, httpStatus := studyUserServiceImpl.GetStudyUserSummary()
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("GetStudyUsersSummary() failed")
	}
	return common.SendHTTPOkWithBody(e, summary)
}
