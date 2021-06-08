package models

import (
	"time"
)

// StudyUserSchema defines the SQL table schema for this model
var StudyUserSchema = `
	CREATE TABLE IF NOT EXISTS study_users (
		user_id INT UNSIGNED NOT NULL,
		study_id INT UNSIGNED NOT NULL,
		completion_code VARCHAR(255) DEFAULT NULL,
		current_task_index INT DEFAULT(0),
		register_date DATETIME NOT NULL, 
		due_date DATETIME NOT NULL,
		PRIMARY KEY (user_id, study_id),
		FOREIGN KEY (user_id) REFERENCES users(id),
		FOREIGN KEY (study_id) REFERENCES studies(id)
	);
`

// StudyUser represents a join table between studys and users keeping track of the progress
// for that user in each study that the user is part of
type StudyUser struct {
	UserID           uint      `json:"userId"`
	StudyID          uint      `json:"studyId"`
	CompletionCode   string    `json:"completionCode"`
	RegisterDate     time.Time `json:"registerDate"`
	DueDate          time.Time `json:"dueDate"`
	CurrentTaskIndex int       `json:"currentTaskIndex"`
}
