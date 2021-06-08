package models

import "time"

// StudySchema defines the SQL table schema for this model
var StudySchema = `
	CREATE TABLE IF NOT EXISTS studies (
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		created_at DATETIME NOT NULL,
		deleted_at DATETIME DEFAULT(NULL),
		internal_name VARCHAR(255) NOT NULL,
		external_name VARCHAR(255) NOT NULL,
		started BOOLEAN DEFAULT FALSE,
		study_code VARCHAR(255) NOT NULL UNIQUE CHECK(study_code != ""),
		description VARCHAR(300),
		PRIMARY KEY (id)
	);
`

// Experiment represents a model for a set which contains tasks
type Study struct {
	ID           uint        `json:"id"`
	CreatedAt    time.Time   `json:"createdAt"`
	DeletedAt    time.Time   `json:"deletedAt"`
	InternalName string      `json:"internalName"`
	ExternalName string      `json:"externalName"`
	Started      bool        `json:"started"`
	StudyCode    string      `json:"studyCode"`
	Description  string      `json:"description"`
	Tasks        []StudyTask `json:"tasks"`
}
