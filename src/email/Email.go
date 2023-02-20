package email

import (
	"bytes"
	"html/template"
	"net/http"
	"os"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"

	"github.com/sendgrid/sendgrid-go"
	"github.com/sendgrid/sendgrid-go/helpers/mail"
)

/*
 * This file contains code for a service that sends emails
 */

type EmailBaseService struct{}

func (*EmailBaseService) SendForgotPasswordEmail(emailAddress string, tempPassword string) models.HTTPStatus {
	path, exists := os.LookupEnv("EMAIL_TEMPLATES_PATH")
	if !exists {
		axonlogger.ErrorLogger.Println("no connection details for the email templates path")
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	sendgridApiKey, exists := os.LookupEnv("SENDGRID_API_KEY")
	if !exists {
		axonlogger.ErrorLogger.Println("no connection details for the sendgrid API")
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	from := mail.NewEmail("sharplab", "sharplab.neuro@mcgill.ca")
	to := mail.NewEmail("sharplab participant", emailAddress)

	parsedTemplate, err := template.ParseFiles(path + "/forgotpassword/forgotpassword.html")
	if err != nil {
		axonlogger.ErrorLogger.Println("there was an error parsing the forgotpassword.html template", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	var doc bytes.Buffer

	fpt := struct {
		TemporaryPassword string `json:"temporaryPassword"`
	}{
		tempPassword,
	}

	if err := parsedTemplate.Execute(&doc, fpt); err != nil {
		axonlogger.ErrorLogger.Println("error applying data to parsed HTML template", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	subject := "SHARPLAB: Password Reset Email"
	message := mail.NewSingleEmail(from, subject, to, doc.String(), doc.String())
	client := sendgrid.NewSendClient(sendgridApiKey)
	if _, err := client.Send(message); err != nil {
		axonlogger.ErrorLogger.Println("could not send email", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	axonlogger.InfoLogger.Println("successfully sent forgot password email", emailAddress)
	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}
