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

	api.Group("/login", controllers.LoginController)
	api.Group("/token", controllers.TokenController)
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

// func setUpLoginRoutes() {

// }

// func setUpTokenRoutes() {

// }

// func setUpUploadRoutes() {

// }

func handleForbidden(c *fiber.Ctx) {
	log.Println("FORBIDDEN!")
	c.Status(http.StatusMethodNotAllowed).JSON(&models.HTTPErrorStatus{Status: http.StatusMethodNotAllowed, Message: http.StatusText(http.StatusMethodNotAllowed)})
}

func handleOptions(c *fiber.Ctx) {
	c.SendStatus(http.StatusOK)
}
