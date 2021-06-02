package main

import (
	"github.com/cognitive-neuroscience/neuron/src/db"
	"github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/setup"
	"github.com/joho/godotenv"
)

// ENV is the environment we are using
var ENV string

func main() {
	loadEnv()
	logger.Setup()
	db.SetEnvironment()
	db.ConnectDB()
	db.MakeTables()
	setup.CreateServer()
}

func loadEnv() {
	// check for current directory, and if no env, check for prod path
	if err := godotenv.Load(".env"); err != nil {
		if err := godotenv.Load("/usr/sbin/sharplab/.env"); err != nil {
			panic("Can't find .env file")
		}
	}
}
