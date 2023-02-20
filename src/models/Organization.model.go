package models

// OrganizationSchema defines the SQL table schema for this model
var OrganizationSchema = `
	CREATE TABLE IF NOT EXISTS organizations (
		id INT UNSIGNED AUTO_INCREMENT NOT NULL,
		name VARCHAR(500) NOT NULL CHECK(name != ""),
		logo_path VARCHAR(500),
		PRIMARY KEY (id)
	);
`

type Organization struct {
	ID       uint   `json:"id"`
	Name     string `json:"name"`
	LogoPath string `json:"logoPath"`
}
