package email

import (
	"bytes"
	"errors"
	"html/template"
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
	TemporaryPassword string
}

func (*EmailBaseService) SendForgotPasswordEmail(emailAddres string, tempPassword string) error {
	errMsg := "there was an error resetting the password"
	path, exists := os.LookupEnv("EMAIL_TEMPLATES_PATH")
	if !exists {
		axonlogger.ErrorLogger.Println("no connection details for the email templates path")
		return errors.New(errMsg)
	}
	sendgridApiKey, exists := os.LookupEnv("SENDGRID_API_KEY")
	if !exists {
		axonlogger.ErrorLogger.Println("no connection details for the sendgrid API")
		return errors.New(errMsg)
	}

	from := mail.NewEmail("sharplab", "sharplab.neuro@mcgill.ca")
	to := mail.NewEmail("sharplab participant", emailAddres)

	parsedTemplate, err := template.ParseFiles(path + "/forgotpassword/forgotpassword.html")
	if err != nil {
		axonlogger.ErrorLogger.Println("there was an error parsing the forgotpassword.html template", err)
		return errors.New(errMsg)
	}

	var doc bytes.Buffer

	fpt := ForgotPasswordTemplate{
		TemporaryPassword: tempPassword,
	}

	if err := parsedTemplate.Execute(&doc, fpt); err != nil {
		axonlogger.ErrorLogger.Println("error applying data to parsed HTML template", err)
		return errors.New(errMsg)
	}

	subject := "SHARPLAB: Password Reset Email"
	message := mail.NewSingleEmail(from, subject, to, doc.String(), doc.String())
	client := sendgrid.NewSendClient(sendgridApiKey)
	if _, err := client.Send(message); err != nil {
		axonlogger.ErrorLogger.Println("could not send email", err)
		return errors.New("there was an error with emailing")
	}
	axonlogger.InfoLogger.Println("successfully sent forgot password email", emailAddres)
	return nil
}
