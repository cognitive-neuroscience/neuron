package models

import "time"

// FeedbackQuestionnaireResponse represents the feedback given by participants about the experiment
type FeedbackQuestionnaireResponse struct {
	StudyId            uint      `json:"studyId"`
	UserID             string    `json:"userId"`
	IssuesEncountered  string    `json:"issuesEncountered"`
	AdditionalFeedback string    `json:"additionalFeedback"`
	SubmittedAt        time.Time `json:"submittedAt"`
	Browser            string    `json:"browser"`
	ParticipantType    string    `json:"participantType"`
}

// StudySchema defines the SQL table schema for this model
var FeedbackQuestionnaireResponseSchema = `
	CREATE TABLE IF NOT EXISTS feedback_questionnaire_responses (
		study_id INT UNSIGNED NOT NULL,
		user_id VARCHAR(255) NOT NULL,
		submitted_at DATETIME NOT NULL,
		issues_encountered VARCHAR(1000),
		additional_feedback VARCHAR(1000),
		browser VARCHAR(255),
		participant_type ENUM("CROWDSOURCED", "ACCOUNTHOLDER"),
		PRIMARY KEY (user_id, study_id),
		FOREIGN KEY (study_id) REFERENCES studies(id)
	);
`
