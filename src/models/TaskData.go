package models

// TaskSwitching represents a model for the data received from the Task Switching Task
type TaskSwitching struct {
	UserID       string  `json:"userID"`
	Trial        int     `json:"trial"`
	Score        int     `json:"score"`
	Color        string  `json:"color"`
	Digit        int     `json:"digit"`
	ActualAnswer string  `json:"actualAnswer"`
	UserAnswer   string  `json:"userAnswer"`
	ResponseTime float64 `json:"responseTime"`
	IsCorrect    int     `json:"isCorrect"`
}

// DemandSelection represents a model for the data received from the Demand Selection Task
type DemandSelection struct {
	UserID              string `json:"userID"`
	Trial               int    `json:"trial"`
	Score               int    `json:"score"`
	PatchImgSelected    string `json:"patchImgSelected"`
	PatchImgNotSelected string `json:"patchImgNotSelected"`
	Color               string `json:"color"`
	Digit               int    `json:"digit"`
	ActualAnswer        string `json:"actualAnswer"`
	UserAnswer          string `json:"userAnswer"`
	Counterbalance      string `json:"counterbalance"`
	ResponseTime        int    `json:"responseTime"`
	IsCorrect           bool   `json:"isCorrect"`
	Block               int    `json:"block"`
}

// TrailMaking represents a model for the data received from the TrailMaking Task
type TrailMaking struct {
	UserID            string `json:"userID"`
	Trial             int    `json:"trial"`
	Score             int    `json:"score"`
	TrialType         string `json:"trialType"`
	ActualAnswer      string `json:"ActualAnswer"`
	UserAnswer        string `json:"userAnswer"`
	TimeFromLastClick int    `json:"timeFromLastClick"`
	IsCorrect         bool   `json:"isCorrect"`
}

// Stroop represents a model for the data received from the Stroop Task
type Stroop struct {
	UserID       string  `json:"userID"`
	Trial        int     `json:"trial"`
	Score        int     `json:"score"`
	ActualAnswer string  `json:"actualAnswer"`
	UserAnswer   string  `json:"userAnswer"`
	IsCorrect    bool    `json:"isCorrect"`
	IsCongruent  bool    `json:"isCongruent"`
	ResponseTime float32 `json:"responseTime"`
	Set          int     `json:"set"` // A participant is presented with 1 out of 4 potential data sets
}

// NBack represents a model for the data received from the N-back Task
type NBack struct {
	UserID       string  `json:"userID"`
	Trial        int     `json:"trial"`
	Score        int     `json:"score"`
	ActualAnswer string  `json:"actualAnswer"`
	UserAnswer   string  `json:"userAnswer"`
	IsCorrect    bool    `json:"isCorrect"`
	ResponseTime float32 `json:"responseTime"`
	Set          int     `json:"set"` // A participant is presented with 1 out of 4 potentail data sets
}
