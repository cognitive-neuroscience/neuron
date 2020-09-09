package services

import (
	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// GetAllTasks returns tasks from database layer
func GetAllTasks() ([]models.Task, error) {
	return database.GetAllTasks()
}
