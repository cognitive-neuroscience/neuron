package router

import (
	"github.com/cognitive-neuroscience/neuron/src/controllers"
	"github.com/gofiber/fiber"
)

// RegisterRoutes registers all API routes for the application
func RegisterRoutes(app *fiber.App) {
	app.Group("/api/users", controllers.UserController)
	app.Group("/api/login", controllers.LoginController)
	app.Group("/api/token", controllers.TokenController)
	app.Group("/api/upload", controllers.UploadController)
}
