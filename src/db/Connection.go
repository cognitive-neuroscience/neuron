package db

import (
	"errors"
	"os"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	_ "github.com/go-sql-driver/mysql" // import mysql driver
	"github.com/jmoiron/sqlx"
)

/*
 * Database file that deals with config. Looks for a .env file to set the env, and connect to the right DB
 */

// ENV holds the environment we are using and exposes the global DB reference
var (
	ENV string
	DB  *sqlx.DB
)

// SetEnvironment reads the loaded .env file and sets the environment
func SetEnvironment() {
	env, exists := os.LookupEnv("ENV")

	// default environment to dev
	if !exists {
		ENV = "DEV"
	}
	ENV = env
	axonlogger.InfoLogger.Printf("Starting up %s environment", ENV)
}

// ConnectDB instantiates a mysql connection
func ConnectDB() {

	dbConnectionDetails, err := getDBConnectionDetails()
	if err != nil {
		axonlogger.ErrorLogger.Panic("No DB connection details available")
	}

	DB = sqlx.MustConnect("mysql", dbConnectionDetails)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not connect to mysql database", err.Error())
		axonlogger.ErrorLogger.Panic(err.Error())
	}
	axonlogger.InfoLogger.Println("Connected to database")
}

// helper function which takes the given ENV and grabs the connections details from the .env file
func getDBConnectionDetails() (string, error) {
	switch ENV {
	case "DEV":
		return getConnectionDetailsFromOs("DEVDB")
	case "UAT":
		return getConnectionDetailsFromOs("UATDB")
	case "PROD":
		return getConnectionDetailsFromOs("PRODDB")
	default:
		// realistically we should never reach here because we default to dev
		return "", errors.New("Unrecognized environment: " + ENV)
	}
}

func getConnectionDetailsFromOs(envStr string) (string, error) {
	env, exists := os.LookupEnv(envStr)
	if !exists {
		return "", errors.New("no dev connection details")
	}
	return env, nil
}
