package database

import (
	"github.com/cognitive-neuroscience/neuron/src/models"
	"log"
)

// AutoMigrate will start mysql db migration
func AutoMigrate() {
	log.Println("Starting MySQL migrations")
	DBConn.AutoMigrate(&models.User{})
	log.Println("MySQL migrations complete")
}
