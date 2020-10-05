package models

// ExperimentUser represents a join table between experiments and users
type ExperimentUser struct {
	Code           string `json:"code" gorm:"primary_key;not null"`
	ID             string `json:"id" gorm:"primary_key;not null"`
	Complete       bool   `gorm:"default:false"`
	CompletionCode string `gorm:"default:''"`
}
