package models

// ExperimentTaskSchema defines the SQL table schema for this model
// Composite primary key between experimentId and taskOrder
var ExperimentTaskSchema = `
	CREATE TABLE IF NOT EXISTS experiment_tasks (
		experiment_id BIGINT UNSIGNED NOT NULL,
		task_id BIGINT UNSIGNED NOT NULL,
		task_order INT NOT NULL DEFAULT(0),
		PRIMARY KEY (experiment_id, task_order),
		FOREIGN KEY (experiment_id) REFERENCES experiments(id),
		FOREIGN KEY (task_id) REFERENCES tasks(id)
	);
`

// ExperimentTask represents a many to many relationship between experiments and tasks
type ExperimentTask struct {
	ExperimentID uint
	TaskID       uint
	taskOrder    int
	Task         Task
}
