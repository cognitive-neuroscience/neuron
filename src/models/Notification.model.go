package models

// EmailNotificationSchema defines the SQL table schema for this model
var EmailNotificationSchema = `
	CREATE TABLE IF NOT EXISTS email_notifications (
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		study_id INT UNSIGNED NOT NULL,
		num_days_notify_before_due_date INT NOT NULL CHECK(num_days_notify_before_due_date > 0),
		message VARCHAR(2000) NOT NULL,
		PRIMARY KEY (id),
		FOREIGN KEY (study_id) REFERENCES studies(id)
	);
`

// Notification defines a notification that the user can set to remind a set of participants to do something
type EmailNotification struct {
	ID                         uint
	StudyID                    uint
	NumDaysNotifyBeforeDueDate int // defines the number of days after the participant registers in which the email notification will be sent to them
	Message                    string
}
