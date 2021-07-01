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
	setUpStudyRoutes(api)
	setUpLoginRoutes(api)
	setUpTokenRoutes(api)
	setUpStudyDataRoutes(api)
	setUpDownloadRoutes(api)
	setUpQuestionnaireRoutes(api)
	setUpTaskRoutes(api)
}

func setUpUserRoutes(group *echo.Group) {
	userControllerImpl := controllers.UserController{}
	users := group.Group("/users")
	users.GET("", userControllerImpl.GetUser)
	users.POST("", userControllerImpl.SaveUser)
	users.GET("/guests", userControllerImpl.GetGuests)
	users.DELETE("/:id", userControllerImpl.DeleteUserById)
	// users.Post("/complete", controllers.MarkAsComplete)
	// users.Get("/:userid/:code", controllers.GetCompletionCode)
	// users.Get("/guests", controllers.GetGuests)
	// users.Delete("/:email", controllers.DeleteUserByEmail)
	// users.Options("/*", handleOptions)
	// users.All("/*", handleForbidden)
}

func setUpCrowdsourceUserRoutes(group *echo.Group) {
	userControllerImpl := controllers.UserController{}
	users := group.Group("/crowdsourcedusers")
	users.POST("", userControllerImpl.SaveCrowdsourcedUser)
	users.GET("/:studyId", userControllerImpl.GetCrowdsourcedUser)
	users.PATCH("/:studyId", userControllerImpl.RegisterCompletion)
}

func setUpStudyRoutes(group *echo.Group) {
	studiesControllerImpl := controllers.StudyController{}
	studies := group.Group("/studies")
	studies.POST("", studiesControllerImpl.SaveStudy)
	studies.GET("", studiesControllerImpl.GetAllStudies)
	studies.GET("/:studyId", studiesControllerImpl.GetStudyById)
	studies.PUT("/:id", studiesControllerImpl.UpdateStudy)
	studies.DELETE("/:id", studiesControllerImpl.DeleteStudyById)
	// experiments.Get("/", controllers.GetAllExperiments)
	// experiments.Get("/:code", controllers.GetExperiment)
	// experiments.Post("/", controllers.SaveExperiment)
	// experiments.Delete("/:code", controllers.DeleteExperiment)
	// experiments.Options("/*", handleOptions)
	// experiments.All("/*", handleForbidden)
}

func setUpLoginRoutes(group *echo.Group) {
	loginControllerImpl := controllers.LoginController{}
	group.POST("/logout", loginControllerImpl.Logout)
	login := group.Group("/login")
	login.POST("", loginControllerImpl.Login)
	// login.Post("/turker", controllers.LoginTurker)
	// login.Options("/*", handleOptions)
	// login.All("/*", handleForbidden)
}

func setUpTokenRoutes(group *echo.Group) {
	// 	token := group.Group("/token")
	// 	token.Post("/", controllers.ValidateToken)
	// 	token.Options("/*", handleOptions)
	// 	token.All("/*", handleForbidden)
}

func setUpStudyDataRoutes(group *echo.Group) {
	studyDataControllerImpl := controllers.StudyDataController{}
	studyData := group.Group("/studydata")
	studyData.POST("/feedback", studyDataControllerImpl.UploadFeedback)
	studyData.POST("", studyDataControllerImpl.UploadTaskData)
	studyData.GET("/:studyId/:taskOrder", studyDataControllerImpl.GetTaskData)
}

// func setUpUploadRoutes(group *echo.Group) {
// upload := group.Group("/upload")
// upload.Post("/:code/:taskName", controllers.UploadTaskData)
// upload.Options("/*", handleOptions)
// upload.All("/*", handleForbidden)
// }

func setUpDownloadRoutes(group *echo.Group) {
	// download := group.Group("/download")
	// download.Get("/:code/:taskName", controllers.GetTableData)
	// download.Options("/*", handleOptions)
	// download.All("/*", handleForbidden)
}

func setUpQuestionnaireRoutes(group *echo.Group) {
	// questionnaire := group.Group("/questionnaire")
	// questionnaire.Get("/", controllers.GetAllQuestionnaires)
	// questionnaire.Delete("/:id", controllers.DeleteQuestionnaireByID)
	// questionnaire.Post("/", controllers.SaveQuestionnaire)
	// questionnaire.Post("/demographics", controllers.SaveDemographicsQuestionnaireResponse)
	// questionnaire.Post("/feedback", controllers.SaveFeedbackQuestionnaireResponse)
	// questionnaire.Options("/*", handleOptions)
	// questionnaire.All("/*", handleForbidden)
}

func setUpTaskRoutes(group *echo.Group) {
	taskControllerImpl := controllers.TaskController{}
	task := group.Group("/tasks")
	task.GET("", taskControllerImpl.GetAllTasks)
	task.GET("/:id", taskControllerImpl.GetTasksByStudyId)
	// task.GET("/", controllers.GetAllSharplabRoutes)
	// task.Get("/", controllers.GetAllCustomTasks)
	// task.Post("/", controllers.SaveCustomTask)
	// task.Delete("/:id", controllers.DeleteCustomTaskByID)
	// task.Options("/*", handleOptions)
	// task.All("/*", handleForbidden)
}

// // returns StatusOK when options are sent
// func handleOptions(c *fiber.Ctx) {
// 	c.SendStatus(http.StatusOK)
// }
