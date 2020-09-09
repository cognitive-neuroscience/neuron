package database

import (
	"errors"

	"github.com/cognitive-neuroscience/neuron/src/models"
)

// GetAllTasks returns all tasks from the database
func GetAllTasks() ([]models.Task, error) {
	db := DBConn

	var err error

	tasks := []models.Task{}
	if err := db.Find(&tasks).Error; err != nil {
		err = errors.New("Could not fetch tasks")
	}

	return tasks, err
}
