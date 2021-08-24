package services

import (
	"errors"
	"net/http"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
)

type EmailService struct{}

func (*EmailService) SendEmail(emailAddress string) error {
	var authServiceImpl = AuthService{}
	var userServiceImpl = UserService{}
	tempPassword := authServiceImpl.GetTemporaryPassword()

	user, err := userServiceImpl.GetUserByEmail(emailAddress)
	if err != nil {
		axonlogger.ErrorLogger.Println("error updating password for user", err)
		return err
	}

	user.ChangePasswordRequired = true
	if httpStatus := userServiceImpl.UpdateUser(user); httpStatus.Status != http.StatusOK {
		return errors.New(httpStatus.Message)
	}

	if err := userServiceImpl.UpdatePasswordByEmail(emailAddress, tempPassword); err != nil {
		axonlogger.ErrorLogger.Println("error updating password for user", err)
		return err
	}

	return emailServiceImpl.SendForgotPasswordEmail(emailAddress, tempPassword)
}
