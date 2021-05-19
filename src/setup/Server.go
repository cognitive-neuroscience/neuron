package setup

import (
	"os"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

// CreateServer creates a HTTP server
func CreateServer() {

	port := os.Getenv("NEURON_PORT")
	if port == "" {
		port = "8181"
	}

	e := echo.New()

	// configure file
	e.Use(middleware.LoggerWithConfig(middleware.LoggerConfig{
		Format: "INFO: ${time_custom} HTTP_METHOD:${method} URI:${uri} HTTP_CODE:${status}\n",
		// Output:           logFileRef,
		CustomTimeFormat: "2006/01/15 15:04:05",
	}))
	defer CloseLogFile()

	// use compression middleware
	e.Use(middleware.Gzip())

	// recovery from panic middleware
	e.Use(middleware.Recover())

	// rate limiting
	e.Use(middleware.RateLimiter(middleware.NewRateLimiterMemoryStore(20)))

	// app := fiber.New(fiber.Config{
	// 	ErrorHandler: func(c *fiber.Ctx, err error) error {
	// 		code := fiber.StatusInternalServerError
	// 		if e, ok := err.(*fiber.Error); ok {
	// 			code = e.Code
	// 		}
	// 		axonlogger.ErrorLogger.Println(err)
	// 		return c.Status(code).SendString("Internal Server Error")
	// 	},
	// })

	// // Register app routes
	router.RegisterRoutes(app)

	// axonlogger.InfoLogger.Println("Listening on port " + port)
	e.Logger.Fatal(e.Start(":" + port))
}
