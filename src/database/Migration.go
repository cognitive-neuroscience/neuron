package database

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// AutoMigrate will start mysql db migration
func AutoMigrate() {
	log.Println("Starting MySQL migrations")
	DBConn.DropTableIfExists(&models.Task{})
	DBConn.AutoMigrate(&models.User{}, &models.Experiment{}, &models.Task{})
	log.Println("MySQL migrations complete")
}
