package setup

import (
	"github.com/cognitive-neuroscience/neuron/src/controllers"
	"github.com/labstack/echo/v4"
)

// RegisterRoutes registers all API routes for the application
func registerRoutes(app *echo.Echo) {

	var api = app.Group("/api")

	setUpUserRoutes(api)
	setUpCrowdsourceUserRoutes(api)
	setUpStudyUserRoutes(api)

	setUpStudyRoutes(api)
	setUpAuthRoutes(api)
	setUpParticipantDataRoutes(api)
	setUpTaskRoutes(api)

	setUpSummaryRoutes(api)
}

func setUpUserRoutes(group *echo.Group) {
	userControllerImpl := controllers.UserController{}
	users := group.Group("/users")

	users.POST("", userControllerImpl.CreateUser)
	users.GET("", userControllerImpl.GetUsersByOrganizationId) // takes a query param (organizationId)
	users.GET("/:userId", userControllerImpl.GetUserById)
	users.PATCH("/:userId", userControllerImpl.UpdateUser)
	users.DELETE("/:userId", userControllerImpl.DeleteUserById)
	users.GET("/:userId/studyusers", userControllerImpl.GetStudyUsersByUserId)
	users.PUT("/password", userControllerImpl.UpdateUserPassword)
	users.PUT("/forgotpassword", userControllerImpl.HandleForgotPassword)
}

func setUpCrowdsourceUserRoutes(group *echo.Group) {
	crowdSourcedUserController := controllers.CrowdSourcedUserController{}
	crowdsourcedusers := group.Group("/crowdsourcedusers")
	crowdsourcedusers.POST("", crowdSourcedUserController.CreateCrowdSourcedUserAndLogin)
	crowdsourcedusers.GET("/:crowdSourcedUserId/:studyId", crowdSourcedUserController.GetCrowdSourcedUserByCrowdSourcedUserAndStudyId)
	crowdsourcedusers.PATCH("/:crowdSourcedUserId/:studyId/complete", crowdSourcedUserController.HandleSetComplete)
}

func setUpStudyUserRoutes(group *echo.Group) {
	studyUserControllerImpl := controllers.StudyUserController{}
	studyUsers := group.Group("/studyusers")

	studyUsers.POST("", studyUserControllerImpl.CreateStudyUser)
	studyUsers.PATCH("/:userId/:studyId", studyUserControllerImpl.UpdateStudyUser)
}

func setUpStudyRoutes(group *echo.Group) {
	studiesControllerImpl := controllers.StudyController{}
	studies := group.Group("/studies")

	studies.POST("", studiesControllerImpl.CreateStudy)
	studies.GET("", studiesControllerImpl.GetStudiesByOrganization) // takes a query param (organizationId)
	studies.GET("/:studyId", studiesControllerImpl.GetStudyById)
	studies.GET("/:studyId/crowdsourcedusers", studiesControllerImpl.GetCrowdSourcedUsersByStudyId)
	studies.GET("/:studyId/studyusers", studiesControllerImpl.GetStudyUsersByStudyId)
	studies.PATCH("/:studyId/snapshot", studiesControllerImpl.SnapshotStudyByStudyId)
	studies.PATCH("/:studyId", studiesControllerImpl.UpdateStudy) // takes a query param (updateTasks)
	studies.DELETE("/:studyId", studiesControllerImpl.ArchiveStudyById)
}

func setUpAuthRoutes(group *echo.Group) {
	authControllerImpl := controllers.AuthController{}
	auth := group.Group("/auth")
	auth.POST("/login", authControllerImpl.Login)
	auth.DELETE("/logout", authControllerImpl.Logout)
	auth.GET("/csrf", authControllerImpl.CSRF)
}

func setUpParticipantDataRoutes(group *echo.Group) {
	participantDataControllerImpl := controllers.ParticipantDataController{}
	studyData := group.Group("/participantdata")
	studyData.POST("", participantDataControllerImpl.CreateParticipantData)
	studyData.GET("/:studyId/:taskOrder", participantDataControllerImpl.GetParticipantDataByStudyIdAndTaskOrder)
	studyData.GET("/:studyId", participantDataControllerImpl.GetParticipantDataByStudyIdWithFilters)
}

func setUpSummaryRoutes(group *echo.Group) {
	summaryControllerImpl := controllers.SummaryController{}
	summary := group.Group("/summary")
	summary.GET("/studyusersummary", summaryControllerImpl.GetStudyUsersSummary)
}

func setUpTaskRoutes(group *echo.Group) {
	taskControllerImpl := controllers.TaskController{}
	task := group.Group("/tasks")
	task.GET("", taskControllerImpl.GetAllTasks)
	task.GET("/:taskId", taskControllerImpl.GetTaskById)
}
