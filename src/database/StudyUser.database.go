package database

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type StudyUserRepository struct{}

// GetAllStudyUsersByUserId retrieves all study users associated with the given user id from the database
func (s *StudyUserRepository) GetAllStudyUsersByUserId(userId uint) ([]models.StudyUser, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("STUDYUSER DATABASE: GetAllStudyUsersByUserId()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the study users by user id", err)
		}
	}()

	dbStudyUsers := []models.DBStudyUser{}
	studyUsers := []models.StudyUser{}

	user, getUserHttpStatus := userRepositoryImpl.GetUserById(userId)
	if !common.HTTPRequestIsSuccessful(getUserHttpStatus.Status) {
		return studyUsers, getUserHttpStatus
	}

	httpStatus := baseRepositoryImpl.GetAllBy(
		&dbStudyUsers,
		`
			SELECT user_id, study_id, completion_code, register_date, due_date, current_task_index, has_accepted_consent, lang, data
			FROM study_users
			WHERE user_id = ?
		`,
		userId,
	)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return studyUsers, httpStatus
	}

	for _, dbStudyUser := range dbStudyUsers {
		study, getStudyHttpStatus := studyRepositoryImpl.GetStudyById(dbStudyUser.StudyID)
		if !common.HTTPRequestIsSuccessful(getStudyHttpStatus.Status) {
			return []models.StudyUser{}, getStudyHttpStatus
		}

		studyUser := models.StudyUser{
			User:               user,
			Study:              study,
			CompletionCode:     dbStudyUser.CompletionCode,
			RegisterDate:       dbStudyUser.RegisterDate,
			DueDate:            dbStudyUser.DueDate,
			CurrentTaskIndex:   dbStudyUser.CurrentTaskIndex,
			HasAcceptedConsent: dbStudyUser.HasAcceptedConsent,
			Lang:               dbStudyUser.Lang,
			Data:               dbStudyUser.Data,
		}

		studyUsers = append(studyUsers, studyUser)
	}

	return studyUsers, models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// type StudyUser struct {
// 	User               *User              `json:"user"`
// 	Study              *Study             `json:"study"`
// 	CompletionCode     string             `json:"completionCode"`
// 	RegisterDate       time.Time          `json:"registerDate"`
// 	DueDate            sql.NullTime       `json:"dueDate"`
// 	CurrentTaskIndex   int                `json:"currentTaskIndex"`
// 	HasAcceptedConsent bool               `json:"hasAcceptedConsent"`
// 	Lang               string             `json:"lang"`
// 	Data               MapStringInterface `json:"data"`
// }

// func (o *OrganizationRepository) GetOrganizationById(organizationId uint) (models.Organization, models.HTTPStatus) {
// 	axonlogger.InfoLogger.Println("ORGANIZATION DATABASE: GetOrganizationById()")

// 	organization := models.Organization{}

// 	baseRespositoryImpl := BaseRepository{}
// 	httpStatus := baseRespositoryImpl.GetOneBy(
// 		&organization,
// 		`
// 			SELECT id, name, logo_path
// 			FROM organizations
// 			WHERE id = ?
// 			LIMIT 1
// 		`,
// 		organizationId,
// 	)
// 	return organization, httpStatus
// }
