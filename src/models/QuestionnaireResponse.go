package models

// DemographicsQuestionnaireResponse represents the questionnaire responses completed by Mturk participants
type DemographicsQuestionnaireResponse struct {
	ExperimentCode     string `json:"experimentCode"`
	ID                 string `json:"userID"`
	Age                int    `json:"age"`
	Sex                string `json:"sex"`
	SelfIdentification string `json:"selfIdentification"`
	YearsOfEducation   int    `json:"yearsOfEducation"`
	HasNeuroConditions bool   `json:"hasNeuroConditions"`
	HasPsychConditions bool   `json:"hasPsychConditions"`
}
