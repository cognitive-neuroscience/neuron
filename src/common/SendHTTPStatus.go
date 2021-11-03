package common

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

var (
	HTTPStatusServiceUnavailable = models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
	HTTPStatusOK = models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
)

// SendHTTPBadRequest sends a 400
func SendHTTPBadRequest(e echo.Context) error {
	return e.JSON(http.StatusBadRequest, models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)})
}

// SendHTTPWithMessage takes in an http code and message and sends it to client
func SendHTTPWithMessage(e echo.Context, status models.HTTPStatus) error {
	return e.JSON(status.Status, status)
}

// SendHTTPWithPayload takes in an http code and sends it to the client with an associated payload
func SendHTTPWithPayload(e echo.Context, status models.HTTPStatus, payload interface{}) error {
	return e.JSON(status.Status, payload)
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

func HTTPRequestIsSuccessful(httpCode int) bool {
	return httpCode >= 200 && httpCode < 300
}