package db

import (
	"log"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for creating the tables in the DB based on the models on application startup
 */

// MakeTables will start mysql db migration
func MakeTables() {
	axonlogger.InfoLogger.Println("Setting up SQL Tables")

	axonlogger.InfoLogger.Println("Setting up Organizations Table")
	DB.MustExec(models.OrganizationSchema)
	axonlogger.InfoLogger.Println("Setting up Task Table")
	DB.MustExec(models.TaskSchema)
	axonlogger.InfoLogger.Println("Setting up Study Table") // REF organization id
	DB.MustExec(models.StudySchema)
	axonlogger.InfoLogger.Println("Setting up Users Table") // REF organization id
	DB.MustExec(models.UserSchema)
	axonlogger.InfoLogger.Println("Setting up Crowdsource Users Table")
	DB.MustExec(models.CrowdSourcedUserSchema)
	axonlogger.InfoLogger.Println("Setting up StudyTask Table")
	DB.MustExec(models.StudyTaskSchema) // REF study id and task id
	axonlogger.InfoLogger.Println("Setting up StudyUser Table")
	DB.MustExec(models.StudyUserSchema) // REF study id and user id
	axonlogger.InfoLogger.Println("Setting up Data Table")
	DB.MustExec(models.ParticipantDataSchema) // REF study_task composite key
	axonlogger.InfoLogger.Println("Setting up Feedback Questionnaire Response Table")
	DB.MustExec(models.FeedbackQuestionnaireResponseSchema)

	log.Println("MySQL migrations complete")
}
