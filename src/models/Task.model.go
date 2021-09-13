package models

import (
	"database/sql/driver"
	"encoding/json"
	"errors"
)

type MapStringInterface map[string]interface{}

// TaskSchema defines the SQL table schema for this model
// NOTE: a task is defined as a thing within the study that the participant must do (can be psych task, questionnaire, etc)
var TaskSchema = `
	CREATE TABLE IF NOT EXISTS tasks (
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		from_platform ENUM("PSHARPLAB", "SURVEYMONKEY", "PAVLOVIA"),
		task_type ENUM("NAB", "EXPERIMENTAL", "QUESTIONNAIRE", "CONSENT", "INFO_DISPLAY"),
		name VARCHAR(255) NOT NULL CHECK(name != ""),
		description VARCHAR(500) NOT NULL DEFAULT "",
		external_url VARCHAR(500) NOT NULL DEFAULT "",
		config JSON NOT NULL DEFAULT (JSON_OBJECT()),
		PRIMARY KEY (id)
	);
`

// Task represents the most basic configuration for the tasks in sharplab
type Task struct {
	ID           uint64             `json:"id"`
	FromPlatform string             `json:"fromPlatform"`
	TaskType     string             `json:"taskType"`
	Name         string             `json:"name"`
	Description  string             `json:"description"`
	ExternalURL  string             `json:"externalURL"`
	Config       MapStringInterface `json:"config"` // will either store task metadata or questionnaire metadata
}

// reads json columns from mysql and parses them into mapstringinterface
// The data stored in a JSON field is returned as a []uint8
func (m *MapStringInterface) Scan(src interface{}) error {
	var source []byte
	tempMap := make(map[string]interface{})

	switch src := src.(type) {
	case []uint8:
		source = []byte(src)
	case nil:
		return nil
	default:
		return errors.New("error converting mysql json to mapstringinterface")
	}
	err := json.Unmarshal(source, &tempMap)
	if err != nil {
		return err
	}
	*m = MapStringInterface(tempMap)
	return nil
}

// converts mapstringinterface data to json to insert into mysql
func (m MapStringInterface) Value() (driver.Value, error) {
	if len(m) == 0 {
		return []byte("{}"), nil
	}
	json, err := json.Marshal(m)
	if err != nil {
		return nil, err
	}
	return driver.Value(json), nil
}
