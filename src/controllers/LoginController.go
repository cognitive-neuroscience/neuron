package controllers

import (
	"net/http"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// Login is the login api entry point for logging in an existing user and attaching a JWT
func Login(c *fiber.Ctx) {
	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		c.Status(http.StatusBadRequest).JSON(models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
		return
	}

	if user.Email == "" || user.Password == "" {
		c.SendStatus(http.StatusBadRequest)
		c.Status(http.StatusBadRequest).JSON(models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: "Username or password cannot be empty"})
		return
	}

	dbUser, err := services.DoLogin(user.Email, user.Password)
	if err != nil {
		c.Status(http.StatusUnauthorized).JSON(models.HTTPErrorStatus{Status: http.StatusUnauthorized, Message: err.Error()})
	} else {
		tokenString, err := services.CreateToken(dbUser.ID, dbUser.Email)

		if err != nil {
			c.Status(http.StatusInternalServerError).JSON(models.HTTPErrorStatus{Status: http.StatusInternalServerError, Message: err.Error()})
			return
		}
		cookie := new(fiber.Cookie)
		cookie.HTTPOnly = true
		cookie.Value = "Bearer " + tokenString
		cookie.Expires = time.Now().Add(12 * time.Hour)
		c.Cookie(cookie)
		c.Status(http.StatusOK).JSON(fiber.Map{
			"message": http.StatusText(http.StatusOK),
			"userId":  dbUser.ID,
			"email":   dbUser.Email,
		})
		// c.Set("Authorization", "Bearer "+tokenString)
		// c.Set("UserID", strconv.FormatUint(uint64(dbUser.ID), 16))
		// c.Set("Email", dbUser.Email)
		// c.Status(http.StatusOK).JSON(fiber.Map{
		// 	"message": http.StatusText(http.StatusOK),
		// 	"userID":  dbUser.ID,
		// 	"email":   dbUser.Email,
		// })
	}
}
