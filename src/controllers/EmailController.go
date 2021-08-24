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
		Address string
	}{
		"",
	}
	if err := e.Bind(emailStruct); err != nil {
		axonlogger.WarningLogger.Println("Could not parse email", err)
		return common.SendGenericHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusBadRequest, Message: "there was an error resetting your password"})
	}

	return emailServiceImpl.SendEmail(emailStruct.Address)
}
