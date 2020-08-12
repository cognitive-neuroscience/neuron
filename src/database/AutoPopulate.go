package database

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// AutoPopulate will populate the mysql db
func AutoPopulate() {
	log.Println("Starting MySQL Population")
	tasks := &tasks

	for _, t := range *tasks {
		errors := DBConn.Create(&t).GetErrors()

		if len(errors) != 0 {
			log.Printf("Could not populate task: %s", t.Title)
		}
	}

	log.Println("MySQL AutoPopulation complete")
}

var tasks = []models.Task{
	models.Task{
		Title:       "Go-NoGo",
		Description: "Description of Go-NoGo Task",
		Route:       "/experiments/go-nogo",
		Type:        "NAB",
	},
	models.Task{
		Title:       "Digit Span",
		Description: "Description of Digit Span Task",
		Route:       "/experiments/digit-span",
		Type:        "NAB",
	},
	models.Task{
		Title:       "Finger Tapping Task",
		Description: "Description of Finger Tapping Task",
		Route:       "/experiments/ftt",
		Type:        "NAB",
	},
	models.Task{
		Title:       "N-Back",
		Description: "Description of N-Back Task",
		Route:       "/experiments/n-back",
		Type:        "NAB",
	},
	models.Task{
		Title:       "Stroop Task",
		Description: "Description of the Stroop Task",
		Route:       "/experiments/stroop",
		Type:        "NAB",
	},
	models.Task{
		Title:       "Trail Making",
		Description: "Description of Trail Making Task",
		Route:       "/experiments/trail-making",
		Type:        "NAB",
	},
	models.Task{
		Title:       "Color Game",
		Description: "Description of Color Game",
		Route:       "/experiments/color-game",
		Type:        "experimental",
	},
	models.Task{
		Title:       "Shape Game",
		Description: "Description of Shape Game",
		Route:       "/experiments/trail-making",
		Type:        "experimental",
	},
	models.Task{
		Title:       "TS & DST",
		Description: "Description of TS & DST",
		Route:       "/experiments/ts",
		Type:        "experimental",
	},
	models.Task{
		Title:       "Simon Task",
		Description: "Description of Simon Task",
		Route:       "/experiments/simon-1",
		Type:        "experimental",
	},
	models.Task{
		Title:       "Smiley Face",
		Description: "Description of Smiley Face Game",
		Route:       "/experiments/trail-making",
		Type:        "experimental",
	},
}
