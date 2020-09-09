package router

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/controllers"
	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/gofiber/fiber"
)

// RegisterRoutes registers all API routes for the application
func RegisterRoutes(app *fiber.App) {
	app.Use(middleware.AddHeaders)

	var api = app.Group("/api")

	api.Group("/users", controllers.UserController)

	setUpExperimentRoutes(api)

	setUpTaskRoutes(api)

	// api.Group("/experiments", controllers.ExperimentController)
	api.Group("/login", controllers.LoginController)
	api.Group("/token", controllers.TokenController)
	api.Group("/upload", controllers.UploadController)
}

// func setupUserRoutes() {

// }

func setUpExperimentRoutes(group fiber.Router) {
	experiments := group.Group("/experiments")
	experiments.Get("/", controllers.GetAllExperiments)
	experiments.Post("/", controllers.SaveExperiment)
	experiments.Delete("/:code", controllers.DeleteExperiment)
	experiments.Options("/*", handleOptions)
}

func setUpTaskRoutes(group fiber.Router) {
	tasks := group.Group("/tasks")
	tasks.Get("/", controllers.GetAllTasks)
}

// func setUpLoginRoutes() {

// }

// func setUpTokenRoutes() {

// }

// func setUpUploadRoutes() {

// }

func handleOptions(c *fiber.Ctx) {
	c.SendStatus(http.StatusOK)
}
