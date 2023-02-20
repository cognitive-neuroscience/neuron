package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

type StudyController struct{}

// CreateStudy creates a study
func (s *StudyController) CreateStudy(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDY CONTROLLER: CreateStudy() =============")

	study := new(models.Study)
	if err := e.Bind(study); err != nil {
		axonlogger.WarningLogger.Println("Could not parse study details", err)
		return common.SendHTTPBadRequest(e)
	}

	httpStatus := studyServiceImpl.CreateStudy(study)

	if ok := common.HTTPRequestIsSuccessful(httpStatus.Status); !ok {
		axonlogger.ErrorLogger.Println("CreateUser() failed")
	}
	return e.JSON(httpStatus.Status, httpStatus)
}

// GetStudyById gets a study by the given id
func (s *StudyController) GetStudyById(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDY CONTROLLER: GetStudyById() =============")

	studyParamId := e.Param("studyId")
	study, httpStatus := studyServiceImpl.GetStudyById(studyParamId)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("GetStudyById() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}

	return common.SendHTTPOkWithBody(e, study)
}

// GetCrowdSourcedUsersByStudyId gets all the crowdsourced users for a given study
func (s *StudyController) GetCrowdSourcedUsersByStudyId(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDY CONTROLLER: GetCrowdSourcedUsersByStudyId() =============")

	studyId := e.Param("studyId")

	crowdSourcedUsers, httpStatus := crowdSourcedUserServiceImpl.GetCrowdSourcedUsersByStudyId(studyId)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.InfoLogger.Println("GetCrowdSourcedUsersByStudyId() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, crowdSourcedUsers)
}

// GetStudiesByOrganization gets all studies for a given organization.
// Organizations cannot get studies from a different organization.
func (s *StudyController) GetStudiesByOrganization(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDY CONTROLLER: GetStudiesByOrganization() =============")

	userId, getUserIdIsOk := e.Get("id").(string)
	if !getUserIdIsOk {
		return common.SendHTTPBadRequest(e)
	}
	organizationId := e.QueryParam("organizationId")
	if organizationId == "" {
		axonlogger.ErrorLogger.Println("Could not get query param from URL")
		return common.SendHTTPBadRequest(e)
	}
	studies, httpStatus := studyServiceImpl.GetStudiesByOrganizationId(organizationId, userId)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, studies)
}

// ArchiveStudyById sets the deletedAt field to the current date effectively deleting it from a researcher perspective.
// This allows us to maintain a link between "deleted studies" and existing participant data.
// Maybe in the future, allow for study deletion and cascade this affect to participant data?
func (s *StudyController) ArchiveStudyById(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDY CONTROLLER: ArchiveStudyById() =============")

	studyId := e.Param("studyId")
	userId, getUserIdIsOk := e.Get("id").(string)
	role, getRoleIsOk := e.Get("role").(string)

	if !getUserIdIsOk || !getRoleIsOk {
		return common.SendHTTPBadRequest(e)
	}
	httpStatus := studyServiceImpl.ArchiveStudyById(studyId, userId, role)
	return e.JSON(httpStatus.Status, httpStatus)
}

// UpdateStudy updates the study
func (s *StudyController) UpdateStudy(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDY CONTROLLER: UpdateStudy() =============")

	userId, getUserIdIsOk := e.Get("id").(string)
	if !getUserIdIsOk {
		return common.SendHTTPBadRequest(e)
	}

	study := new(models.Study)
	if err := e.Bind(&study); err != nil {
		axonlogger.ErrorLogger.Println("Could not bind study into study object", err)
		return common.SendHTTPBadRequest(e)
	}

	studyId := e.Param("studyId")
	updateTasksFlag := e.QueryParam("updateTasks")
	if updateTasksFlag == "" {
		axonlogger.ErrorLogger.Println("Could not get query param from URL")
		return common.SendHTTPBadRequest(e)
	}

	updatedStudy, httpStatus := studyServiceImpl.UpdateStudy(userId, studyId, updateTasksFlag, study)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.InfoLogger.Println("UpdateStudy() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, updatedStudy)
}

// GetStudyUsersByStudyId
func (s *StudyController) GetStudyUsersByStudyId(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= STUDY CONTROLLER: GetStudyUsersByStudyId() =============")

	studyParamId := e.Param("studyId")
	results, httpStatus := studyUserServiceImpl.GetAllStudyUsersByStudyId(studyParamId)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("GetStudyUsersByStudyId() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}

	return common.SendHTTPOkWithBody(e, results)
}
