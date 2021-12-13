package services

import (
	"errors"
	"net"
	"net/http"
	"regexp"
	"strings"
	"time"

	"golang.org/x/crypto/bcrypt"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type UserService struct{}

var cost = 14
var emailRegex = regexp.MustCompile("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")

// SaveExperimentAndParticipant saves user into ExperimentUser database and records if experiment has been complete
// as well as the completion string for turkers
// func SaveExperimentAndParticipant(experimentUser models.ExperimentUser) models.HTTPStatus {
// 	experimentUser.ID = strings.ToUpper(experimentUser.ID)
// 	return database.SaveExperimentAndParticipant(experimentUser)
// }

// SaveUser saves the user
func (u *UserService) SaveUser(user *models.User) models.HTTPStatus {
	if user.Password == "" {
		axonlogger.WarningLogger.Println("Did not save", user.Email, "password cannot be empty")
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Password cannot be empty"}
	}
	if !isEmailValid(user.Email) {
		axonlogger.WarningLogger.Println("Email not valid:", user.Email)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Email is not valid"}
	}
	if user.Role != "PARTICIPANT" && user.Role != "GUEST" {
		axonlogger.WarningLogger.Println("Role not recognized", user.Role)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "Role is not valid"}
	}

	hashedPassword, err := hashAndSalt(user.Password)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error hashing the given password", user.Email)
		return models.HTTPStatus{Status: http.StatusBadGateway, Message: http.StatusText(http.StatusBadGateway)}
	}
	user.Password = hashedPassword
	return userRepositoryImpl.SaveUser(user)
}

// UpdateUser updates the given user but not the password
func (u *UserService) UpdateUser(receivedUser models.User) models.HTTPStatus {
	userFromDB, err := userRepositoryImpl.GetUserById(receivedUser.ID)
	if err != nil {
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error updating the user"}
	}

	// we want to ensure that only these fields are being updated - password should never be updated via this route
	userFromDB.Email = receivedUser.Email
	userFromDB.ChangePasswordRequired = receivedUser.ChangePasswordRequired
	userFromDB.Lang = receivedUser.Lang

	return userRepositoryImpl.UpdateUser(&userFromDB)
}

func (u *UserService) ChangePassword(email string, tempPassword string, newPassword string) models.HTTPStatus {
	userFromDB, err := userRepositoryImpl.GetUserByEmail(email)
	if err != nil {
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error updating the user"}
	}
	if isCorrect := passwordIsCorrect(userFromDB.Password, tempPassword); !isCorrect {
		return models.HTTPStatus{Status: http.StatusUnprocessableEntity, Message: "password is incorrect"}
	}

	hashedPassword, err := hashAndSalt(newPassword)
	if err != nil {
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: err.Error()}
	}
	userFromDB.Password = hashedPassword
	userFromDB.ChangePasswordRequired = false

	if httpStatus := u.UpdateUser(userFromDB); httpStatus.Status != http.StatusOK {
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error updating the user"}
	}
	return models.HTTPStatus{Status: http.StatusOK, Message: "updated password"}
}

func (u *UserService) RegisterCrowdsourcedUserCompletion(participantId string, studyId string) (string, error) {
	studyUintId, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return "", errors.New("there was an error registering completion")
	}

	code := GenerateCode(10)
	return userRepositoryImpl.RegisterCrowdsourcedUserCompletion(participantId, studyUintId, code)
}

func (u *UserService) SaveCrowdsourcedUser(crowdsourcedUser *models.CrowdSourcedUser) models.HTTPStatus {
	study, err := studyRepositoryImpl.GetStudyById(crowdsourcedUser.StudyID)
	if err != nil {
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "there was an error registering the participant"}
	}
	if study.ID == 0 {
		axonlogger.WarningLogger.Println("the given study code does not exist")
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "study does not exist"}
	}

	if !study.Started {
		return models.HTTPStatus{Status: http.StatusForbidden, Message: "this study is not currently accepting participants"}
	}

	return userRepositoryImpl.SaveCrowdsourcedUser(crowdsourcedUser)
}

// GetGuests retrieves all users of the Role GUEST
func (u *UserService) GetGuests() ([]models.User, error) {
	return userRepositoryImpl.GetGuests()
}

