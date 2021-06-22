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

	axonlogger.InfoLogger.Println("Setting up Study Table")
	DB.MustExec(models.StudySchema)
	axonlogger.InfoLogger.Println("Setting up Task Table")
	DB.MustExec(models.TaskSchema)
	axonlogger.InfoLogger.Println("Setting up Users Table")
	DB.MustExec(models.UserSchema)
	axonlogger.InfoLogger.Println("Setting up Crowdsource Users Table")
	DB.MustExec(models.CrowdSourcedUserSchema)
	axonlogger.InfoLogger.Println("Setting up EmailNotifications Table")
	DB.MustExec(models.EmailNotificationSchema) // REF study id
	axonlogger.InfoLogger.Println("Setting up StudyTask Table")
	DB.MustExec(models.StudyTaskSchema) // REF study id and task id
	axonlogger.InfoLogger.Println("Setting up StudyUser Table")
	DB.MustExec(models.StudyUserSchema) // REF study id and user id
	axonlogger.InfoLogger.Println("Setting up Data Table")
	DB.MustExec(models.ParticipantDataSchema) // REF study_task composite key

	if err := populateBaseTasks(); err != nil {
		axonlogger.WarningLogger.Println("Unable to populate tasks", err)
	}

	log.Println("MySQL migrations complete")
}

