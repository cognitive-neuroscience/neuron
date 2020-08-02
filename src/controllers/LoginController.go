package controllers

import (
	"net/http"
	"strconv"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// DoLogin handles login
func DoLogin(c *fiber.Ctx) {
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
		c.Set("UserID", strconv.FormatUint(uint64(dbUser.ID), 16))
		c.Set("Email", string(dbUser.Email))
		c.Status(http.StatusOK).JSON(fiber.Map{
			"message": "OK",
			"userID":  dbUser.ID,
			"email":   dbUser.Email,
		})
	}
}
