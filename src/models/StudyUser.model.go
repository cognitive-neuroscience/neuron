package models

import (
	"database/sql"
	"time"
)

// StudyUserSchema defines the SQL table schema for this model
var StudyUserSchema = `
	CREATE TABLE IF NOT EXISTS study_users (
		user_id INT UNSIGNED NOT NULL,
		study_id INT UNSIGNED NOT NULL,
		completion_code VARCHAR(255) DEFAULT NULL,
		register_date DATETIME NOT NULL, 
		due_date DATETIME DEFAULT NULL,
		current_task_index INT DEFAULT(0),
		has_accepted_consent BOOLEAN DEFAULT FALSE,
		lang VARCHAR(100) NOT NULL DEFAULT '',
		data JSON NOT NULL DEFAULT (JSON_OBJECT()),
		PRIMARY KEY (user_id, study_id),
		FOREIGN KEY (user_id) REFERENCES users(id),
		FOREIGN KEY (study_id) REFERENCES studies(id)
	);
`

// StudyUser represents a join table between studies and users, tracking the progress and registration of users within a study
type StudyUser struct {
	UserID             uint               `json:"userId"`
	StudyID            uint               `json:"studyId"`
	CompletionCode     string             `json:"completionCode"`
	RegisterDate       time.Time          `json:"registerDate"`
	DueDate            sql.NullTime       `json:"dueDate"`
	CurrentTaskIndex   int                `json:"currentTaskIndex"`
	HasAcceptedConsent bool               `json:"hasAcceptedConsent"`
	Lang               string             `json:"lang"`
	Data               MapStringInterface `json:"data"`
}

// StudyUserSummary
type StudyUserSummary struct {
	UserId  uint   `json:"userId"`
	Email   string `json:"email"`
	Studies []uint `json:"studies"`
}

// dont need this as we can use sql.NullTime, but I'll keep this code here as a future reference

// we defined a nulltime because golang time.Time{} defaults to a format that sql does not accept.
// type NullTime struct {
// 	Valid bool      `json:"valid"`
// 	Time  time.Time `json:"time"`
// }

// // Scan implements the Scanner interface. sql --> value
// func (nt *NullTime) Scan(value interface{}) error {
// 	nt.Time, nt.Valid = value.(time.Time)
// 	return nil
// }

// // Value implements the driver Valuer interface. value --> sql
// func (nt NullTime) Value() (driver.Value, error) {
// 	if !nt.Valid {
// 		return nil, nil
// 	}
// 	return nt.Time, nil
// }
