package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// LoginController represents the entry point for the Login API
func LoginController(c *fiber.Ctx) {
	middleware.AddHeaders(c)

	switch c.Method() {
	case "POST":
		doLogin(c)
		break
	case "OPTIONS":
		c.SendStatus(http.StatusOK)
		break
	default:
		c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPErrorStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
		break
	}
}

func doLogin(c *fiber.Ctx) {
	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		c.SendStatus(http.StatusBadRequest)
		return
	}

	dbUser, err := services.DoLogin(user.Email, user.Password)
	if err != nil {
		c.Status(http.StatusUnauthorized).JSON(fiber.Map{
			"status": http.StatusUnauthorized,
			"error":  err.Error(),
		})
	} else {
		tokenString, err := middleware.CreateToken(dbUser.ID, dbUser.Email)
		if err != nil {
			c.Status(http.StatusInternalServerError).JSON(fiber.Map{
				"status": http.StatusInternalServerError,
				"error":  err.Error(),
			})
			return
		}
		c.Set("Authorization", "Bearer "+tokenString)
		c.Status(http.StatusOK).JSON(fiber.Map{
			"message": "OK",
			"userID":  dbUser.ID,
		})
	}
}
