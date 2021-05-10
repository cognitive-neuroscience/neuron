package models

import "time"

// ExperimentSchema defines the SQL table schema for this model
var ExperimentSchema = `
	CREATE TABLE IF NOT EXISTS experiments (
		id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
		created_at DATETIME NOT NULL,
		deleted_at DATETIME DEFAULT(NULL),
		internal_name VARCHAR(255) NOT NULL,
		external_name VARCHAR(255) NOT NULL,
		started BOOLEAN DEFAULT FALSE,
		code VARCHAR(255) NOT NULL UNIQUE CHECK(code != ""),
		description VARCHAR(300),
		PRIMARY KEY (id)
	);
`

// Experiment represents a model for a set which contains tasks
type Experiment struct {
	ID             uint             `json:"id"`
	CreatedAt      time.Time        `json:"createdA"`
	DeletedAt      time.Time        `json:"deletedAt"`
	InternalName   string           `json:"internalName"`
	ExternalName   string           `json:"externalName"`
	Started        bool             `json:"started"`
	ExperimentCode string           `json:"experimentCode"`
	Description    string           `json:"description"`
	Tasks          []ExperimentTask `json:"tasks"`
}
