package controllers

import (
	"log"
	"net/http"

	"github.com/gofiber/fiber"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
)

// UserController represents the entry point for the User API
func UserController(c *fiber.Ctx) {
	log.Println("User API")
	middleware.AddHeaders(c)

	switch c.Method() {
	case "POST":
		saveUser(c)
		break
	default:
		c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPErrorStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
		break
	}
}

func getUser(c *fiber.Ctx) {
	log.Println("Get User")
	middleware.VerifyToken(c)
	c.Write([]byte("OK"))
}

func saveUser(c *fiber.Ctx) {
	log.Println("Save User")

	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		c.Status(http.StatusBadRequest).JSON(&models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
		return
	}

	result := services.SaveUser(user)
	c.Status(result.Status).Send(result.Message)
}

func updateUser(c *fiber.Ctx) {
	log.Println("Update User")
	middleware.VerifyToken(c)
	c.Write([]byte("OK"))
}
