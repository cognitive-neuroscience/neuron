package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// UploadController represents the entry point for the Upload API
func UploadController(c *fiber.Ctx) {
	middleware.AddHeaders(c)

	if c.Method() != "OPTIONS" {
		// status := services.ValidateToken(c, strings.ReplaceAll(c.Get("Authorization"), "Bearer ", ""))
		// if status != http.StatusOK {
		// 	c.SendStatus(status)
		// 	return
		// }
		switch c.Method() {
		case "POST":
			doUpload(c)
			break
		default:
			c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPErrorStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
			break
		}
	} else {
		c.SendStatus(http.StatusOK)
	}
}

func doUpload(c *fiber.Ctx) {
	experiment := c.Query("experiment")

	switch experiment {

	case "ts":
		var data []models.TaskSwitchingData
		if err := c.BodyParser(&data); err != nil {
			c.Status(http.StatusBadRequest).JSON(fiber.Map{"error": err.Error()})
			return
		}
		services.SaveTSData(experiment, c.Get("UserID"), data)
		break

	case "dst":
		var data []models.DemandSelectionData
		if err := c.BodyParser(&data); err != nil {
			c.Status(http.StatusBadRequest).JSON(fiber.Map{"error": err.Error()})
			return
		}
		services.SaveDSTData(experiment, c.Get("UserID"), data)
		break

	default:
		c.Status(http.StatusBadRequest).JSON(&models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
		break
	}

	c.JSON(fiber.Map{"status": "OK"})
}
