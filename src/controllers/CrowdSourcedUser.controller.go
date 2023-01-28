package controllers

import (
	"net/http"
	"os"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

// CrowdSourcedUsers address the use case where we want to store data from participants from platforms like Mturk or Prolific.
// In these cases, we do not want to store their emails, but simply want to create a record associated with the ID and data.
type CrowdSourcedUserController struct{}

// CreateCrowdSourcedUserAndLogin creates a crowdsourced user and logs them in automatically
func (c *CrowdSourcedUserController) CreateCrowdSourcedUserAndLogin(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= CROWDSOURCED CONTROLLER: CreateCrowdSourcedUserAndLogin() =============")

	crowdSourcedUser := new(models.CrowdSourcedUser)

	// 1: parse input into crowdsourced user model
	if err := e.Bind(crowdSourcedUser); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPBadRequest(e)
	}

	// 2: create new crowdsourced user in database
	saveCrowdSourcedUserHttpStatus := crowdSourcedUserServiceImpl.CreateCrowdSourcedUser(*crowdSourcedUser)
	if !common.HTTPRequestIsSuccessful(saveCrowdSourcedUserHttpStatus.Status) {
		axonlogger.ErrorLogger.Println("Error creating a new crowdsourced user:", saveCrowdSourcedUserHttpStatus)
		return e.JSON(saveCrowdSourcedUserHttpStatus.Status, saveCrowdSourcedUserHttpStatus)
	}

	// 3: create a JWT
	tokenString, err := tokenServiceImpl.CreateToken(crowdSourcedUser.ParticipantID, "", common.PARTICIPANT)
	if err != nil {
		axonlogger.ErrorLogger.Println("Error creating a JWT for user", crowdSourcedUser, err)
		return common.SendHTTPStatusInternalServerError(e)
	}

	cookie := new(http.Cookie)
	cookie.Name = "token"
	cookie.Value = tokenString
	cookie.HttpOnly = true // not accessible by javascript
	cookie.Secure = true   // sent over https only

	env, exists := os.LookupEnv("ENV")
	if exists {
		if env == "DEV" {
			cookie.Domain = "localhost"
		} else if env == "PROD" {
			cookie.Domain = "psharplab.campus.mcgill.ca"
		}
	}

	cookie.SameSite = http.SameSiteStrictMode
	e.SetCookie(cookie)

	axonlogger.InfoLogger.Println("user registered with set cookie", crowdSourcedUser.ParticipantID)
	return common.SendHTTPStatusCreated(e)
}

// GetCrowdSourcedUserByCrowdSourcedUserAndStudyId gets a crowd sourced user by the given id
func (c *CrowdSourcedUserController) GetCrowdSourcedUserByCrowdSourcedUserAndStudyId(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= CROWDSOURCED CONTROLLER: GetCrowdSourcedUserByCrowdSourcedUserAndStudyId() =============")
	crowdSourcedUserParamId := e.Param("crowdSourcedUserId")
	studyId := e.Param("studyId")

	crowdSourcedUser, httpStatus := crowdSourcedUserServiceImpl.GetCrowdSourcedUserByCrowdSourcedUserAndStudyId(crowdSourcedUserParamId, studyId)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("GetCrowdSourcedUserByCrowdSourcedUserAndStudyId() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, crowdSourcedUser)
}

// HandleSetComplete sets a random string as the completion code
func (c *CrowdSourcedUserController) HandleSetComplete(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= CROWDSOURCED CONTROLLER: HandleSetComplete() =============")

	crowdSourcedUser := new(models.CrowdSourcedUser)
	if err := e.Bind(crowdSourcedUser); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPBadRequest(e)
	}
	updatedCrowdSourcedUser, httpStatus := crowdSourcedUserServiceImpl.HandleSetComplete(*crowdSourcedUser)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("HandleSetComplete() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, updatedCrowdSourcedUser)
}
