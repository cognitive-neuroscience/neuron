package controllers

import (
	"net/http"

	"github.com/labstack/echo/v4"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type UserController struct{}

// ChangePassword takes in an email, temp password, and new password and changes the password
func (u *UserController) ChangePassword(e echo.Context) error {
	editPasswordStruct := struct {
		Email             string `json:"email"`
		TemporaryPassword string `json:"temporaryPassword"`
		NewPassword       string `json:"newPassword"`
	}{
		"",
		"",
		"",
	}

	if err := e.Bind(&editPasswordStruct); err != nil {
		axonlogger.WarningLogger.Println("Could not parse edit password details", err)
		return common.SendHTTPBadRequest(e)
	}
	httpStatus := userServiceImpl.ChangePassword(editPasswordStruct.Email, editPasswordStruct.TemporaryPassword, editPasswordStruct.NewPassword)
	return common.SendHTTPWithMessage(e, httpStatus)
}

// SaveUser saves a given user in the DB
// this route does not require a JWT as users may be creating an account
func (u *UserController) SaveUser(e echo.Context) error {
	user := new(models.User)

	if err := e.Bind(user); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPBadRequest(e)
	}
	result := userServiceImpl.SaveUser(user)
	return common.SendHTTPWithMessage(e, result)
}

// SaveTurker saves the given turker into the DB
func (u *UserController) SaveCrowdsourcedUser(e echo.Context) error {
	var crowdsourcedUser = new(models.CrowdSourcedUser)
	if err := e.Bind(crowdsourcedUser); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPBadRequest(e)
	}

	result := userServiceImpl.SaveCrowdsourcedUser(crowdsourcedUser)
	if result.Status != http.StatusCreated {
		return common.SendHTTPWithMessage(e, result)
	}

	// 4: create a jwt
	tokenString, err := tokenServiceImpl.CreateToken(crowdsourcedUser.ParticipantID, "", common.PARTICIPANT)
	if err != nil {
		axonlogger.ErrorLogger.Println("Error creating a JWT for user", crowdsourcedUser.ParticipantID, err)
		return common.SendHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error registering the participant"})
	}

	cookie := new(http.Cookie)
	cookie.Name = "token"
	cookie.Value = tokenString
	cookie.HttpOnly = true // not accessible by javascript
	cookie.Secure = true   // sent over https only
	// cookie.Domain = "psharplab.campus.mcgill.ca" // only accept cookies from same domain
	cookie.SameSite = http.SameSiteStrictMode
	e.SetCookie(cookie)

	axonlogger.InfoLogger.Println("user registered with set cookie", crowdsourcedUser.ParticipantID)
	return common.SendHTTPOkWithBody(e, models.CrowdSourcedUser{
		ParticipantID: crowdsourcedUser.ParticipantID,
	})
}

func (u *UserController) GetCrowdSourcedUsersByStudyId(e echo.Context) error {
	id := e.Param("studyId")
	result, err := userServiceImpl.GetCrowdSourcedUsersByStudyId(id)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not parse study id from params", err)
		return common.SendHTTPBadRequest(e)
	}
	return common.SendHTTPOkWithBody(e, result)
}

// DeleteUserById deletes the guest with the given email
func (u *UserController) DeleteUserById(e echo.Context) error {
	id := e.Param("id")
	result := userServiceImpl.DeleteGuestById(id)
	return common.SendHTTPWithMessage(e, result)
}

// // GetStudyUser gets an individual study user grabbing the id stored in the jwt within the cookie
// func (u *UserController) GetStudyUser(e echo.Context) error {
// 	id := e.Get("id").(string)
// 	result, err := userServiceImpl.GetStudyUserById(id)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("Could not parse id from context", err)
// 		return common.SendHTTPBadRequest(e)
// 	}
// 	return common.SendHTTPOkWithBody(e, result)
// }

// GetStudyUsers gets all study users by the given study id
func (u *UserController) GetStudyUsersForStudy(e echo.Context) error {
	id := e.Param("studyId")
	result, err := userServiceImpl.GetStudyUsersByStudyId(id)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not parse study id from params", err)
		return common.SendHTTPBadRequest(e)
	}
	return common.SendHTTPOkWithBody(e, result)
}

