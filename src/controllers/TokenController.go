package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/gofiber/fiber"
)

// // TokenController represents the entry point for the Token API
// func TokenController(c *fiber.Ctx) {
// 	middleware.AddHeaders(c)

// 	switch c.Method() {
// 	case "POST":
// 		ValidateToken(c)
// 		break
// 	case "OPTIONS":
// 		c.SendStatus(http.StatusOK)
// 		break
// 	default:
// 		c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPErrorStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
// 		break
// 	}
// }

// ValidateToken validates a token
func ValidateToken(c *fiber.Ctx) {

	token := new(models.TokenPayload)
	if err := c.BodyParser(token); err != nil {
		c.SendStatus(http.StatusBadRequest)
		return
	}
	status := middleware.ValidateToken(c, token.Token)
	c.Status(status).JSON(&models.HTTPErrorStatus{Status: status, Message: http.StatusText(status)})
}