func populateBaseTasks() error {
	var err error

	// var baseTaskInsertCommand = `
	// 	INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) VALUES
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"NAB",
	// 			"Digit Span",
	// 			"The participant reads a sequence of numbers and enters them in the same or reverse order",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"NAB",
	// 			"Finger Tapping Task",
	// 			"The participant uses their dominant or non dominant hand to tap the 'P' and 'Q' characters as quickly as they can",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"NAB",
	// 			"N-Back",
	// 			"The participant sees a sequence of letters and presses the left or right arrow arrow key to indicate if they saw that letter 2 letters ago",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"NAB",
	// 			"Stroop Task",
	// 			"The participant sees either the word RED, BLUE, or GREEN. The participant has to press 1 if the word is colored red, 2 if the word is colored blue, or 3 if the word is colored green",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"NAB",
	// 			"Trail Making",
	// 			"The participant clicks different buttons in sequential order as fast as possible",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"EXPERIMENTAL",
	// 			"Color Game",
	// 			"Description of Color Game",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"EXPERIMENTAL",
	// 			"Shape Game",
	// 			"Description of Shape Game",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"EXPERIMENTAL",
	// 			"Task Switching",
	// 			"The participant is given a number from 1 - 4 or from 6 - 9. If the number if blue, then the participant should press the arrow keys to indicate whether the number if odd or even. If the number is orange, the participant should press the arrow keys to indicate whether the number if less than or greater than 5",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"EXPERIMENTAL",
	// 			"Demand Selection",
	// 			"The participant selects one of two patches on the screen and is then presented with the task switching task. One patch is more difficult and switches more often than the other",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"EXPERIMENTAL",
	// 			"Smiley Face",
	// 			"Description of Smiley Face Game",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"EXPERIMENTAL",
	// 			"Oddball Task",
	// 			"Description of the Oddball Task",
	// 			"",
	// 			'{}'
	// 		),
	// 		(
	// 			NULL,
	// 			"PSHARPLAB",
	// 			"EXPERIMENTAL",
	// 			"Rating New",
	// 			"Modified rating task where the participant is required to rate their most preferred option when presented with a single activity or a list of activiites",
	// 			"",
	// 			'{"config":{"counterbalanced":true},"metadata":[{"component":"DISPLAYCOMPONENT","content":{"title":"Welcome to the Everyday Activities Game","sections":[{"sectionType":"text","textContent":"We are trying to understand how people fill their days with activities."},{"sectionType":"text","textContent":"In this task we will ask you about activities that you may do in your everyday life."},{"sectionType":"text","textContent":"There are two parts to the task: <br> 1) Answering questions about different activities <br> 2) Indicating your preference between different activities"},{"sectionType":"text","textContent":"Click NEXT to continue"}],"buttons":{"isStart":false,"previousDisabled":true,"nextDisabled":false}}},{"component":"DISPLAYCOMPONENT","content":{"title":"COVID-19 Disclaimer","sections":[{"sectionType":"text","textContent":"We recognize that what you currently do in your everyday life may be impacted by the COVID-19 pandemic."},{"sectionType":"text","textContent":"As a result, you may not currently be participating in some of the activities that we will ask you about."},{"sectionType":"text","textContent":"As much as possible, please try to picture yourself doing the activities under normal (pre-pandemic circumstances)."},{"sectionType":"text","textContent":"Click NEXT to continue"}],"buttons":{"isStart":false,"previousDisabled":false,"nextDisabled":false}}},{"component":"DISPLAYCOMPONENT","content":{"title":"Everyday Activities Game - Part 1","sections":[{"sectionType":"text","textContent":"Please read the following instructions carefully."},{"sectionType":"text","textContent":"We will ask you a series of questions about how you feel about different activities."},{"sectionType":"text","textContent":"You will have to provide your response using your mouse."},{"sectionType":"text","textContent":"Click NEXT to continue"}],"buttons":{"isStart":false,"previousDisabled":false,"nextDisabled":false}}},{"component":"DISPLAYCOMPONENT","content":{"title":"Let’s walk through an example","sections":[{"sectionType":"text","textContent":"Activity: Bring the car to the mechanic"},{"sectionType":"text","textContent":"You will be asked: How much you look forward to the outcome of it? How mentally effortful does this activity feel to you? "},{"sectionType":"text","textContent":"We understand that this may or may not apply to you (perhaps you don’t currently own a car), but we ask that you try to picture yourself doing each activity so that you can answer the questions."},{"sectionType":"text","textContent":"Click START to practice"}],"buttons":{"isStart":true,"previousDisabled":false,"nextDisabled":false}}},{"component":"RATINGCOMPONENT","config":{"isPractice":true,"maxResponseTime":150000,"interTrialDelay":100,"interActivityDelay":1000,"delayToShowHelpMessage":10000,"durationHelpMessageShown":5000,"durationOutOftimeMessageShown":2000,"delayToShowRatingSlider":0,"numDoSomethingActivities":21,"stimuliConfig":{"type":"hardcoded","stimuli":[{"activity":"Bring the car to the mechanic","type":"DoSomething","questions":[{"question":"How much do you look forward to the outcome of this activity?","legend":["Not at all","Very Much"]},{"question":"How mentally effortful does this activity feel to you?","legend":["Not at all","Very effortful"]}]}]}}},{"component":"DISPLAYCOMPONENT","content":{"title":"","sections":[{"sectionType":"text","textContent":"Now you are ready to start."},{"sectionType":"text","textContent":"We will show you a total of 26 activities and ask you a series of questions about each activity."},{"sectionType":"text","textContent":"Please take a moment to picture yourself doing each activity before answering the questions."},{"sectionType":"text","textContent":"Click START when you are ready"}],"buttons":{"isStart":true,"previousDisabled":true,"nextDisabled":false}}},{"component":"RATINGCOMPONENT","config":{"isPractice":false,"maxResponseTime":15000,"interTrialDelay":100,"interActivityDelay":1000,"delayToShowHelpMessage":10000,"durationHelpMessageShown":5000,"durationOutOftimeMessageShown":2000,"delayToShowRatingSlider":0,"numDoSomethingActivities":21,"stimuliConfig":{"type":"generated","stimuli":null}}},{"component":"DISPLAYCOMPONENT","content":{"title":"","sections":[{"sectionType":"text","textContent":"Thank you for completing Part 1 of the game!"}],"buttons":{"isStart":false,"previousDisabled":true,"nextDisabled":false}}},{"component":"DISPLAYCOMPONENT","content":{"title":"Everyday Activities Game - Part 2","sections":[{"sectionType":"text","textContent":"Please read the following instructions carefully."},{"sectionType":"text","textContent":"For this part of the task, you will be asked to choose between two different activities."},{"sectionType":"text","textContent":"Your job is to <b>imagine yourself faced with this choice in your everyday life, and to indicate which activity you would choose.</b>"},{"sectionType":"text","textContent":"Click NEXT for an example"}],"buttons":{"isStart":false,"previousDisabled":true,"nextDisabled":false}}},{"component":"DISPLAYCOMPONENT","content":{"title":"","sections":[{"sectionType":"text","textContent":"For example:"},{"sectionType":"image-horizontal","imagePath":"/assets/images/instructions/everydaychoice-new/choice-example.PNG"},{"sectionType":"text","textContent":"We ask that you try to picture the choice you would make in real life, even if some of the choices may not be ones you have ever been faced with."},{"sectionType":"text","textContent":"Tell us: <b>which activity would you MOST LIKELY CHOOSE TO DO?</b>"},{"sectionType":"text","textContent":"Click START to practice"}],"buttons":{"isStart":true,"previousDisabled":false,"nextDisabled":false}}},{"component":"CHOICECOMPONENT","config":{"isPractice":true,"maxResponseTime":15000,"interTrialDelay":100,"delayToShowHelpMessage":10000,"durationHelpMessageShown":5000,"durationOutOftimeMessageShown":2000,"delayToShowRatingSlider":0,"stimuliConfig":{"type":"hardcoded","stimuli":[{"firstActivity":"Bring the car to the mechanic","secondActivity":"Dust your bookshelves","legend":["Strongly choose left","Strongly choose right"]}]}}},{"component":"DISPLAYCOMPONENT","content":{"title":"","sections":[{"sectionType":"text","textContent":"You finished the practice!"},{"sectionType":"text","textContent":"Now, please picture yourself doing the activity for each of the following activities, and rate which activity you would MOST LIKELY spend time doing."},{"sectionType":"text","textContent":"Click START when you are ready"}],"buttons":{"isStart":true,"previousDisabled":true,"nextDisabled":false}}},{"component":"CHOICECOMPONENT","config":{"isPractice":false,"maxResponseTime":15000,"interTrialDelay":100,"delayToShowHelpMessage":10000,"durationHelpMessageShown":5000,"durationOutOftimeMessageShown":2000,"delayToShowRatingSlider":0,"stimuliConfig":{"type":"generated","stimuli":null}}},{"component":"DISPLAYCOMPONENT","content":{"title":"","sections":[{"sectionType":"text","textContent":"Hooray! You have finished the Everyday Activities Game."},{"sectionType":"text","textContent":"We appreciate your time and effort in helping with our research."}],"buttons":{"isStart":false,"previousDisabled":true,"nextDisabled":false}}}]}'
	// 		)
	// `
	_, _ = DB.Exec(`DELETE FROM tasks;`)
	// _, err = DB.Exec(baseTaskInsertCommand)

	return err
}
