package main

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/router"
	"github.com/cognitive-neuroscience/neuron/src/server"
)

func main() {
	router.RegisterRoutes()
	database.ConnectDB()
	database.AutoMigrate()
	server.CreateServer()
}