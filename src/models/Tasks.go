package models

// Task represents a model to store task data which experiments can refer to
type Task struct {
	ID          uint   `json:"id" gorm:"unique;primaryKey"`
	Title       string `json:"title" gorm:"unique;not null;default:''"`
	Description string `json:"description"`
	Type        string `json:"type"`
}
