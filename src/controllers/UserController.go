package controllers

import (
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// GetAllUsers is the users api entry point for returning all existing experiments
// only for dev purposes, delete later!
func GetAllUsers(c *fiber.Ctx) {
	tokenIsValid := services.VerifyToken(c)
	if tokenIsValid {
		tasks, err := services.GetAllTasks()
		if err != nil {
			log.Println("there was an err")
		}
		c.JSON(tasks)
	} else {
		sendForbidden(c)
	}
}

func sendForbidden(c *fiber.Ctx) {
	c.Status(http.StatusUnauthorized).JSON(&models.HTTPErrorStatus{Status: http.StatusUnauthorized, Message: http.StatusText(http.StatusUnauthorized)})
}

// SaveUser saves a given user in the DB
func SaveUser(c *fiber.Ctx) {
	user := new(models.User)
	if err := c.BodyParser(user); err != nil {
		c.Status(http.StatusBadRequest).JSON(&models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
	}

	result := services.SaveUser(user)
	c.Status(result.Status).JSON(result)
}

// UpdateUser updates a given user in the DB
func UpdateUser(c *fiber.Ctx) {
	services.VerifyToken(c)
	c.Write([]byte("OK"))
}
