package server

import (
	"os"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
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

	// logging to external file
	file, err := os.OpenFile("./axon.log", os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)
	if err != nil {
		panic("Could not create log file to write to")
	}
	defer file.Close()

	// initialize logger with given file to write to
	axonlogger.Initialize(file)

	// Use logger to log HTTP requests
	app.Use(logger.New(logger.Config{
		Output: file,
	}))

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
