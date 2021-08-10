package controllers

import (
	"log"

	"github.com/labstack/echo/v4"
)

type EmailController struct{}

func (*EmailController) SendEmail(e echo.Context) error {
	log.Println("hello")
	return emailServiceImpl.SendEmail()
}
