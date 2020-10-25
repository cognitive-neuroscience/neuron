package router

import (
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/controllers"
	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/gofiber/fiber"
)

// RegisterRoutes registers all API routes for the application
func RegisterRoutes(app *fiber.App) {
	app.Use(middleware.AddHeaders)

	var api = app.Group("/api")

	setUpUserRoutes(api)
	setUpExperimentRoutes(api)
	setUpTaskRoutes(api)
	setUpLoginRoutes(api)
	setUpTokenRoutes(api)
	setUpUploadRoutes(api)
	setUpDownloadRoutes(api)
	setUpQuestionnaireRoutes(api)
}

func setUpUserRoutes(group fiber.Router) {
	users := group.Group("/users")
	users.Get("/", controllers.GetAllUsers)
	users.Post("/", controllers.SaveUser)
	users.Post("/complete", controllers.MarkAsComplete)
	users.Get("/:userid/:code", controllers.GetCompletionCode)
	users.Options("/*", handleOptions)
	users.All("/*", handleForbidden)
}

func setUpExperimentRoutes(group fiber.Router) {
	experiments := group.Group("/experiments")
	experiments.Get("/", controllers.GetAllExperiments)
	experiments.Get("/:code", controllers.GetExperiment)
	experiments.Post("/", controllers.SaveExperiment)
	experiments.Delete("/:code", controllers.DeleteExperiment)
	experiments.Options("/*", handleOptions)
	experiments.All("/*", handleForbidden)
}

func setUpTaskRoutes(group fiber.Router) {
	tasks := group.Group("/tasks")
	tasks.Get("/", controllers.GetAllTasks)
	tasks.Options("/*", handleOptions)
	tasks.All("/*", handleForbidden)
}

func setUpLoginRoutes(group fiber.Router) {
	login := group.Group("/login")
	login.Post("/", controllers.Login)
	login.Post("/turker", controllers.LoginTurker)
	login.Options("/*", handleOptions)
	login.All("/*", handleForbidden)
}

func setUpTokenRoutes(group fiber.Router) {
	token := group.Group("/token")
	token.Post("/", controllers.ValidateToken)
	token.Options("/*", handleOptions)
	token.All("/*", handleForbidden)
}

func setUpUploadRoutes(group fiber.Router) {
	upload := group.Group("/upload")
	upload.Post("/:code/:taskName", controllers.UploadTaskData)
	upload.Options("/*", handleOptions)
	upload.All("/*", handleForbidden)
}

func setUpDownloadRoutes(group fiber.Router) {
	download := group.Group("/download")
	download.Get("/", controllers.GetTableNames)
	download.Get("/:code/:taskName", controllers.GetTableData)
	download.Options("/*", handleOptions)
	download.All("/*", handleForbidden)
}

func setUpQuestionnaireRoutes(group fiber.Router) {
	questionnaire := group.Group("/questionnaire")
	questionnaire.Post("/", controllers.SaveQuestionnaireResponse)
	questionnaire.Options("/*", handleOptions)
	questionnaire.All("/*", handleForbidden)
}

// returns MethodNotAllowed when client tries to access unsupported HTTP request
func handleForbidden(c *fiber.Ctx) {
	log.Println("FORBIDDEN!")
	c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
}

// returns StatusOK when options are sent
func handleOptions(c *fiber.Ctx) {
	c.SendStatus(http.StatusOK)
}
