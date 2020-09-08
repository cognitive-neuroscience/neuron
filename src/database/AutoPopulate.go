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

// NOTE: These IDs are hardcoded in two places: here and in the frontend assets/data folder.
// If you update the IDs here, you must update the frontend IDs as well.
var tasks = []models.Task{
	models.Task{
		ID:          1,
		Title:       "Go-NoGo",
		Description: "Description of Go-NoGo Task",
		Type:        "NAB",
	},
	models.Task{
		ID:          2,
		Title:       "Digit Span",
		Description: "Description of Digit Span Task",
		Type:        "NAB",
	},
	models.Task{
		ID:          3,
		Title:       "Finger Tapping Task",
		Description: "Description of Finger Tapping Task",
		Type:        "NAB",
	},
	models.Task{
		ID:          4,
		Title:       "N-Back",
		Description: "Description of N-Back Task",
		Type:        "NAB",
	},
	models.Task{
		ID:          5,
		Title:       "Stroop Task",
		Description: "Description of the Stroop Task",
		Type:        "NAB",
	},
	models.Task{
		ID:          6,
		Title:       "Trail Making",
		Description: "Description of Trail Making Task",
		Type:        "NAB",
	},
	models.Task{
		ID:          7,
		Title:       "Color Game",
		Description: "Description of Color Game",
		Type:        "experimental",
	},
	models.Task{
		ID:          8,
		Title:       "Shape Game",
		Description: "Description of Shape Game",
		Type:        "experimental",
	},
	models.Task{
		ID:          9,
		Title:       "TS & DST",
		Description: "Description of TS & DST",
		Type:        "experimental",
	},
	models.Task{
		ID:          10,
		Title:       "Simon Task",
		Description: "Description of Simon Task",
		Type:        "experimental",
	},
	models.Task{
		ID:          11,
		Title:       "Smiley Face",
		Description: "Description of Smiley Face Game",
		Type:        "experimental",
	},
}
