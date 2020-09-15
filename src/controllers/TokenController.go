package controllers

import (
	"net/http"
	"strconv"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// TokenController represents the entry point for the Token API

// ValidateToken represents the entry point for the Token API, validating a given token
func ValidateToken(c *fiber.Ctx) {
	token := new(models.TokenPayload)
	if err := c.BodyParser(token); err != nil {
		c.SendStatus(http.StatusBadRequest)
		return
	}

	isAuthentic := services.AuthenticateToken(c)
	c.Status(http.StatusOK).JSON(models.HTTPErrorStatus{Status: http.StatusOK, Message: strconv.FormatBool(isAuthentic)})
}
