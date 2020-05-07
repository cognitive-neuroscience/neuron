package controllers

import (
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/gofiber/fiber"
)

// TokenController represents the entry point for the Token API
func TokenController(c *fiber.Ctx) {
	log.Println("Token API")
	middleware.AddHeaders(c)

	switch c.Method() {
	case "POST":
		validateToken(c)
		break
	case "OPTIONS":
		c.SendStatus(200)
		break
	default:
		c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPErrorStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
		break
	}
}

func validateToken(c *fiber.Ctx) {
	log.Println("Do Validate Token")

	token := new(models.TokenPayload)
	if err := c.BodyParser(token); err != nil {
		c.SendStatus(http.StatusBadRequest)
		return
	}
	status := middleware.ValidateToken(token.Token)
	c.Status(status).JSON(&models.HTTPErrorStatus{Status: status, Message: http.StatusText(status)})
}
