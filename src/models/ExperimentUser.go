package models

// ExperimentUser represents a join table between experiments and users
type ExperimentUser struct {
	ID             string
	Code           string
	Complete       bool
	CompletionCode string
}
