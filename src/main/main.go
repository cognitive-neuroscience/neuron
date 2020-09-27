package main

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/server"
	"github.com/joho/godotenv"
)

// ENV is the environment we are using
var ENV string

func main() {
	loadEnv()
	database.SetEnvironment()
	database.ConnectDB()
	database.AutoMigrate()
	database.AutoPopulate()
	server.CreateServer()
}

func loadEnv() {
	if err := godotenv.Load(); err != nil {
		log.Print("No .env file")
		panic(".env file required")
	}
}
