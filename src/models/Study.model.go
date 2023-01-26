package models

import (
	"database/sql"
	"time"
)

// StudySchema defines the SQL table schema for this model
var StudySchema = `
	CREATE TABLE IF NOT EXISTS studies (
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		owner_id INT UNSIGNED NOT NULL,
		created_at DATETIME NOT NULL,
		deleted_at DATETIME DEFAULT(NULL),
		internal_name VARCHAR(255) NOT NULL,
		external_name VARCHAR(255) NOT NULL,
		started BOOLEAN DEFAULT FALSE,
		can_edit BOOLEAN DEFAULT TRUE,
		consent INT UNSIGNED DEFAULT(NULL),
		description VARCHAR(300),
		config JSON NOT NULL DEFAULT (JSON_OBJECT()),
		FOREIGN KEY (consent) REFERENCES tasks(id),
		FOREIGN KEY (owner_id) REFERENCES users(id),
		PRIMARY KEY (id)
	);
`

// Study represents a model for a set of tasks
type Study struct {
	ID           uint               `json:"id"`
	Owner        User               `json:"owner"`
	CreatedAt    time.Time          `json:"createdAt"`
	DeletedAt    sql.NullTime       `json:"deletedAt"`
	InternalName string             `json:"internalName"`
	ExternalName string             `json:"externalName"`
	Started      bool               `json:"started"`
	CanEdit      bool               `json:"canEdit"`
	Consent      Task               `json:"consent"`
	Description  string             `json:"description"`
	Config       MapStringInterface `json:"config"`
	StudyTasks   []StudyTask        `json:"studyTasks"`
}

// DBStudy is the database representation of a study
type DBStudy struct {
	ID           uint               `json:"id"`
	OwnerId      uint               `json:"ownerId"`
	CreatedAt    time.Time          `json:"createdAt"`
	DeletedAt    sql.NullTime       `json:"deletedAt"`
	InternalName string             `json:"internalName"`
	ExternalName string             `json:"externalName"`
	Started      bool               `json:"started"`
	CanEdit      bool               `json:"canEdit"`
	ConsentId    uint               `json:"consentId"`
	Description  string             `json:"description"`
	Config       MapStringInterface `json:"config"`
}
