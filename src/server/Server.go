package server

import (
	"log"
	"os"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/router"
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/compress"
	"github.com/gofiber/fiber/v2/middleware/limiter"
	"github.com/gofiber/fiber/v2/middleware/logger"
	"github.com/gofiber/fiber/v2/middleware/recover"
)

// CreateServer creates a HTTP server
func CreateServer() {

	port := os.Getenv("NEURON_PORT")
	if port == "" {
		port = "8181"
	}

	// logging to external log file
	file, err := os.OpenFile(getLogPath(), os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)
	log.Println("Created log file", file)
	if err != nil {
		panic("Could not create log file to write to")
	}
	defer file.Close()
	axonlogger.Initialize(file) // initialize logger with given file to write to

	app := fiber.New(fiber.Config{
		ErrorHandler: func(c *fiber.Ctx, err error) error {
			code := fiber.StatusInternalServerError
			if e, ok := err.(*fiber.Error); ok {
				code = e.Code
			}
			axonlogger.ErrorLogger.Println(err)
			return c.Status(code).SendString("Internal Server Error")
		},
	})

	// Use logger to log HTTP requests
	app.Use(logger.New(logger.Config{
		TimeFormat: "2006/01/2 15:04:05",
		Format:     "INFO: ${time} ${method} ${url} ${status} ${error}\n",
		Output:     file,
	}))

	// Use compression
	app.Use(compress.New())

	// Use recovery from panic
	app.Use(recover.New())

	// Use API rate limiter
	app.Use(limiter.New(limiter.Config{
		Max:        40,
		Expiration: 5,
	}))

	// Register app routes
	router.RegisterRoutes(app)

	axonlogger.InfoLogger.Println("Listening on port " + port)
	app.Listen(":" + port)
}

func getLogPath() string {
	prodPath, exists := os.LookupEnv("PROD_LOG_PATH")

	if !exists {
		log.Println("Could not find PROD_LOG_PATH, using default log path")
		return "./axon.log"
	}
	log.Println("Retrieved log path", prodPath)
	return prodPath
}
