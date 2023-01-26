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
	axonlogger.InfoLogger.Println("STUDY CONTROLLER: CreateStudy()")

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

func (s *StudyController) GetStudyById(e echo.Context) error {
	axonlogger.InfoLogger.Println("STUDY CONTROLLER: GetStudyById()")

	studyParamId := e.Param("studyId")

	study, httpStatus := studyServiceImpl.GetStudyById(studyParamId)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("GetStudyById() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}

	return common.SendHTTPOkWithBody(e, study)
}

// // UpdateStudy
// func (s *StudyController) UpdateStudy(e echo.Context) error {
// 	shouldIncludeTasksUpdate := e.QueryParam("includetasksupdate")
// 	study := new(models.Study)
// 	if err := e.Bind(study); err != nil {
// 		axonlogger.WarningLogger.Println("Could not parse study details", err)
// 		return common.SendHTTPBadRequest(e)
// 	}
// 	resultHttpStatus := studyServiceImpl.UpdateStudy(study, shouldIncludeTasksUpdate)
// 	return common.SendHTTPWithMessage(e, resultHttpStatus)
// }

// // SaveStudy saves the given study into the database along with the relevant study tasks
// func (s *StudyController) SaveStudy(e echo.Context) error {
// 	study := new(models.Study)
// 	if err := e.Bind(study); err != nil {
// 		axonlogger.WarningLogger.Println("Could not parse study details", err)
// 		return common.SendHTTPBadRequest(e)
// 	}
// 	result := studyServiceImpl.SaveStudy(study)
// 	return common.SendHTTPWithMessage(e, result)
// }

// func (s *StudyController) GetAllStudies(e echo.Context) error {
// 	role, ok := e.Get("role").(string)
// 	if !ok {
// 		axonlogger.ErrorLogger.Println("None or invalid role found when getting study by study id")
// 		return common.SendHTTPStatusInternalServerError(e)
// 	}
// 	studies, err := studyServiceImpl.GetAllStudies(role)
// 	if err != nil {
// 		return common.SendHTTPStatusServiceUnavailable(e)
// 	}
// 	return common.SendHTTPOkWithBody(e, studies)
// }

// func (s *StudyController) DeleteStudyById(e echo.Context) error {
// 	id := e.Param("studyId")
// 	httpStatus := studyServiceImpl.DeleteStudyById(id)
// 	return common.SendHTTPWithMessage(e, httpStatus)
// }

// func (s *StudyController) GetStudyById(e echo.Context) error {
// 	studyId := e.Param("studyId")
// 	role, ok := e.Get("role").(string)
// 	if !ok {
// 		axonlogger.ErrorLogger.Println("None or invalid role found when getting study by study id")
// 		return common.SendHTTPStatusInternalServerError(e)
// 	}
// 	study, httpStatus := studyServiceImpl.GetStudyById(studyId, role)
// 	if common.HTTPRequestIsSuccessful(httpStatus.Status) {
// 		return common.SendHTTPWithPayload(e, httpStatus, study)
// 	} else {
// 		return common.SendHTTPWithMessage(e, httpStatus)
// 	}
// }
