package database

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// AutoMigrate will start mysql db migration
func AutoMigrate() {
	log.Println("Starting MySQL migrations")

	DBConn.AutoMigrate(
		&models.ExperimentTask{},
		&models.User{},
		&models.Experiment{},
		&models.ExperimentUser{},
		&models.MturkQuestionnaireResponse{},
	)
	log.Println("MySQL migrations complete")
}
