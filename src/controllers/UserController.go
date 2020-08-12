package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// UserController represents the entry point for the User API
func UserController(c *fiber.Ctx) {
	middleware.AddHeaders(c)
	switch c.Method() {
	case "OPTIONS":
		c.SendStatus(http.StatusOK)
		break
	case "POST":
		saveUser(c)
	case "GET":
		getAllUsers(c)
	default:
		c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPErrorStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
		break
	}
}

func getAllUsers(c *fiber.Ctx) {
	middleware.VerifyToken(c)
	c.Write([]byte("OK"))
}

// SaveUser saves a given user in the DB
func saveUser(c *fiber.Ctx) {
	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		c.Status(http.StatusBadRequest).JSON(&models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
		return
	}

	result := services.SaveUser(user)
	c.Status(result.Status).JSON(result)
}

// UpdateUser updates a given user in the DB
func UpdateUser(c *fiber.Ctx) {
	middleware.VerifyToken(c)
	c.Write([]byte("OK"))
}