// GetUserByEmail retrieves the user by the given email
func (u *UserService) GetUserByEmail(email string) (models.User, error) {
	user, err := userRepositoryImpl.GetUserByEmail(email)
	// scrub sensitive data
	user.CreatedAt = time.Time{}
	user.Password = ""
	return user, err
}

func (u *UserService) GetCrowdsourcedUserById(participantId string, studyId string) (models.CrowdSourcedUser, error) {
	studyIdUint, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.CrowdSourcedUser{}, errors.New("there was an error getting the user")
	}
	return userRepositoryImpl.GetCrowdsourcedUserById(participantId, studyIdUint)
}

// DeleteUserById deletes the guest with the given email
func (u *UserService) DeleteGuestById(id string) models.HTTPStatus {
	parsedId, err := convertStringToUint8(id)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
	}

	guest, err := userRepositoryImpl.GetUserById(parsedId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not retrieve guest", err)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
	}
	if guest.Role != common.GUEST {
		axonlogger.WarningLogger.Println("Did not delete guest - unexpected role")
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
	}
	return userRepositoryImpl.DeleteUserByEmail(guest.Email)
}

func (u *UserService) GetCrowdSourcedUsersByStudyId(studyId string) ([]models.CrowdSourcedUser, error) {
	parsedId, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return []models.CrowdSourcedUser{}, errors.New("there was an error getting users")
	}
	return userRepositoryImpl.GetCrowdSourcedUsersByStudyId(parsedId)
}

func (u *UserService) SaveStudyUser(studyUser models.StudyUser) models.HTTPStatus {
	studyUser.CompletionCode = ""
	studyUser.CurrentTaskIndex = 0
	studyUser.DueDate = models.NullTime{
		Valid: false,
		Time:  time.Time{},
	}
	studyUser.HasAcceptedConsent = false
	return userRepositoryImpl.SaveStudyUser(studyUser)
}

func (u *UserService) UpdateStudyUser(studyUser models.StudyUser) models.HTTPStatus {
	queriedStudyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an update error"}
	}

	queriedStudyUser.CompletionCode = studyUser.CompletionCode
	queriedStudyUser.CurrentTaskIndex = studyUser.CurrentTaskIndex
	queriedStudyUser.DueDate = studyUser.DueDate
	queriedStudyUser.HasAcceptedConsent = studyUser.HasAcceptedConsent

	return userRepositoryImpl.UpdateStudyUser(queriedStudyUser)
}

func (s *UserService) GetAllStudyUsersByUserId(userId string) ([]models.StudyUser, error) {
	parsedUserId, parsedUserIdErr := convertStringToUint8(userId)

	if parsedUserIdErr != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", parsedUserIdErr)
		return []models.StudyUser{}, errors.New("there was an error getting study users")
	}
	return userRepositoryImpl.GetAllStudyUsersByUserId(uint(parsedUserId))
}

func (u *UserService) GetStudyUserById(userId string, studyId uint) (models.StudyUser, error) {
	parsedUserId, err := convertStringToUint8(userId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.StudyUser{}, errors.New("there was an error getting study users")
	}
	return userRepositoryImpl.GetStudyUserById(parsedUserId, studyId)
}

func (u *UserService) GetStudyUsersByStudyId(studyId string) ([]models.StudyUser, error) {
	parsedId, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return []models.StudyUser{}, errors.New("there was an error getting study users")
	}
	return userRepositoryImpl.GetStudyUsersByStudyId(parsedId)

}

func isEmailValid(email string) bool {
	if len(email) < 3 || len(email) > 254 {
		return false
	}
	if !emailRegex.MatchString(email) {
		return false
	}
	// if it passed the regex test, it must have an "@" sign so this is safe
	emailSections := strings.Split(email, "@")

	mx, err := net.LookupMX(emailSections[1])

	if err != nil || len(mx) == 0 {
		return false
	}

	return true
}

func hashAndSalt(password string) (string, error) {
	hash, err := bcrypt.GenerateFromPassword([]byte(password), cost)
	if err != nil {
		return "", errors.New("Could not Hash password")
	}
	return string(hash), nil
}
