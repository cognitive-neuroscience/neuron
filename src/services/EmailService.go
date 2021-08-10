package services

type EmailService struct{}

func (*EmailService) SendEmail() error {
	return emailServiceImpl.SendForgotPasswordEmail()
}
