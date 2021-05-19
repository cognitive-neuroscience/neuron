// package router

// import (
// 	"net/http"

// 	"github.com/cognitive-neuroscience/neuron/src/controllers"
// 	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

// 	"github.com/cognitive-neuroscience/neuron/src/middleware"
// 	"github.com/cognitive-neuroscience/neuron/src/models"
// 	"github.com/gofiber/fiber/v2"
// )

// // RegisterRoutes registers all API routes for the application
// func RegisterRoutes(app *fiber.App) {
// 	app.Use(middleware.AddHeaders)

// 	var api = app.Group("/api")

// 	setUpUserRoutes(api)
// 	setUpExperimentRoutes(api)
// 	setUpLoginRoutes(api)
// 	setUpTokenRoutes(api)
// 	setUpUploadRoutes(api)
// 	setUpDownloadRoutes(api)
// 	setUpQuestionnaireRoutes(api)
// 	setUpTaskRoutes(api)
// }

// func setUpUserRoutes(group fiber.Router) {
// 	// users := group.Group("/users")
// 	// users.Post("/", controllers.SaveUser)
// 	// users.Post("/complete", controllers.MarkAsComplete)
// 	// users.Get("/:userid/:code", controllers.GetCompletionCode)
// 	// users.Get("/guests", controllers.GetGuests)
// 	// users.Delete("/:email", controllers.DeleteUserByEmail)
// 	// users.Options("/*", handleOptions)
// 	// users.All("/*", handleForbidden)
// }

// func setUpExperimentRoutes(group fiber.Router) {
// 	// experiments := group.Group("/experiments")
// 	// experiments.Get("/", controllers.GetAllExperiments)
// 	// experiments.Get("/:code", controllers.GetExperiment)
// 	// experiments.Post("/", controllers.SaveExperiment)
// 	// experiments.Delete("/:code", controllers.DeleteExperiment)
// 	// experiments.Options("/*", handleOptions)
// 	// experiments.All("/*", handleForbidden)
// }

// func setUpLoginRoutes(group fiber.Router) {
// 	// login := group.Group("/login")
// 	// login.Post("/", controllers.Login)
// 	// login.Post("/turker", controllers.LoginTurker)
// 	// login.Options("/*", handleOptions)
// 	// login.All("/*", handleForbidden)
// }

// func setUpTokenRoutes(group fiber.Router) {
// 	// 	token := group.Group("/token")
// 	// 	token.Post("/", controllers.ValidateToken)
// 	// 	token.Options("/*", handleOptions)
// 	// 	token.All("/*", handleForbidden)
// }

// func setUpUploadRoutes(group fiber.Router) {
// 	// upload := group.Group("/upload")
// 	// upload.Post("/:code/:taskName", controllers.UploadTaskData)
// 	// upload.Options("/*", handleOptions)
// 	// upload.All("/*", handleForbidden)
// }

// func setUpDownloadRoutes(group fiber.Router) {
// 	// download := group.Group("/download")
// 	// download.Get("/:code/:taskName", controllers.GetTableData)
// 	// download.Options("/*", handleOptions)
// 	// download.All("/*", handleForbidden)
// }

// func setUpQuestionnaireRoutes(group fiber.Router) {
// 	// questionnaire := group.Group("/questionnaire")
// 	// questionnaire.Get("/", controllers.GetAllQuestionnaires)
// 	// questionnaire.Delete("/:id", controllers.DeleteQuestionnaireByID)
// 	// questionnaire.Post("/", controllers.SaveQuestionnaire)
// 	// questionnaire.Post("/demographics", controllers.SaveDemographicsQuestionnaireResponse)
// 	// questionnaire.Post("/feedback", controllers.SaveFeedbackQuestionnaireResponse)
// 	// questionnaire.Options("/*", handleOptions)
// 	// questionnaire.All("/*", handleForbidden)
// }

// func setUpTaskRoutes(group fiber.Router) {
// 	task := group.Group("/task")
// 	task.Get("/", controllers.GetAllSharplabRoutes)
// 	// task.Get("/", controllers.GetAllCustomTasks)
// 	// task.Post("/", controllers.SaveCustomTask)
// 	// task.Delete("/:id", controllers.DeleteCustomTaskByID)
// 	// task.Options("/*", handleOptions)
// 	// task.All("/*", handleForbidden)
// }

// // returns MethodNotAllowed when client tries to access unsupported HTTP request
// func handleForbidden(c *fiber.Ctx) {
// 	axonlogger.WarningLogger.Println("Client has tried to make an unsupported request", c.Method(), c.Path())
// 	c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
// }

// // returns StatusOK when options are sent
// func handleOptions(c *fiber.Ctx) {
// 	c.SendStatus(http.StatusOK)
// }