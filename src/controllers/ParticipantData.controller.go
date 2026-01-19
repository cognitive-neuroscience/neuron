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
	axonlogger.InfoLogger.Println("============= PARTICIPANTDATA CONTROLLER: GetParticipantDataByStudyIdAndTaskOrder() =============")
	studyId := e.Param("studyId")
	taskOrder := e.Param("taskOrder")

	userId, ok := e.Get("id").(string)
	if !ok {
		return common.SendHTTPBadRequest(e)
	}

	taskData, httpStatus := participantDataServiceImpl.GetParticipantDataByStudyIdAndTaskOrder(studyId, taskOrder, userId)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, taskData)
}

// GetParticipantDataByStudyIdWithFilters gets participant data for a study with optional metadata filters via query parameters
func (s *ParticipantDataController) GetParticipantDataByStudyIdWithFilters(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= PARTICIPANTDATA CONTROLLER: GetParticipantDataByStudyIdWithFilters() =============")
	studyId := e.Param("studyId")

	userId, ok := e.Get("id").(string)
	if !ok {
		return common.SendHTTPBadRequest(e)
	}

	// Extract all query parameters as filters
	// This makes the endpoint extensible - any query param will be treated as a metadata filter
	filters := make(map[string]string)
	queryParams := e.QueryParams()
	for key, values := range queryParams {
		if len(values) > 0 {
			// Use the first value if multiple values are provided for the same key
			filters[key] = values[0]
		}
	}

	participantData, httpStatus := participantDataServiceImpl.GetParticipantDataByStudyIdWithFilters(studyId, userId, filters)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, participantData)
}
