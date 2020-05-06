package server

import (
	"os"

	"github.com/cognitive-neuroscience/neuron/src/router"
	"github.com/gofiber/fiber"
)

// CreateServer creates a HTTP server
func CreateServer() {
	port := os.Getenv("NEURON_PORT")
	if port == "" {
		port = "8181"
	}
	app := fiber.New()
	router.RegisterRoutes(app)
	app.Listen(port)
}
