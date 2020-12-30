package server

import (
	"os"

	"github.com/cognitive-neuroscience/neuron/src/router"
	"github.com/gofiber/compression"
	"github.com/gofiber/fiber"
	"github.com/gofiber/limiter"
	"github.com/gofiber/logger"
	"github.com/gofiber/recover"
)

// CreateServer creates a HTTP server
func CreateServer() {
	port := os.Getenv("NEURON_PORT")
	if port == "" {
		port = "8181"
	}
	app := fiber.New()

	// Use compression
	app.Use(compression.New())

	// Use recovery from panic
	recoverConf := recover.Config{
		Handler: func(c *fiber.Ctx, err error) {
			c.SendString(err.Error())
			c.SendStatus(500)
		},
	}
	app.Use(recover.New(recoverConf))

	// Use logger to log HTTP requests
	app.Use(logger.New())

	// Use API rate limiter
	limiterConf := limiter.Config{
		Max:     40,
		Timeout: 5,
	}
	app.Use(limiter.New(limiterConf))

	// Register app routes
	router.RegisterRoutes(app)

	app.Listen(port)
}
