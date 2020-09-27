package models

import (
	"github.com/jinzhu/gorm"
)

// Turker represents an mturk worker with an associated experiment code
type Turker struct {
	gorm.Model
	WorkerID string `json:"id"`
	Code     string `json:"code"`
}
