package database

import (
	"errors"
	"log"
	"os"

	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql" // MySQL Dialect for GORM
	"github.com/qor/validations"
)

/*
 * Database file that deals with config. Looks for a .env file to set the env, and connect to the right DB
 */

// ENV holds the environment we are using
var ENV string

var mySQL string = "mysql"

// SetEnvironment reads the loaded .env file and sets the environment
func SetEnvironment() {
	env, exists := os.LookupEnv("ENV")

	// default environment to dev
	if !exists {
		ENV = "DEV"
	}
	ENV = env
	log.Printf("Starting up %s environment", ENV)
}

// ConnectDB instantiates a mongoDB connection
func ConnectDB() {

	dbConnectionDetails, err := getDBConnectionDetails()
	if err != nil {
		log.Panic("No DB connection details available")
	}

	DBConn, err = gorm.Open(mySQL, dbConnectionDetails)
	if err != nil {
		log.Panic(err.Error())
	}

	validations.RegisterCallbacks(DBConn)
	log.Println("Connected to database")
}

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
		return "", errors.New("Unrecognized environment")
	}
}

func getConnectionDetailsFromOs(envStr string) (string, error) {
	env, exists := os.LookupEnv(envStr)
	if !exists {
		return "", errors.New("No dev connection details")
	}
	return env, nil
}
