package models

// TaskSwitchingData represents a  model for the data received from the Task Switching Experiment
type TaskSwitchingData struct {
	Trial        int     `gorm:"primary_key;auto_increment"`
	IsPractice   int     `json:"isPractice"`
	Color        string  `json:"color"`
	Digit        int     `json:"digit"`
	ActualAnswer string  `json:"actualAnswer"`
	UserAnswer   string  `json:"userAnswer"`
	ResponseTime float64 `json:"responseTime"`
	IsCorrect    int     `json:"isCorrect"`
	Score        int     `json:"score"`
	ColorMapping string  `json:"colorMapping"`
}
