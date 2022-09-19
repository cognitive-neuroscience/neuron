package services

import (
	"database/sql"
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
func (u *UserService) UpdateUser(receivedUser models.User) (models.User, models.HTTPStatus) {
	userFromDB, err := userRepositoryImpl.GetUserById(receivedUser.ID)
	if err != nil {
		return models.User{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error updating the user"}
	}

	// we want to ensure that only these fields are being updated - password should never be updated via this route
	userFromDB.Email = receivedUser.Email
	userFromDB.Lang = receivedUser.Lang

	status := userRepositoryImpl.UpdateUser(&userFromDB)
	if status.Status == http.StatusOK {
		user, err := u.GetUserByEmail(userFromDB.Email)
		if err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the user by email", err.Error())
			return models.User{}, models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: "there was an error getting the user"}
		}
		return user, status
	}

	return models.User{}, status
}

// updatePassword only updates the password for a specific user. This should not be accessible via an HTTP call and should remain private and internal
func (u *UserService) updatePassword(email string, newPassword string, changePasswordRequired bool) error {
	userFromDB, err := userRepositoryImpl.GetUserByEmail(email)
	if err != nil {
		return errors.New("there was an error retrieving the user")
	}

	userFromDB.Password = newPassword
	userFromDB.ChangePasswordRequired = changePasswordRequired

	if status := userRepositoryImpl.UpdateUser(&userFromDB); status.Status == http.StatusInternalServerError {
		return errors.New("there was an error updating the user password")
	}

	return nil
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

	if err := u.updatePassword(email, hashedPassword, false); err != nil {
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error updating the password"}
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
		if err == sql.ErrNoRows {
			return models.HTTPStatus{Status: http.StatusBadRequest, Message: "the given study code does not exist"}
		} else {
			return models.HTTPStatus{Status: http.StatusBadRequest, Message: "there was an error registering the participant"}
		}
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

func (u *UserService) UpdateStudyUser(studyUser models.StudyUser) (models.StudyUser, models.HTTPStatus) {
	queriedStudyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not get the given study user", err)
		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an update error"}
	}

	queriedStudyUser.Data = studyUser.Data
	queriedStudyUser.CompletionCode = studyUser.CompletionCode
	queriedStudyUser.DueDate = studyUser.DueDate
	queriedStudyUser.HasAcceptedConsent = studyUser.HasAcceptedConsent

	status := userRepositoryImpl.UpdateStudyUser(queriedStudyUser)
	if status.Status == http.StatusOK {
		studyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
		if err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study user", err.Error())
			return models.StudyUser{}, models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: "there was an error getting the user"}
		}
		return studyUser, status
	}

	return models.StudyUser{}, status
}

func (u *UserService) IncrementStudyUserCurrentTaskIndex(studyUser models.StudyUser) (models.StudyUser, models.HTTPStatus) {
	queriedStudyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not get the given study user", err)
		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an update error"}
	}

	_, queryErr := studyDataRepositoryImpl.GetTaskDataByUserForStudyTask(
		queriedStudyUser.StudyID,
		convertUintToString(queriedStudyUser.UserID),
		queriedStudyUser.CurrentTaskIndex,
	)

	// the increment should be prevented if there is no participant data in the database for this index
	if queryErr == sql.ErrNoRows {
		axonlogger.WarningLogger.Println("preventing invalid increment", queriedStudyUser)
		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusBadRequest, Message: "cannot move to next task"}
	}

	queriedStudyUser.CurrentTaskIndex = queriedStudyUser.CurrentTaskIndex + 1

	status := userRepositoryImpl.UpdateStudyUser(queriedStudyUser)
	if status.Status == http.StatusOK {
		studyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
		if err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study user", err.Error())
			return models.StudyUser{}, models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: "there was an error getting the user"}
		}
		return studyUser, status
	}

	return models.StudyUser{}, status
}

func (u *UserService) GetAllStudyUsersByUserId(userId string) ([]models.StudyUser, error) {
	parsedUserId, parsedUserIdErr := convertStringToUint8(userId)

	if parsedUserIdErr != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", parsedUserIdErr)
		return []models.StudyUser{}, errors.New("there was an error getting study users")
	}
	return userRepositoryImpl.GetAllStudyUsersByUserId(uint(parsedUserId))
}

func (u *UserService) GetStudyUsersByStudyId(studyId string) ([]models.StudyUser, error) {
	parsedId, err := convertStringToUint8(studyId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return []models.StudyUser{}, errors.New("there was an error getting study users")
	}
	return userRepositoryImpl.GetStudyUsersByStudyId(parsedId)
}

func(u *UserService) GetStudyUserSummary() ([]models.StudyUserSummary, error) {
	allStudyUsers, err := userRepositoryImpl.GetAllStudyUsers()
	if err != nil {
		return nil, err
	}

	// create mapping of USERID to slice of study IDs
	var userStudiesMap = make(map[uint][]uint)
	for _, studyTask := range allStudyUsers {
		if value, ok := userStudiesMap[studyTask.UserID]; ok {
			userStudiesMap[studyTask.UserID] = append(value, studyTask.StudyID)
		} else {
			userStudiesMap[studyTask.UserID] = []uint{ studyTask.StudyID }
		}
	}

	// turn the mapping into the study user summary model
	var studyUserSummary = make([]models.StudyUserSummary, len(userStudiesMap))
	index := 0
	for key, studiesSlice := range userStudiesMap {
		studyUserSummary[index].UserId = key
		studyUserSummary[index].Studies = studiesSlice
		index++
	}

	return studyUserSummary, nil
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
		return "", errors.New("could not hash password")
	}
	return string(hash), nil
}
