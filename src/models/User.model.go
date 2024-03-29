package models

import (
	"database/sql"
	"time"
)

// UserSchema defines the SQL table schema for this model
var UserSchema = `
	CREATE TABLE IF NOT EXISTS users (
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		name VARCHAR(500) DEFAULT "",
		organization_id INT UNSIGNED DEFAULT NULL,
		email VARCHAR(255) NOT NULL UNIQUE CHECK(email != ""),
		password VARCHAR(255) NOT NULL CHECK(password != ""),
		role ENUM("ADMIN", "PARTICIPANT", "GUEST", "ORGANIZATION_MEMBER"),
		created_at DATETIME NOT NULL,
		change_password_required BOOLEAN DEFAULT FALSE,
		lang VARCHAR(100) NOT NULL DEFAULT '',
		PRIMARY KEY (id),
		FOREIGN KEY (organization_id) REFERENCES organizations(id)
	);
`

var CrowdSourcedUserSchema = `
	CREATE TABLE IF NOT EXISTS crowdsourced_users (
		participant_id VARCHAR(255) NOT NULL CHECK(participant_id != ""),
		study_id INT UNSIGNED NOT NULL CHECK(study_id != ""),
		register_date DATETIME NOT NULL,
		completion_code VARCHAR(255) DEFAULT "",
		lang VARCHAR(100) NOT NULL DEFAULT '',
		PRIMARY KEY (participant_id, study_id),
		FOREIGN KEY (study_id) REFERENCES studies(id)
	);
`

// User represents a model for a user
type User struct {
	ID                     uint          `json:"id"`
	Name                   string        `json:"name"`
	Organization           *Organization `json:"organization"` // set to a pointer so that the returned json is null if pointer points to a nil value
	Email                  string        `json:"email"`
	Password               string        `json:"password"`
	Role                   string        `json:"role"`
	CreatedAt              time.Time     `json:"createdAt"`
	ChangePasswordRequired bool          `json:"changePasswordRequired"`
	Lang                   string        `json:"lang"`
}

// internal DB representation of user
type DBUser struct {
	ID                     uint          `json:"id"`
	Name                   string        `json:"name"`
	OrganizationId         sql.NullInt32 `json:"organizationId"` // this can potentially be null in the db
	Email                  string        `json:"email"`
	Password               string        `json:"password"`
	Role                   string        `json:"role"`
	CreatedAt              time.Time     `json:"createdAt"`
	ChangePasswordRequired bool          `json:"changePasswordRequired"`
	Lang                   string        `json:"lang"`
}

type CrowdSourcedUser struct {
	ParticipantID  string    `json:"participantId"`
	StudyID        uint      `json:"studyId"`
	RegisterDate   time.Time `json:"registerDate"`
	CompletionCode string    `json:"completionCode"`
	Lang           string    `json:"lang"`
}
