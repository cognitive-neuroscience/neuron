package main

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/server"
)

func main() {
	database.ConnectDB()
	database.AutoMigrate()
	database.AutoPopulate()
	server.CreateServer()
}
