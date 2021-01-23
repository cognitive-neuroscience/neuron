package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/gofiber/fiber"
)

// ValidateToken represents the entry point for the Token API, validating a given token
func ValidateToken(c *fiber.Ctx) {
	token := new(models.TokenPayload)
	if err := c.BodyParser(token); err != nil {
		axonlogger.WarningLogger.Println("Could not parse token:", token)
		common.SendHTTPBadRequest(c)
		return
	}

	axonlogger.InfoLogger.Println("Validating the given JWT", token)

	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	c.JSON(common.IsAllowed(c, authorizedRoles))
	return
}
