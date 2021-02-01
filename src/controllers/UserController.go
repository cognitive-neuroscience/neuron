package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// SaveUser saves a given user in the DB
// this route does not require a JWT as users may be creating an account
func SaveUser(c *fiber.Ctx) {
	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", user.Email)
		common.SendHTTPBadRequest(c)
	}
	axonlogger.InfoLogger.Println("Saving", user.Email)
	result := services.SaveUser(user)
	common.SendGenericHTTPModel(c, result)
	return
}

// DeleteUserByEmail deletes the guest with the given email
func DeleteUserByEmail(c *fiber.Ctx) {
	email := c.Params("email")

	axonlogger.InfoLogger.Println("Deleting user", email)

	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		result := services.DeleteUserByEmail(email)
		common.SendGenericHTTPModel(c, result)
		return
	}
	axonlogger.WarningLogger.Println("Not authorized")
	common.SendHTTPForbidden(c)
}

// GetCompletionCode return the completion code associated with the given experimentUser
func GetCompletionCode(c *fiber.Ctx) {
	userID := c.Params("userid")
	code := c.Params("code")

	axonlogger.InfoLogger.Println("Getting completion code for", userID, code)

	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		result, err := services.GetCompletionCode(userID, code)
		if err != nil {
			axonlogger.ErrorLogger.Println("Could not get completion code", userID, code)
			common.SendHTTPStatusServiceUnavailable(c)
			return
		}
		c.JSON(result)
		return
	}
	axonlogger.WarningLogger.Println("Not authorized", userID, code)
	common.SendHTTPForbidden(c)
}

// GetGuests retrieves all guests from the DB
func GetGuests(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		result, err := services.GetGuests()
		if err != nil {
			axonlogger.ErrorLogger.Println("Could not get guests", err)
			common.SendHTTPStatusServiceUnavailable(c)
			return
		}
		c.JSON(result)
		return
	}
	axonlogger.WarningLogger.Println("Not authorized")
	common.SendHTTPForbidden(c)
}

// MarkAsComplete marks the given experimentUser as complete
func MarkAsComplete(c *fiber.Ctx) {

	experimentUser := new(models.ExperimentUser)
	if err := c.BodyParser(experimentUser); err != nil {
		axonlogger.WarningLogger.Println("Could not parse user details", experimentUser)
		common.SendHTTPBadRequest(c)
		return
	}

	axonlogger.InfoLogger.Println("Marking complete", experimentUser.ID, experimentUser.Code)

	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		result := services.MarkAsComplete(*experimentUser)
		common.SendGenericHTTPModel(c, result)
		return
	}
	axonlogger.WarningLogger.Println("Not authorized", experimentUser.ID, experimentUser.Code)
	common.SendHTTPForbidden(c)
	return
}

// UpdateUser updates a given user in the DB
// TODO: Impement this
func UpdateUser(c *fiber.Ctx) {
	services.AuthenticateToken(c)
	c.Write([]byte("OK"))
}
