package models

// TaskSwitchingData represents a  model for the data received from the Task Switching Experiment
// type TaskSwitchingData struct {
// 	Trial        int     `gorm:"primary_key;auto_increment"`
// 	IsPractice   int     `json:"isPractice"`
// 	Color        string  `json:"color"`
// 	Digit        int     `json:"digit"`
// 	ActualAnswer string  `json:"actualAnswer"`
// 	UserAnswer   string  `json:"userAnswer"`
// 	ResponseTime float64 `json:"responseTime"`
// 	IsCorrect    int     `json:"isCorrect"`
// 	Score        int     `json:"score"`
// 	ColorMapping string  `json:"colorMapping"`
// }

// Stroop represents a model for the data received from the Stroop Task
type Stroop struct {
	UserID       string  `json:"userID"`
	Trial        int     `json:"trial"`
	ActualAnswer string  `json:"actualAnswer"`
	UserAnswer   string  `json:"userAnswer"`
	IsCorrect    bool    `json:"isCorrect"`
	IsCongruent  bool    `json:"isCongruent"`
	ResponseTime float32 `json:"responseTime"`
	Score        int     `json:"score"`
	Set          int     `json:"set"`
}

// NBack represents a model for the data received from the N-back Task
// TODO: implement this
type NBack struct {
	UserID       string
	Trial        int
	ActualAnswer string
	UserAnswer   string
	IsCorrect    bool
	ResponseTime float32
	Score        int
	Set          int
}
