package models

// Turker represents an mturk worker with an associated experiment code
type Turker struct {
	WorkerID string `json:"id"`
	Code     string `json:"code"`
}
