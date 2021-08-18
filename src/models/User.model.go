package models

import "time"

// UserSchema defines the SQL table schema for this model
var UserSchema = `
	CREATE TABLE IF NOT EXISTS users (
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		email VARCHAR(255) NOT NULL UNIQUE CHECK(email != ""),
		created_at DATETIME NOT NULL,
		password VARCHAR(255) NOT NULL CHECK(password != ""),
		role ENUM("ADMIN", "PARTICIPANT", "GUEST"),
		PRIMARY KEY (id)
	);
`

var CrowdSourcedUserSchema = `
	CREATE TABLE IF NOT EXISTS crowdsourced_users (
		participant_id VARCHAR(255) NOT NULL CHECK(participant_id != ""),
		study_id INT UNSIGNED NOT NULL CHECK(study_id != ""),
		register_date DATETIME NOT NULL,
		completion_code VARCHAR(255) DEFAULT "",
		PRIMARY KEY (participant_id, study_id),
		FOREIGN KEY (study_id) REFERENCES studies(id)
	);
`

// User represents a model for a user
type User struct {
	ID        uint      `json:"id"`
	Email     string    `json:"email" gorm:"unique_index;not null;default:''"`
	Password  string    `json:"password" gorm:"not null;default:''"`
	Role      string    `json:"role" gorm:"not null;default:'PARTICIPANT'"`
	CreatedAt time.Time `json:"createdAt"`
}

type CrowdSourcedUser struct {
	ParticipantID  string    `json:"participantId"`
	StudyID        uint      `json:"studyId"`
	RegisterDate   time.Time `json:"registerDate"`
	CompletionCode string    `json:"completionCode"`
}
