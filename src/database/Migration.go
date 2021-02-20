package database

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for creating the tables in the DB based on the models on application startup
 */

// AutoMigrate will start mysql db migration
func AutoMigrate() {
	log.Println("Starting MySQL migrations")

	DBConn.AutoMigrate(
		&models.ExperimentTask{},
		&models.User{},
		&models.Experiment{},
		&models.ExperimentUser{},
		&models.DemographicsQuestionnaireResponse{},
		&models.FeedbackQuestionnaireResponse{},
		&models.Questionnaire{},
		// Task databases
		&models.Stroop{},
		&models.NBack{},
		&models.TaskSwitching{},
		&models.TrailMaking{},
		&models.DemandSelection{},
		&models.FingerTapping{},
		&models.DigitSpan{},
		&models.Oddball{},
		&models.SmileyFace{},
		&models.Rating{},
		&models.Choice{},
		&models.PostChoice{},
	)
	log.Println("MySQL migrations complete")
}
