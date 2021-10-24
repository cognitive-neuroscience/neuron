package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

type EmailController struct{}

func (*EmailController) SendEmail(e echo.Context) error {
	emailStruct := struct {
		Email string `json:"email"`
	}{
		"",
	}
	if err := e.Bind(&emailStruct); err != nil {
		axonlogger.WarningLogger.Println("Could not parse email", err)
		return common.SendHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusBadRequest, Message: "there was an error resetting your password"})
	}
	if err := emailServiceImpl.SendEmail(emailStruct.Email); err != nil {
		return common.SendHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error resetting your password"})
	}
	return common.SendHTTPOk(e)
}
