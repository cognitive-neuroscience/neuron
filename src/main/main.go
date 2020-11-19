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
	server.CreateServer()
}

func loadEnv() {
	// check for current directory, and if no env, check for prod path
	if err := godotenv.Load(); err != nil {
		if err := godotenv.Load("/usr/sbin/sharplab/.env"); err != nil {
			log.Print("No .env file")
			panic(".env file required")
		}
	}
}
