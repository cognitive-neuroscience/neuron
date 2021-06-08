package controllers

import (
	"errors"

	"github.com/labstack/echo/v4"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type UserController struct{}

// SaveUser saves a given user in the DB
// this route does not require a JWT as users may be creating an account
func (u *UserController) SaveUser(e echo.Context) error {
	user := new(models.User)

	if err := e.Bind(user); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		common.SendHTTPBadRequest(e)
		return errors.New("could not parse user details")
	}
	result := userServiceImpl.SaveUser(user)
	return common.SendGenericHTTPWithMessage(e, result)
}

// DeleteUserById deletes the guest with the given email
func (u *UserController) DeleteUserById(e echo.Context) error {
	id := e.Param("id")
	result := userServiceImpl.DeleteGuestById(id)
	return common.SendGenericHTTPWithMessage(e, result)
}

// // GetCompletionCode return the completion code associated with the given experimentUser
// func GetCompletionCode(c *fiber.Ctx) {
// 	userID := c.Params("userid")
// 	code := c.Params("code")

// 	axonlogger.InfoLogger.Println("Getting completion code for", userID, code)

// 	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
// 	if common.IsAllowed(c, authorizedRoles) {
// 		result, err := services.GetCompletionCode(userID, code)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("Could not get completion code", userID, code)
// 			common.SendHTTPStatusServiceUnavailable(c)
// 			return
// 		}
// 		c.JSON(result)
// 		return
// 	}
// 	axonlogger.WarningLogger.Println("Not authorized", userID, code)
// 	common.SendHTTPForbidden(c)
// }

// SaveGuest
func (u *UserController) SaveGuest(e echo.Context) error {
	user := new(models.User)

	user.Password = "guest"
	user.Role = common.GUEST

	if err := e.Bind(user); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", err)
		common.SendHTTPBadRequest(e)
		return errors.New("could not parse user details")
	}
	result := userServiceImpl.SaveUser(user)
	return common.SendGenericHTTPWithMessage(e, result)
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

// // UpdateUser updates a given user in the DB
// // TODO: Impement this
// func UpdateUser(c *fiber.Ctx) {
// 	services.AuthenticateToken(c)
// 	c.Write([]byte("OK"))
// }
