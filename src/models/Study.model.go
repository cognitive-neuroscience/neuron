package models

import (
	"time"
)

// StudySchema defines the SQL table schema for this model
var StudySchema = `
	CREATE TABLE IF NOT EXISTS studies (
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		user_id INT UNSIGNED NOT NULL,
		created_at DATETIME NOT NULL,
		organization_id INT UNSIGNED DEFAULT (1),
		deleted_at DATETIME DEFAULT(NULL),
		internal_name VARCHAR(255) NOT NULL,
		external_name VARCHAR(255) NOT NULL,
		started BOOLEAN DEFAULT FALSE,
		can_edit BOOLEAN DEFAULT TRUE,
		consent INT UNSIGNED DEFAULT(NULL),
		description VARCHAR(300),
		config JSON NOT NULL DEFAULT (JSON_OBJECT()),
		FOREIGN KEY (consent) REFERENCES tasks(id),
		FOREIGN KEY (organization_id) REFERENCES organizations(id),
		PRIMARY KEY (id)
	);
`

// Experiment represents a model for a set which contains tasks
type Study struct {
	ID           uint               `json:"id"`
	User         User               `json:"user"`
	CreatedAt    time.Time          `json:"createdAt"`
	DeletedAt    NullTime           `json:"deletedAt"`
	InternalName string             `json:"internalName"`
	ExternalName string             `json:"externalName"`
	Started      bool               `json:"started"`
	Description  string             `json:"description"`
	Organization Organization       `json:"organization"`
	CanEdit      bool               `json:"canEdit"`
	Consent      uint               `json:"consent"`
	Config       MapStringInterface `json:"config"`
	Tasks        []StudyTask        `json:"tasks"`
}
