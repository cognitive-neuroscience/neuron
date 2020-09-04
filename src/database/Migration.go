package database

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// AutoMigrate will start mysql db migration
func AutoMigrate() {
	log.Println("Starting MySQL migrations")

	// remove this later
	// DBConn.DropTableIfExists(&models.ExperimentTask{})
	// DBConn.DropTableIfExists(&models.Experiment{})
	// DBConn.DropTableIfExists(&models.Task{})

	DBConn.AutoMigrate(&models.ExperimentTask{}, &models.User{}, &models.Experiment{}, &models.Task{})
	log.Println("MySQL migrations complete")
}
