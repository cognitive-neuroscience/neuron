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
	setUpTurkerRoutes(api)

	api.Group("/upload", controllers.UploadController)
}

func setUpUserRoutes(group fiber.Router) {
	users := group.Group("/users")
	users.Get("/", controllers.GetAllUsers)
	users.Post("/", controllers.SaveUser)
	users.Options("/*", handleOptions)
	users.All("/*", handleForbidden)
}

func setUpExperimentRoutes(group fiber.Router) {
	experiments := group.Group("/experiments")
	experiments.Get("/", controllers.GetAllExperiments)
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
	login.Options("/*", handleOptions)
	login.All("/*", handleForbidden)
}

func setUpTokenRoutes(group fiber.Router) {
	token := group.Group("/token")
	token.Post("/", controllers.ValidateToken)
	token.Options("/*", handleOptions)
	token.All("/*", handleForbidden)
}

func setUpTurkerRoutes(group fiber.Router) {
	turker := group.Group("/turker")
	turker.Post("/", controllers.SaveTurker)
	turker.Options("/*", handleOptions)
	turker.All("/*", handleForbidden)
}

// func setUpUploadRoutes() {

// }

// returns MethodNotAllowed when client tries to access unsupported HTTP request
func handleForbidden(c *fiber.Ctx) {
	log.Println("FORBIDDEN!")
	c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPErrorStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
}

// returns StatusOK when options are sent
func handleOptions(c *fiber.Ctx) {
	c.SendStatus(http.StatusOK)
}