// GetAllStudyUsers gets all study users by the given logged in user id
func (u *UserController) GetAllStudyUsersForLoggedInUser(e echo.Context) error {
	userId, ok := e.Get("id").(string)

	if !ok {
		axonlogger.ErrorLogger.Println("Could not get userId from context")
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	result, err := userServiceImpl.GetAllStudyUsersByUserId(userId)
	if err != nil {
		return common.SendHTTPBadRequest(e)
	}
	return common.SendHTTPOkWithBody(e, result)
}

func (u *UserController) SaveStudyUser(e echo.Context) error {
	studyUser := new(models.StudyUser)

	if err := e.Bind(studyUser); err != nil {
		axonlogger.WarningLogger.Println("Could not parse study user details", err)
		return common.SendHTTPBadRequest(e)
	}
	result := userServiceImpl.SaveStudyUser(*studyUser)
	return common.SendHTTPWithMessage(e, result)
}

func (u *UserController) UpdateStudyUser(e echo.Context) error {
	studyUser := new(models.StudyUser)
	if err := e.Bind(studyUser); err != nil {
		axonlogger.WarningLogger.Println("Could not parse study user details", err)
		return common.SendHTTPBadRequest(e)
	}
	return common.SendHTTPWithMessage(e, userServiceImpl.UpdateStudyUser(*studyUser))
}

// SaveGuest
func (u *UserController) SaveGuest(e echo.Context) error {
	user := new(models.User)

	user.Password = "guest"
	user.Role = common.GUEST

	if err := e.Bind(user); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPBadRequest(e)
	}
	result := userServiceImpl.SaveUser(user)
	return common.SendHTTPWithMessage(e, result)
}

// GetGuests retrieves all guests from the DB
func (u *UserController) GetGuests(e echo.Context) error {
	result, err := userServiceImpl.GetGuests()
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not get guests", err)
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	return common.SendHTTPOkWithBody(e, result)
}

func (u *UserController) UpdateUser(e echo.Context) error {
	receivedUser := new(models.User)
	if err := e.Bind(receivedUser); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPBadRequest(e)
	}
	result := userServiceImpl.UpdateUser(*receivedUser)
	return common.SendHTTPWithMessage(e, result)
}

func (u *UserController) GetUser(e echo.Context) error {
	email, ok := e.Get("email").(string)
	if !ok {
		axonlogger.ErrorLogger.Println("Could not parse email from context")
		return common.SendHTTPStatusServiceUnavailable(e)
	}

	result, err := userServiceImpl.GetUserByEmail(email)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not get user", err)
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	return common.SendHTTPOkWithBody(e, result)
}

func (u *UserController) GetCrowdsourcedUser(e echo.Context) error {
	id, ok := e.Get("id").(string)
	if !ok {
		axonlogger.ErrorLogger.Println("Could not parse id from context")
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	studyId := e.Param("studyId")

	result, err := userServiceImpl.GetCrowdsourcedUserById(id, studyId)
	if err != nil {
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	return common.SendHTTPOkWithBody(e, result)
}

func (u *UserController) RegisterCrowdsourcedUserCompletion(e echo.Context) error {
	// only crowdsourced users will be marked as complete
	participantId, ok := e.Get("id").(string)
	if !ok {
		axonlogger.ErrorLogger.Println("Could not parse participant id from context")
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	studyId := e.Param("studyId")

	completionCode, err := userServiceImpl.RegisterCrowdsourcedUserCompletion(participantId, studyId)
	if err != nil {
		axonlogger.ErrorLogger.Println("could not register completion", participantId)
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	return common.SendHTTPOkWithBody(e, completionCode)
}

// // MarkAsComplete marks the given experimentUser as complete
// func MarkAsComplete(c *fiber.Ctx) {

// 	experimentUser := new(models.ExperimentUser)
// 	if err := c.BodyParser(experimentUser); err != nil {
// 		axonlogger.WarningLogger.Println("Could not parse user details", experimentUser)
// 		common.SendHTTPBadRequest(c)
// 		return
// 	}

// 	axonlogger.InfoLogger.Println("Marking complete", experimentUser.ID, experimentUser.Code)

// 	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
// 	if common.IsAllowed(c, authorizedRoles) {
// 		result := services.MarkAsComplete(*experimentUser)
// 		common.SendGenericHTTPModel(c, result)
// 		return
// 	}
// 	axonlogger.WarningLogger.Println("Not authorized", experimentUser.ID, experimentUser.Code)
// 	common.SendHTTPForbidden(c)
// 	return
// }
