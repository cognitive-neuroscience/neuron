package setup

import (
	"github.com/cognitive-neuroscience/neuron/src/controllers"
	"github.com/labstack/echo/v4"
)

// RegisterRoutes registers all API routes for the application
func registerRoutes(app *echo.Echo) {

	var api = app.Group("/api")

	// all user route related
	setUpUserRoutes(api)
	setUpCrowdsourceUserRoutes(api)
	setUpStudyUserRoutes(api)

	setUpStudyRoutes(api)
	setUpLoginRoutes(api)
	setUpStudyDataRoutes(api)
	setUpTaskRoutes(api)
	setUpEmailRoutes(api)
}

func setUpUserRoutes(group *echo.Group) {
	userControllerImpl := controllers.UserController{}
	users := group.Group("/users")
	users.GET("", userControllerImpl.GetUser)
	users.POST("", userControllerImpl.SaveUser)
	users.GET("/guests", userControllerImpl.GetGuests)
	users.DELETE("/:id", userControllerImpl.DeleteUserById)
	users.POST("/changepassword", userControllerImpl.ChangePassword)
}

func setUpStudyUserRoutes(group *echo.Group) {
	userControllerImpl := controllers.UserController{}
	studyUsers := group.Group("/studyusers")
	studyUsers.GET("/:studyId", userControllerImpl.GetStudyUsersForStudy)
	studyUsers.GET("/studies", userControllerImpl.GetAllStudyUsersForLoggedInUser)
	studyUsers.PATCH("", userControllerImpl.UpdateStudyUser)
	// studyUsers.GET("", userControllerImpl.GetStudyUser)
	studyUsers.POST("", userControllerImpl.SaveStudyUser)
}

func setUpCrowdsourceUserRoutes(group *echo.Group) {
	userControllerImpl := controllers.UserController{}
	crowdsourcedusers := group.Group("/crowdsourcedusers")
	crowdsourcedusers.POST("", userControllerImpl.SaveCrowdsourcedUser)
	crowdsourcedusers.GET("/user/:studyId", userControllerImpl.GetCrowdsourcedUser)
	crowdsourcedusers.GET("/:studyId", userControllerImpl.GetCrowdSourcedUsersByStudyId)
	crowdsourcedusers.PATCH("/:studyId", userControllerImpl.RegisterCrowdsourcedUserCompletion)
}

func setUpStudyRoutes(group *echo.Group) {
	studiesControllerImpl := controllers.StudyController{}
	studies := group.Group("/studies")
	studies.POST("", studiesControllerImpl.SaveStudy)
	studies.GET("", studiesControllerImpl.GetAllStudies)
	studies.GET("/:studyId", studiesControllerImpl.GetStudyById)
	studies.PUT("/:id", studiesControllerImpl.UpdateStudy)
	studies.DELETE("/:studyId", studiesControllerImpl.DeleteStudyById)
}

func setUpLoginRoutes(group *echo.Group) {
	loginControllerImpl := controllers.LoginController{}
	group.POST("/logout", loginControllerImpl.Logout)
	login := group.Group("/login")
	login.POST("", loginControllerImpl.Login)
}

func setUpStudyDataRoutes(group *echo.Group) {
	studyDataControllerImpl := controllers.StudyDataController{}
	studyData := group.Group("/studydata")
	studyData.POST("/feedback", studyDataControllerImpl.UploadFeedback)
	studyData.GET("/feedback/:studyId", studyDataControllerImpl.GetFeedbackForStudyId)
	studyData.POST("", studyDataControllerImpl.UploadTaskData)
	studyData.GET("/:studyId/:taskOrder", studyDataControllerImpl.GetTaskData)
}

func setUpTaskRoutes(group *echo.Group) {
	taskControllerImpl := controllers.TaskController{}
	task := group.Group("/tasks")
	task.GET("", taskControllerImpl.GetAllTasks)
	task.GET("/:taskId", taskControllerImpl.GetTaskByTaskId)
}

func setUpEmailRoutes(group *echo.Group) {
	emailControllerImpl := controllers.EmailController{}
	email := group.Group("/email")
	email.POST("", emailControllerImpl.SendEmail)
}
