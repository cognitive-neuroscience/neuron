package common

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/gofiber/fiber"
)

// SendHTTPBadRequest sends a 400
func SendHTTPBadRequest(c *fiber.Ctx) {
	c.Status(http.StatusBadRequest).JSON(models.HTTPErrorStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
}

// SendHTTPForbidden sends a 401
func SendHTTPForbidden(c *fiber.Ctx) {
	c.Status(http.StatusUnauthorized).JSON(models.HTTPErrorStatus{Status: http.StatusUnauthorized, Message: http.StatusText(http.StatusUnauthorized)})
}

// SendHTTPOkWithBody sends a 200 with payload
func SendHTTPOkWithBody(c *fiber.Ctx, payload interface{}) {
	c.Status(http.StatusOK).JSON(payload)
}

// SendHTTPOk sends a 200
func SendHTTPOk(c *fiber.Ctx) {
	c.Status(http.StatusOK).JSON(models.HTTPErrorStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)})
}

// SendHTTPStatusCreated sends a 201
func SendHTTPStatusCreated(c *fiber.Ctx) {
	c.Status(http.StatusCreated).JSON(models.HTTPErrorStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)})
}

// SendHTTPStatusServiceUnavailable sends a 503
func SendHTTPStatusServiceUnavailable(c *fiber.Ctx) {
	c.Status(http.StatusServiceUnavailable).JSON(models.HTTPErrorStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)})
}

// SendGenericHTTPModel send the given http status code depending on the given HTTPErrorStatus model
func SendGenericHTTPModel(c *fiber.Ctx, model models.HTTPErrorStatus) {
	c.Status(model.Status).JSON(model)
}
