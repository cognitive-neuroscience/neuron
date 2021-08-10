package email

import (
	"errors"
	"log"
	"os"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

	"github.com/sendgrid/sendgrid-go"
	"github.com/sendgrid/sendgrid-go/helpers/mail"
)

/*
 * This file contains code for a service that sends emails
 */

type EmailBaseService struct{}

type ForgotPasswordTemplate struct {
	urlToken string
}

func (*EmailBaseService) SendForgotPasswordEmail() error {

	sendgridApiKey, exists := os.LookupEnv("SENDGRID_API_KEY")
	if !exists {
		return errors.New("no dev connection details")
	}

	from := mail.NewEmail("sharplab", "sharplab.neuro@mcgill.ca")
	to := mail.NewEmail("sharplab participant", "niconal902@gmail.com")
	subject := "sending test email via sendgrid"
	plainTextContent := "plain text content"
	htmlContent := `<div style="color: red">hello!</div>`
	message := mail.NewSingleEmail(from, subject, to, plainTextContent, htmlContent)
	client := sendgrid.NewSendClient(sendgridApiKey)
	res, err := client.Send(message)
	if err != nil {
		axonlogger.ErrorLogger.Println("could not send email", err)
		return errors.New("there was an error with emailing")
	} else {
		log.Println(res.StatusCode)
		log.Println(res.Body)
		log.Println(res.Headers)
	}
	return nil
}
