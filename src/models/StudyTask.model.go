package models

// StudyTaskSchema defines the SQL table schema for this model
// Composite primary key between studyId and taskOrder
var StudyTaskSchema = `
	CREATE TABLE IF NOT EXISTS study_tasks (
		study_id INT UNSIGNED NOT NULL,
		task_id INT UNSIGNED NOT NULL,
		task_order INT NOT NULL DEFAULT(0),
		config JSON NOT NULL DEFAULT (JSON_OBJECT()),
		PRIMARY KEY (study_id, task_order),
		FOREIGN KEY (study_id) REFERENCES studies(id),
		FOREIGN KEY (task_id) REFERENCES tasks(id)
	);
`

// StudyTask represents a many to many relationship between study and tasks
type StudyTask struct {
	StudyID   uint               `json:"studyId"` // studyTasks are often embedded within studies, so we just store the ID to prevent an infinite loop
	Task      Task               `json:"task"`
	TaskOrder int                `json:"taskOrder"`
	Config    MapStringInterface `json:"config"`
}

// DBStudyTask is the database representation of a study task
type DBStudyTask struct {
	StudyID   uint               `json:"studyId"`
	TaskID    uint               `json:"taskId"`
	TaskOrder int                `json:"taskOrder"`
	Config    MapStringInterface `json:"config"`
}
