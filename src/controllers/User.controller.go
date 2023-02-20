package controllers

import (
	"net/http"

	"github.com/labstack/echo/v4"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type UserController struct{}

// CreateUser saves the given user into the database
func (u *UserController) CreateUser(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= USER CONTROLLER: CreateUser() =============")

	user := new(models.User)
	role, getRoleIsOk := e.Get("role").(string)

	if !getRoleIsOk {
		axonlogger.WarningLogger.Println("Could not get role", role)
		return common.SendHTTPBadRequest(e)
	}

	if err := e.Bind(user); err != nil {
		return common.SendHTTPBadRequest(e)
	}
	httpStatus := userServiceImpl.CreateUser(role, user)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("CreateUser() failed")
	}
	return e.JSON(httpStatus.Status, httpStatus)
}

// GetUserById retrieves the user by the given id. The user must be logged in first,
// and the id of the logged in cookie must be the same as what is received in the param
func (u *UserController) GetUserById(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= USER CONTROLLER: GetUserById() =============")
	userCookieId, ok := e.Get("id").(string)
	userParamId := e.Param("userId")
	if !ok {
		axonlogger.ErrorLogger.Println("Could not parse id from context")
		return common.SendHTTPBadRequest(e)
	}
	if userCookieId != userParamId {
		axonlogger.ErrorLogger.Println("param user ID and cookie user ID not the same")
		return common.SendHTTPForbidden(e)
	}

	result, httpStatus := userServiceImpl.GetUserById(userParamId)
	if common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return e.JSON(httpStatus.Status, result)
	}

	axonlogger.ErrorLogger.Println("GetUserById() failed")
	return e.JSON(httpStatus.Status, httpStatus)

}

// GetUsersByOrganizationId retrieves all of the given members and guests for a given organization
func (u *UserController) GetUsersByOrganizationId(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= USER CONTROLLER: GetUsersByOrganizationId() =============")

	queryParam := e.QueryParam("organizationId")
	userId, getUserIdIsOk := e.Get("id").(string)
	if !getUserIdIsOk {
		axonlogger.WarningLogger.Println("Could not get user id", userId)
		return common.SendHTTPBadRequest(e)
	}

	if queryParam == "" {
		axonlogger.ErrorLogger.Println("Could not get query param from URL")
		return common.SendHTTPBadRequest(e)
	}
	result, httpStatus := userServiceImpl.GetUsersByOrganizationId(queryParam, userId)

	if common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return e.JSON(httpStatus.Status, result)
	}

	axonlogger.ErrorLogger.Println("GetUsersByOrganizationId() failed")
	return e.JSON(httpStatus.Status, httpStatus)
}

// UpdateUser updates the given user
func (u *UserController) UpdateUser(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= USER CONTROLLER: UpdateUser() =============")

	userCookieId, ok := e.Get("id").(string)
	userParamId := e.Param("userId")
	if !ok {
		axonlogger.ErrorLogger.Println("Could not parse id from context")
		return common.SendHTTPBadRequest(e)
	}
	if userCookieId != userParamId {
		axonlogger.ErrorLogger.Println("param user ID and cookie user ID not the same")
		return common.SendHTTPForbidden(e)
	}

	receivedUser := new(models.User)
	if err := e.Bind(receivedUser); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		return common.SendHTTPBadRequest(e)
	}

	user, httpStatus := userServiceImpl.UpdateUser(userParamId, receivedUser)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("UpdateUser() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, user)
}

// GetStudyUsersByUserId retrieves all study users for the given user id
func (u *UserController) GetStudyUsersByUserId(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= USER CONTROLLER: GetStudyUsersByUserId() =============")

	userParamId := e.Param("userId")
	results, httpStatus := studyUserServiceImpl.GetAllStudyUsersByUserId(userParamId)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("GetStudyUsersByUserId() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}

	return common.SendHTTPOkWithBody(e, results)
}

// DeleteUserById deletes the user with a given id. This route is only for deleting guests
func (u *UserController) DeleteUserById(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= USER CONTROLLER: DeleteUserById() =============")

	userParamId := e.Param("userId")
	httpStatus := userServiceImpl.DeleteUserByID(userParamId)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("GetStudyUsersByUserId() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}

	return common.SendHTTPOk(e)
}

// UpdateUserPassword updates the users password with a new salted and hashed password
func (u *UserController) UpdateUserPassword(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= USER CONTROLLER: UpdateUserPassword() =============")

	changePasswordStruct := struct {
		Email             string `json:"email"`
		TemporaryPassword string `json:"temporaryPassword"`
		NewPassword       string `json:"newPassword"`
	}{
		"",
		"",
		"",
	}

	if err := e.Bind(&changePasswordStruct); err != nil {
		axonlogger.WarningLogger.Println("Could not parse change password details", err)
		return common.SendHTTPBadRequest(e)
	}
	httpStatus := userServiceImpl.UpdateUserPassword(changePasswordStruct.Email, changePasswordStruct.TemporaryPassword, changePasswordStruct.NewPassword)

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		axonlogger.ErrorLogger.Println("UpdateUserPassword() failed")
		return e.JSON(httpStatus.Status, httpStatus)
	}

	return common.SendHTTPOk(e)
}

// SendForgotPasswordEmail sends an email and sets the changePasswordRequired flag to true for the user
func (u *UserController) HandleForgotPassword(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= USER CONTROLLER: SendForgotPasswordEmail() =============")

	emailStruct := struct {
		Email string `json:"email"`
	}{
		"",
	}

	if err := e.Bind(&emailStruct); err != nil {
		axonlogger.WarningLogger.Println("Could not parse email", err)
		return common.SendHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
	}

	sendEmailHttpStatus := userServiceImpl.HandleForgotPassword(emailStruct.Email)
	if !common.HTTPRequestIsSuccessful(sendEmailHttpStatus.Status) {
		axonlogger.ErrorLogger.Println("SendForgotPasswordEmail() failed")
	}

	return e.JSON(sendEmailHttpStatus.Status, sendEmailHttpStatus)
}
