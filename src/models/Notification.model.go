package models

// NotificationSchema defines the SQL table schema for this model
var NotificationSchema = `
	CREATE TABLE IF NOT EXISTS notifications (
		id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
		experiment_id BIGINT UNSIGNED NOT NULL,
		days_until_show INT NOT NULL CHECK(days_until_show > 0),
		message VARCHAR(2000) NOT NULL,
		PRIMARY KEY (id),
		FOREIGN KEY (experiment_id) REFERENCES experiments(id)
	);
`

// Notification defines a notification that the user can set to remind a set of participants to do something
type Notification struct {
	ID            uint
	ExperimentID  uint
	DaysUntilShow int // defines the number of days after the participant registers in which the notification will be sent to them
	Message       string
}
