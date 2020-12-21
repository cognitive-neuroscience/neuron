package models

// ExperimentTask represents a join table between experiments and tasks
type ExperimentTask struct {
	ExperimentCode string `gorm:"primary_key;not null"`
	TaskID         string `gorm:"primary_key;column:task_id"`
	Place          int
}
