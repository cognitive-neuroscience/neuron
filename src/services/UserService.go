package services

import (
	"net/http"
	"regexp"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type UserService struct{}

var cost = 14
var emailRegex = regexp.MustCompile("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")

// CreateUser saves the user in the db
func (u *UserService) CreateUser(user *models.User) models.HTTPStatus {
	axonlogger.InfoLogger.Println("USER SERVICE: CreateUser()")

	if user.Password == "" {
		var errMsg = "password cannot be empty"
		axonlogger.WarningLogger.Println("Did not save", user.Email, errMsg)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: errMsg}
	}
	if !isEmailValid(user.Email) {
		var errMsg = "Email is not valid"
		axonlogger.WarningLogger.Println(errMsg, user.Email)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: errMsg}
	}
	if user.Role != common.PARTICIPANT && user.Role != common.GUEST {
		var errMsg = "Role is not valid"
		axonlogger.WarningLogger.Println(errMsg, user.Role)
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: errMsg}
	}

	hashedPassword, err := hashAndSalt(user.Password)
	if err != nil {
		axonlogger.ErrorLogger.Println("There was an error hashing the given password", user.Email)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	user.Password = hashedPassword
	return userRepositoryImpl.CreateUser(user)
}

// GetUserById retrieves the user by the given ID.
// It returns a 200, 404, or 500 status code.
func (u *UserService) GetUserById(id string) (models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER SERVICE: GetUserById()")

	parsedId, err := convertStringToUint8(id)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.User{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	user, httpStatus := userRepositoryImpl.GetUserById(parsedId)
	user.Password = ""
	user.CreatedAt = time.Time{}
	return user, httpStatus
}

// GetUserByEmail retrieves the user by the given email.
// It returns a 200, 404, or 500 status code.
func (u *UserService) GetUserByEmail(email string) (models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER SERVICE: GetUserByEmail()")

	user, httpStatus := userRepositoryImpl.GetUserByEmail(email)
	// scrub sensitive data
	user.CreatedAt = time.Time{}
	user.Password = ""
	return user, httpStatus
}

// GetUsersByOrganizationId gets all members and guests for a given organization
func (u *UserService) GetUsersByOrganizationId(organizationId string) ([]models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER SERVICE: GetUsersByOrganizationId()")

	// convert string into a uint
	studyUintId, err := convertStringToUint8(organizationId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return nil, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	return userRepositoryImpl.GetUsersByOrganizationId(studyUintId)
}

// UpdateUser updates the given user but not the password
// It returns a 200, 404, or 500 status code
func (u *UserService) UpdateUser(receivedUser *models.User) (models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER SERVICE: UpdateUser()")

	userFromDB, httpStatus := userRepositoryImpl.GetUserById(receivedUser.ID)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return models.User{}, httpStatus
	}

	// we want to ensure that only these fields are being updated - password should never be updated via this route
	userFromDB.Email = receivedUser.Email
	userFromDB.Lang = receivedUser.Lang
	userFromDB.ChangePasswordRequired = receivedUser.ChangePasswordRequired
	userFromDB.Name = receivedUser.Name

	updateUserHttpStatus := userRepositoryImpl.UpdateUser(&userFromDB)
	if !common.HTTPRequestIsSuccessful(updateUserHttpStatus.Status) {
		return models.User{}, updateUserHttpStatus
	}

	// retrieve user from this route to scrub sensitive info
	user, getUserByEmailHttpStatus := u.GetUserByEmail(userFromDB.Email)
	if !common.HTTPRequestIsSuccessful(getUserByEmailHttpStatus.Status) {
		return models.User{}, getUserByEmailHttpStatus
	}
	return user, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// DeleteUserByID deletes the user with the given ID.
// It returns a 200, 400, 500 status code.
func (u *UserService) DeleteUserByID(userId string) models.HTTPStatus {
	axonlogger.InfoLogger.Println("USER SERVICE: DeleteUserByID()")

	parsedId, err := convertStringToUint8(userId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	user, getUserHttpStatus := userRepositoryImpl.GetUserById(parsedId)
	if !common.HTTPRequestIsSuccessful(getUserHttpStatus.Status) {
		return getUserHttpStatus
	}

	// deletion of admin should only be allowed manually
	// deletion of a participant that is connected to data will cause the db to complain
	// deletion of an organization member that is the owner of a study will cause the db to complain
	// TODO: do we want to cascade in the future? Probably not - that is quite risky.
	if user.Role != common.GUEST {
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
	}

	return userRepositoryImpl.DeleteUserByID(parsedId)
}

// UpdateUserPassword updates the user password with a new salted and hashed password.
// It returns a 200, 400, 403, 404, or 500 status code.
func (u *UserService) UpdateUserPassword(email string, passwordAttempt string, newPassword string) models.HTTPStatus {
	axonlogger.InfoLogger.Println("USER SERVICE: UpdateUserPassword()")

	if email == "" || passwordAttempt == "" || newPassword == "" {
		return models.HTTPStatus{Status: http.StatusBadRequest, Message: http.StatusText(http.StatusBadRequest)}
	}

	user, getUserByEmailHttpStatus := userRepositoryImpl.GetUserByEmail(email)
	if !common.HTTPRequestIsSuccessful(getUserByEmailHttpStatus.Status) {
		return getUserByEmailHttpStatus
	}

	if isCorrect := passwordIsCorrect(user.Password, passwordAttempt); !isCorrect {
		return models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
	}

	hashedPassword, err := hashAndSalt(newPassword)
	if err != nil {
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	updateUserPasswordHttpStatus := u.updatePasswordHelper(email, hashedPassword, false)

	return updateUserPasswordHttpStatus
}

// HandleForgotPassword generates a random password, and triggers an email dispatch with that random password. The ChangePasswordRequired flag is set to true.
// It returns a 200, 404, or 500 status code
func (u *UserService) HandleForgotPassword(email string) models.HTTPStatus {
	axonlogger.InfoLogger.Println("USER SERVICE: HandleForgotPassword()")

	tempPassword := generateCode(4)

	hashedTempPassword, err := hashAndSalt(tempPassword)
	if err != nil {
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	axonlogger.InfoLogger.Println(tempPassword)
	updatedPasswordHttpStatus := u.updatePasswordHelper(email, hashedTempPassword, true)
	if !common.HTTPRequestIsSuccessful(updatedPasswordHttpStatus.Status) {
		return updatedPasswordHttpStatus
	}
	return emailServiceImpl.SendForgotPasswordEmail(email, tempPassword)
}

// updatePasswordHelper only updates the password for a specific user. This should not be accessible via a direct HTTP call and should remain private and internal.
// It returns a 200, 404, or 500 status code
func (u *UserService) updatePasswordHelper(email string, newPassword string, changePasswordRequired bool) models.HTTPStatus {
	userFromDB, getUserByEmailHttpStatus := userRepositoryImpl.GetUserByEmail(email)
	if !common.HTTPRequestIsSuccessful(getUserByEmailHttpStatus.Status) {
		return getUserByEmailHttpStatus
	}

	userFromDB.Password = newPassword
	userFromDB.ChangePasswordRequired = changePasswordRequired

	return userRepositoryImpl.UpdateUser(&userFromDB)
}

// func (u *UserService) ChangePassword(email string, currentPassword string, newPassword string) models.HTTPStatus {
// 	userFromDB, err := userRepositoryImpl.GetUserByEmail(email)
// 	if err != nil {
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error updating the user"}
// 	}
// 	if isCorrect := passwordIsCorrect(userFromDB.Password, currentPassword); !isCorrect {
// 		return models.HTTPStatus{Status: http.StatusUnprocessableEntity, Message: "password is incorrect"}
// 	}

// 	hashedPassword, err := hashAndSalt(newPassword)
// 	if err != nil {
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: err.Error()}
// 	}

// 	if err := u.updatePasswordHelper(email, hashedPassword, false); err != nil {
// 		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an error updating the password"}
// 	}

// 	return models.HTTPStatus{Status: http.StatusOK, Message: "updated password"}
// }

// func (u *UserService) RegisterCrowdsourcedUserCompletion(participantId string, studyId string) (string, error) {
// 	studyUintId, err := convertStringToUint8(studyId)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
// 		return "", errors.New("there was an error registering completion")
// 	}

// 	code := GenerateCode(10)
// 	return userRepositoryImpl.RegisterCrowdsourcedUserCompletion(participantId, studyUintId, code)
// }

// func (u *UserService) SaveCrowdsourcedUser(crowdsourcedUser *models.CrowdSourcedUser) models.HTTPStatus {
// 	study, err := studyRepositoryImpl.GetStudyById(crowdsourcedUser.StudyID)
// 	if err != nil {
// 		if err == sql.ErrNoRows {
// 			return models.HTTPStatus{Status: http.StatusBadRequest, Message: "the given study code does not exist"}
// 		} else {
// 			return models.HTTPStatus{Status: http.StatusBadRequest, Message: "there was an error registering the participant"}
// 		}
// 	}
// 	if study.ID == 0 {
// 		axonlogger.WarningLogger.Println("the given study code does not exist")
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "study does not exist"}
// 	}

// 	if !study.Started {
// 		return models.HTTPStatus{Status: http.StatusForbidden, Message: "this study is not currently accepting participants"}
// 	}

// 	return userRepositoryImpl.SaveCrowdsourcedUser(crowdsourcedUser)
// }

// // GetGuests retrieves all users of the Role GUEST
// func (u *UserService) GetGuests() ([]models.User, error) {
// 	return userRepositoryImpl.GetGuests()
// }

// func (u *UserService) GetCrowdsourcedUserById(participantId string, studyId string) (models.CrowdSourcedUser, error) {
// 	studyIdUint, err := convertStringToUint8(studyId)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
// 		return models.CrowdSourcedUser{}, errors.New("there was an error getting the user")
// 	}
// 	return userRepositoryImpl.GetCrowdsourcedUserById(participantId, studyIdUint)
// }

// // DeleteUserById deletes the guest with the given email
// func (u *UserService) DeleteGuestById(id string) models.HTTPStatus {
// 	parsedId, err := convertStringToUint8(id)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
// 	}

// 	guest, err := userRepositoryImpl.GetUserById(parsedId)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("Could not retrieve guest", err)
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
// 	}
// 	if guest.Role != common.GUEST {
// 		axonlogger.WarningLogger.Println("Did not delete guest - unexpected role")
// 		return models.HTTPStatus{Status: http.StatusBadRequest, Message: "There was an error deleting the guest"}
// 	}
// 	return userRepositoryImpl.DeleteUserByEmail(guest.Email)
// }

// func (u *UserService) GetCrowdSourcedUsersByStudyId(studyId string) ([]models.CrowdSourcedUser, error) {
// 	parsedId, err := convertStringToUint8(studyId)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
// 		return []models.CrowdSourcedUser{}, errors.New("there was an error getting users")
// 	}
// 	return userRepositoryImpl.GetCrowdSourcedUsersByStudyId(parsedId)
// }

// func (u *UserService) SaveStudyUser(studyUser models.StudyUser) models.HTTPStatus {
// 	studyUser.CompletionCode = ""
// 	studyUser.CurrentTaskIndex = 0
// 	studyUser.DueDate = models.NullTime{
// 		Valid: false,
// 		Time:  time.Time{},
// 	}
// 	studyUser.HasAcceptedConsent = false
// 	return userRepositoryImpl.SaveStudyUser(studyUser)
// }

// func (u *UserService) UpdateStudyUser(studyUser models.StudyUser) (models.StudyUser, models.HTTPStatus) {
// 	queriedStudyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Could not get the given study user", err)
// 		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an update error"}
// 	}

// 	queriedStudyUser.Data = studyUser.Data
// 	queriedStudyUser.CompletionCode = studyUser.CompletionCode
// 	queriedStudyUser.DueDate = studyUser.DueDate
// 	queriedStudyUser.HasAcceptedConsent = studyUser.HasAcceptedConsent

// 	status := userRepositoryImpl.UpdateStudyUser(queriedStudyUser)
// 	if status.Status == http.StatusOK {
// 		studyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("there was an error getting the study user", err.Error())
// 			return models.StudyUser{}, models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: "there was an error getting the user"}
// 		}
// 		return studyUser, status
// 	}

// 	return models.StudyUser{}, status
// }

// func (u *UserService) IncrementStudyUserCurrentTaskIndex(studyUser models.StudyUser) (models.StudyUser, models.HTTPStatus) {
// 	queriedStudyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
// 	if err != nil {
// 		axonlogger.ErrorLogger.Println("Could not get the given study user", err)
// 		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: "there was an update error"}
// 	}

// 	_, queryErr := studyDataRepositoryImpl.GetTaskDataByUserForStudyTask(
// 		queriedStudyUser.StudyID,
// 		convertUintToString(queriedStudyUser.UserID),
// 		queriedStudyUser.CurrentTaskIndex,
// 	)

// 	// the increment should be prevented if there is no participant data in the database for this index
// 	if queryErr == sql.ErrNoRows {
// 		axonlogger.WarningLogger.Println("preventing invalid increment", queriedStudyUser)
// 		return models.StudyUser{}, models.HTTPStatus{Status: http.StatusBadRequest, Message: "cannot move to next task"}
// 	}

// 	queriedStudyUser.CurrentTaskIndex = queriedStudyUser.CurrentTaskIndex + 1

// 	status := userRepositoryImpl.UpdateStudyUser(queriedStudyUser)
// 	if status.Status == http.StatusOK {
// 		studyUser, err := userRepositoryImpl.GetStudyUserById(studyUser.UserID, studyUser.StudyID)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("there was an error getting the study user", err.Error())
// 			return models.StudyUser{}, models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: "there was an error getting the user"}
// 		}
// 		return studyUser, status
// 	}

// 	return models.StudyUser{}, status
// }

// func (u *UserService) GetAllStudyUsersByUserId(userId string) ([]models.StudyUser, error) {
// 	parsedUserId, parsedUserIdErr := convertStringToUint8(userId)

// 	if parsedUserIdErr != nil {
// 		axonlogger.WarningLogger.Println("Could not convert id to uint", parsedUserIdErr)
// 		return []models.StudyUser{}, errors.New("there was an error getting study users")
// 	}
// 	return userRepositoryImpl.GetAllStudyUsersByUserId(uint(parsedUserId))
// }

// func (u *UserService) GetStudyUsersByStudyId(studyId string) ([]models.StudyUser, error) {
// 	parsedId, err := convertStringToUint8(studyId)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
// 		return []models.StudyUser{}, errors.New("there was an error getting study users")
// 	}
// 	return userRepositoryImpl.GetStudyUsersByStudyId(parsedId)
// }

// func (u *UserService) GetStudyUserSummary() ([]models.StudyUserSummary, error) {
// 	allStudyUsers, err := userRepositoryImpl.GetAllStudyUsers()
// 	if err != nil {
// 		return nil, err
// 	}

// 	// create mapping of USERID to slice of study IDs
// 	var userStudiesMap = make(map[uint][]uint)
// 	for _, studyTask := range allStudyUsers {
// 		if value, ok := userStudiesMap[studyTask.UserID]; ok {
// 			userStudiesMap[studyTask.UserID] = append(value, studyTask.StudyID)
// 		} else {
// 			userStudiesMap[studyTask.UserID] = []uint{studyTask.StudyID}
// 		}
// 	}

// 	// turn the mapping into the study user summary model
// 	var studyUserSummary = make([]models.StudyUserSummary, len(userStudiesMap))
// 	index := 0
// 	for key, studiesSlice := range userStudiesMap {
// 		studyUserSummary[index].UserId = key
// 		studyUserSummary[index].Studies = studiesSlice
// 		index++
// 	}

// 	return studyUserSummary, nil
// }
