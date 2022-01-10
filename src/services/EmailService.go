package services

import (
	"errors"
)

type EmailService struct{}

func (*EmailService) SendEmail(emailAddress string) error {
	var authServiceImpl = AuthService{}
	var userServiceImpl = UserService{}
	tempPassword := authServiceImpl.GetTemporaryPassword()

	hashedTempPassword, err := hashAndSalt(tempPassword)
	if err != nil {
		return err
	}

	if err := userServiceImpl.updatePassword(emailAddress, hashedTempPassword, true); err != nil {
		return errors.New("error updating password for user")
	}

	return emailServiceImpl.SendForgotPasswordEmail(emailAddress, tempPassword)
}
