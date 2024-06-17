package models

import (
	"database/sql/driver"
	"encoding/json"
	"errors"
	"time"
)

/*
 * This file defines structs that outline the parameters collected for each task that is administered to participants
 */

type SliceMapStringInterface []MapStringInterface

// ParticipantDataSchema defines the SQL table schema for this model
var ParticipantDataSchema = `
	CREATE TABLE IF NOT EXISTS participant_data (
		user_id VARCHAR(255) NOT NULL,
		study_id INT UNSIGNED NOT NULL,
		task_order INT NOT NULL,
		participant_type ENUM("CROWDSOURCED", "ACCOUNTHOLDER"),
		submitted_at DATETIME NOT NULL,
		metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
		data JSON,
		PRIMARY KEY (study_id, task_order, user_id),
		FOREIGN KEY (study_id, task_order) REFERENCES study_tasks(study_id, task_order) ON UPDATE CASCADE
	);
`

// ParticipantData represents a model for storing all participant data including psych task responses and questionnaires.
// Will make manually defining structs for each task obsolete (aka all of the above structs)
type ParticipantData struct {
	UserID          string                  `json:"userId"`
	StudyID         uint                    `json:"studyId"`
	TaskOrder       int                     `json:"taskOrder"`
	ParticipantType string                  `json:"participantType"`
	SubmittedAt     time.Time               `json:"submittedAt"`
	Metadata        MapStringInterface      `json:"metadata"`
	Data            SliceMapStringInterface `json:"data"`
}

// reads json columns from mysql and parses them into mapstringinterface
// The data stored in a JSON field is returned as a []uint8
func (s *SliceMapStringInterface) Scan(src interface{}) error {
	var source []byte
	var tempMapSlice SliceMapStringInterface

	switch src := src.(type) {
	case []uint8:
		source = []byte(src)
	case nil:
		return nil
	default:
		return errors.New("error converting mysql json to mapstringinterface")
	}
	err := json.Unmarshal(source, &tempMapSlice)
	if err != nil {
		return err
	}
	*s = SliceMapStringInterface(tempMapSlice)
	return nil
}

// converts mapstringinterface data to json to insert into mysql
func (s SliceMapStringInterface) Value() (driver.Value, error) {
	if len(s) == 0 {
		return []byte("[]"), nil
	}
	json, err := json.Marshal(s)
	if err != nil {
		return nil, err
	}
	return driver.Value(json), nil
}
