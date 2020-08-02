package router

import (
	"github.com/cognitive-neuroscience/neuron/src/controllers"
	"github.com/gofiber/fiber"
)

// RegisterRoutes registers all API routes for the application
func RegisterRoutes(app *fiber.App) {
	api := app.Group("/api")

	users := api.Group("/users")
	setupUserControllerRoutes(users)

	experiments := api.Group("/experiments")
	setupExperimentControllerRoutes(experiments)

	login := api.Group("/login")
	setupLoginControllerRoutes(login)

	token := api.Group("/token")
	setUpTokenControllerRoutes(token)

	upload := api.Group("/upload")
	setUpUploadControllerRoutes(upload)

	app.Use(func(c *fiber.Ctx) {
		c.SendStatus(404)
	})
}

func setupUserControllerRoutes(group *fiber.Group) {
	group.Get("/", controllers.GetAllUsers)
	group.Post("/", controllers.SaveUser)
	group.Use(forbiddenHandler)
}

func setupExperimentControllerRoutes(group *fiber.Group) {
	group.Get("/", controllers.GetAllExperiments)
	group.Post("/", controllers.SaveExperiment)
	group.Use(forbiddenHandler)
}

func setupLoginControllerRoutes(group *fiber.Group) {
	group.Post("/", controllers.DoLogin)
	group.Use(forbiddenHandler)
}

func setUpTokenControllerRoutes(group *fiber.Group) {
	group.Post("/", controllers.ValidateToken)
	group.Use(forbiddenHandler)
}

func setUpUploadControllerRoutes(group *fiber.Group) {
	group.Post("/", controllers.DoUpload)
	group.Use(forbiddenHandler)
}

// Give forbidden error if any other HTTP methods are used
func forbiddenHandler(c *fiber.Ctx) {
	c.SendStatus(403)
}
