package controllers

import (
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// LoginController represents the entry point for the Login API
func LoginController(c *fiber.Ctx) {
	log.Println("Login API")
	middleware.AddHeaders(c)

	switch c.Method() {
	case "POST":
		doLogin(c)
		break
	case "OPTIONS":
		c.SendStatus(200)
		break
	default:
		c.SendStatus(http.StatusMethodNotAllowed)
		break
	}
}

func doLogin(c *fiber.Ctx) {
	log.Println("Do Login")

	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		c.SendStatus(http.StatusBadRequest)
		return
	}

	result := services.DoLogin(user.Email, user.Password)
	if result.Status == http.StatusOK {
		tokenString, err := middleware.GetToken(user.Email)
		if err != nil {
			c.Status(http.StatusInternalServerError).Send(err)
			return
		}
		c.Set("Authorization", "Bearer "+tokenString)
	}
	c.Status(result.Status).JSON(result)
}
