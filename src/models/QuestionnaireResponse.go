package models

// DemographicsQuestionnaireResponse represents the questionnaire responses completed by Mturk participants
type DemographicsQuestionnaireResponse struct {
	ExperimentCode          string `json:"experimentCode"`
	UserID                  string `json:"userID"`
	Age                     int    `json:"age"`
	Sex                     string `json:"sex"`
	SelfIdentification      string `json:"selfIdentification"`
	YearsOfEducation        int    `json:"yearsOfEducation"`
	HasNeuroConditions      bool   `json:"hasNeuroConditions"`
	HasPsychConditions      bool   `json:"hasPsychConditions"`
	CurrentEmploymentStatus string `json:"currentEmploymentStatus"`
	HouseholdIncome         string `json:"householdIncome"`
	SocialClass             string `json:"socialClass"`
}

// FeedbackQuestionnaireResponse represents the feedback given by participants about the experiment
type FeedbackQuestionnaireResponse struct {
	ExperimentCode     string `json:"experimentCode"`
	UserID             string `json:"userID"`
	IssuesEncountered  string `json:"issuesEncountered"`
	AdditionalFeedback string `json:"additionalFeedback"`
	Browser            string `json:"browser"`
}

// Questionnaire represents the questionnaire object where a user can create, edit or remove embedded survey monkey questionnaires
type Questionnaire struct {
	QuestionnaireID int    `json:"questionnaireID" gorm:"autoincrement;primary_key;not null"`
	URL             string `json:"url"`
	Name            string `json:"name"`
	Description     string `json:"description"`
}
