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
func (u *UserService) CreateUser(loggedInUserRole string, user *models.User) models.HTTPStatus {
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

	// check if logged in user is an admin OR a new participant is being registered
	if loggedInUserRole == common.ADMIN || user.Role == common.PARTICIPANT {
		hashedPassword, err := hashAndSalt(user.Password)
		if err != nil {
			axonlogger.ErrorLogger.Println("There was an error hashing the given password", user.Email)
			return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
		}

		user.Password = hashedPassword
		return userRepositoryImpl.CreateUser(user)
	}

	axonlogger.WarningLogger.Println("role is not valid", user.Role)
	return models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
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

// GetUsersByOrganizationId gets all members and guests for a given organization.
// It returns a 200, 403, 404 or 500 status code.
func (u *UserService) GetUsersByOrganizationId(organizationId string, userId string) ([]models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER SERVICE: GetUsersByOrganizationId()")

	// convert string into a uint
	userUintId, err := convertStringToUint8(userId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return []models.User{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	// convert string into a uint
	organizationUintId, err := convertStringToUint8(organizationId)
	if err != nil {
		axonlogger.WarningLogger.Println("Could not convert id to uint", err)
		return []models.User{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}

	user, getUserHttpStatus := userRepositoryImpl.GetUserById(userUintId)
	if !common.HTTPRequestIsSuccessful(getUserHttpStatus.Status) {
		return []models.User{}, getUserHttpStatus
	}

	if user.Organization.ID != organizationUintId {
		return []models.User{}, models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
	}

	return userRepositoryImpl.GetUsersByOrganizationId(organizationUintId)
}

// UpdateUser updates the given user but not the password
// It returns a 200, 403, 404, or 500 status code
func (u *UserService) UpdateUser(userId string, receivedUser *models.User) (models.User, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("USER SERVICE: UpdateUser()")

	parsedInt, err := convertStringToUint8(userId)
	if err != nil {
		return models.User{}, models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	if parsedInt != receivedUser.ID {
		axonlogger.WarningLogger.Println("User Param ID and struct user id are not the same")
		return models.User{}, models.HTTPStatus{Status: http.StatusForbidden, Message: http.StatusText(http.StatusForbidden)}
	}

	userFromDB, httpStatus := userRepositoryImpl.GetUserById(receivedUser.ID)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return models.User{}, httpStatus
	}

	// we want to ensure that only these fields are being updated - password should never be updated via this route
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
// It returns a 200, 400, 401, 404, or 500 status code.
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
		return models.HTTPStatus{Status: http.StatusUnauthorized, Message: "password is incorrect"}
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
