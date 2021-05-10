package models

// TaskSchema defines the SQL table schema for this model
// NOTE: a task is defined as a thing within the study that the participant must do (can be psych task, questionnaire, etc)
var TaskSchema = `
	CREATE TABLE IF NOT EXISTS tasks (
		id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
		fromPlatform ENUM("psharplab", "surveymonkey", "pavlovia"),
		taskType ENUM("nab", "experimental", "questionnaire", "consent"),
		name VARCHAR(255) NOT NULL,
		description VARCHAR(500),
		externalURL VARCHAR(500),
		config JSON,
		componentMapping VARCHAR(255) NOT NULL CHECK(componentMapping != ""),
		PRIMARY KEY (id)
	);
`

// Task represents the most basic configuration for the tasks in sharplab
type Task struct {
	ID               uint                   `json:"id"`
	FromPlatform     string                 `json:"FromPlatform"`
	TaskType         string                 `json:"taskType"`
	Name             string                 `json:"name"`
	Description      string                 `json:"description"`
	ExternalURL      string                 `json:"ExternalURL"`
	Config           map[string]interface{} `json:"config"`
	ComponentMapping string                 `json:"componentMapping"`
}
