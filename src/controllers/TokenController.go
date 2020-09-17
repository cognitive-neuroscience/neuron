package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/gofiber/fiber"
)

// ValidateToken represents the entry point for the Token API, validating a given token
func ValidateToken(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	token := new(models.TokenPayload)
	if err := c.BodyParser(token); err != nil {
		common.SendHTTPBadRequest(c)
		return
	}
	allowed := common.IsAllowed(c, authorizedRoles)
	c.JSON(allowed)
}
