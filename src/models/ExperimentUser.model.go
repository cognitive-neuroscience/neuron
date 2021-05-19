package models

import (
	"time"
)

// ExperimentUserSchema defines the SQL table schema for this model
var ExperimentUserSchema = `
	CREATE TABLE IF NOT EXISTS experiment_users (
		user_id BIGINT UNSIGNED NOT NULL,
		experiment_id BIGINT UNSIGNED NOT NULL,
		completion_code VARCHAR(255) DEFAULT NULL,
		current_task_index INT DEFAULT(0),
		register_date DATETIME NOT NULL, 
		due_date DATETIME NOT NULL,
		PRIMARY KEY (user_id, experiment_id),
		FOREIGN KEY (user_id) REFERENCES users(id),
		FOREIGN KEY (experiment_id) REFERENCES experiments(id)
	);
`

// ExperimentUser represents a join table between experiments and users keeping track of the progress
// for that user in each experiment that the user is part of
type ExperimentUser struct {
	UserID           uint      `json:"userId"`
	ExperimentID     uint      `json:"experimentId"`
	CompletionCode   string    `json:"completionCode"`
	RegisterDate     time.Time `json:"registerDate"`
	DueDate          time.Time `json:"dueDate"`
	CurrentTaskIndex int       `json:"currentTaskIndex"`
}
