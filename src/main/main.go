package main

import (
	"github.com/cognitive-neuroscience/neuron/src/setup"
	"github.com/joho/godotenv"
)

// ENV is the environment we are using
var ENV string

func main() {
	loadEnv()
	setup.Setup()
	setup.SetEnvironment()
	setup.ConnectDB()
	setup.MakeTables()
	setup.CreateServer()
	defer setup.DB.Close()
}

func loadEnv() {
	// check for current directory, and if no env, check for prod path
	if err := godotenv.Load(); err != nil {
		if err := godotenv.Load("/usr/sbin/sharplab/.env"); err != nil {
			panic("Can't find .env file")
		}
	}
}
