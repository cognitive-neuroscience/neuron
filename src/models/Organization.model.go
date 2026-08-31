package models

import (
	"database/sql/driver"
	"encoding/json"
	"errors"
)

// StringSlice is a JSON array of strings stored in a MySQL JSON column.
type StringSlice []string

// OrganizationSchema defines the SQL table schema for this model
var OrganizationSchema = `
	CREATE TABLE IF NOT EXISTS organizations (
		id INT UNSIGNED AUTO_INCREMENT NOT NULL,
		name VARCHAR(500) NOT NULL CHECK(name != ""),
		logo_path VARCHAR(500),
		supported_langs JSON NOT NULL DEFAULT (JSON_ARRAY('en', 'fr')),
		PRIMARY KEY (id)
	);
`

type Organization struct {
	ID             uint        `json:"id"`
	Name           string      `json:"name"`
	LogoPath       string      `json:"logoPath"`
	SupportedLangs StringSlice `json:"supportedLangs"`
}

// reads json columns from mysql and parses them into a string slice.
// The data stored in a JSON field is returned as a []uint8
func (s *StringSlice) Scan(src interface{}) error {
	var source []byte
	var langs StringSlice

	switch src := src.(type) {
	case []uint8:
		source = []byte(src)
	case nil:
		*s = StringSlice{}
		return nil
	default:
		return errors.New("error converting mysql json to string slice")
	}
	err := json.Unmarshal(source, &langs)
	if err != nil {
		return err
	}
	if langs == nil {
		langs = StringSlice{}
	}
	*s = langs
	return nil
}

// converts string slice data to json to insert into mysql
func (s StringSlice) Value() (driver.Value, error) {
	if len(s) == 0 {
		return []byte("[]"), nil
	}
	jsonBytes, err := json.Marshal(s)
	if err != nil {
		return nil, err
	}
	return driver.Value(jsonBytes), nil
}
