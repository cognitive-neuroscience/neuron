package common

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

// SendHTTPBadRequest sends a 400
func SendHTTPBadRequest(e echo.Context) error {
	return e.JSON(http.StatusBadRequest, models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
}

// SendGenericHTTPWithMessage takes in an http code and message and sends it to client
func SendGenericHTTPWithMessage(e echo.Context, status models.HTTPStatus) error {
	return e.JSON(status.Status, status)
}

// SendHTTPForbidden sends a 401
func SendHTTPForbidden(e echo.Context) error {
	return e.JSON(http.StatusUnauthorized, models.HTTPStatus{Status: http.StatusUnauthorized, Message: http.StatusText(http.StatusUnauthorized)})
}

// SendHTTPOkWithBody sends a 200 with payload
func SendHTTPOkWithBody(e echo.Context, payload interface{}) error {
	return e.JSON(http.StatusOK, payload)
}

// SendHTTPOk sends a 200
func SendHTTPOk(e echo.Context) error {
	return e.JSON(http.StatusOK, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)})
}

// SendHTTPStatusCreated sends a 201
func SendHTTPStatusCreated(e echo.Context) error {
	return e.JSON(http.StatusCreated, models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)})
}

// SendHTTPStatusServiceUnavailable sends a 503
func SendHTTPStatusServiceUnavailable(e echo.Context) error {
	return e.JSON(http.StatusServiceUnavailable, models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)})
}

// SendHTTPStatusService
func SendHTTPStatusInternalServerError(e echo.Context) error {
	return e.JSON(http.StatusInternalServerError, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)})
}
