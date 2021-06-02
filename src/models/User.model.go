package models

import "time"

// UserSchema defines the SQL table schema for this model
var UserSchema = `
	CREATE TABLE IF NOT EXISTS users (
		id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
		email VARCHAR(255) NOT NULL UNIQUE CHECK(email != ""),
		created_at DATETIME NOT NULL,
		password VARCHAR(255) NOT NULL CHECK(password != ""),
		role ENUM("ADMIN", "PARTICIPANT", "GUEST"),
		PRIMARY KEY (id)
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
