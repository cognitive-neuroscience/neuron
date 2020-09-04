package models

// ExperimentTask represents a join table between experiments and tasks
type ExperimentTask struct {
	ExperimentCode string
	TaskID         uint
	Place          int
}
