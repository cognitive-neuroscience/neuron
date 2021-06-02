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

	axonlogger.InfoLogger.Println("Setting up Experiment Table")
	DB.MustExec(models.ExperimentSchema)
	axonlogger.InfoLogger.Println("Setting up Task Table")
	DB.MustExec(models.TaskSchema)
	axonlogger.InfoLogger.Println("Setting up Users Table")
	DB.MustExec(models.UserSchema)
	axonlogger.InfoLogger.Println("Setting up Notifications Table")
	DB.MustExec(models.NotificationSchema) // REF experiment id
	axonlogger.InfoLogger.Println("Setting up Task Table")
	DB.MustExec(models.ExperimentTaskSchema) // REF experiment id and task id
	axonlogger.InfoLogger.Println("Setting up ExperimentUser Table")
	DB.MustExec(models.ExperimentUserSchema) // REF experiment id and user id
	axonlogger.InfoLogger.Println("Setting up Data Table")
	DB.MustExec(models.ParticipantDataSchema) // REF experiment_task composite key

	if err := populateBaseTasks(); err != nil {
		axonlogger.WarningLogger.Println("Unable to populate tasks", err)
	}

	log.Println("MySQL migrations complete")
}

func populateBaseTasks() error {
	var err error

	var baseTaskInsertCommand = `
		INSERT INTO tasks VALUES
			(
				NULL, 
				"psharplab",
				"nab",
				"task/digitspan",
				"Digit Span",
				"The participant reads a sequence of numbers and enters them in the same or reverse order",
				NULL,
				"digitspan"
			),
			(
				NULL,
				"psharplab",
				"nab",
				"task/fingertapping",
				"Finger Tapping Task",
				"The participant uses their dominant or non dominant hand to tap the 'P' and 'Q' characters as quickly as they can",
				NULL,
				"fingertapping"
			),
			(
				NULL,
				"psharplab",
				"nab",
				"task/nback",
				"N-Back",
				"The participant sees a sequence of letters and presses the left or right arrow arrow key to indicate if they saw that letter 2 letters ago",
				NULL,
				"nback"
			),
			(
				NULL,
				"psharplab",
				"nab",
				"task/stroop",
				"Stroop Task",
				"The participant sees either the word RED, BLUE, or GREEN. The participant has to press 1 if the word is colored red, 2 if the word is colored blue, or 3 if the word is colored green",
				NULL,
				"stroop"
			),
			(
				NULL,
				"psharplab",
				"nab",
				"task/trailmaking",
				"Trail Making",
				"The participant clicks different buttons in sequential order as fast as possible",
				NULL,
				"trailmaking"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/colorgame",
				"Color Game",
				"Description of Color Game",
				NULL,
				"colorgame"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/shapegame",
				"Shape Game",
				"Description of Shape Game",
				NULL,
				"shapegame"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/taskswitching",
				"Task Switching",
				"The participant is given a number from 1 - 4 or from 6 - 9. If the number if blue, then the participant should press the arrow keys to indicate whether the number if odd or even. If the number is orange, the participant should press the arrow keys to indicate whether the number if less than or greater than 5",
				NULL,
				"taskswitching"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/demandselection",
				"Demand Selection",
				"The participant selects one of two patches on the screen and is then presented with the task switching task. One patch is more difficult and switches more often than the other",
				NULL,
				"demandselection"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/smileyface",
				"Smiley Face",
				"Description of Smiley Face Game",
				NULL,
				"smileyface"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/oddball",
				"Oddball Task",
				"Description of the Oddball Task",
				NULL,
				"oddball"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/rating",
				"Rating Game",
				"Part 1 of the every day choice task",
				NULL,
				"rating"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/choice",
				"Choice Task",
				"Part 2 of the every day choice task",
				NULL,
				"choice"
			),
			(
				NULL,
				"psharplab",
				"experimental",
				"task/postchoice",
				"Post Choice Game",
				"Part 3 of the every day choice task",
				NULL,
				"postchoice"
			),
			(
				NULL,
				"psharplab",
				"consent",
				"task/consent",
				"Consent Form",
				"Consent Form",
				NULL,
				"consent"
			);
	`
	_, err = DB.Exec(baseTaskInsertCommand)

	return err
}
