package models

import (
	"time"
)

// TaskSwitching represents a model for the data received from the Task Switching Task
type TaskSwitching struct {
	UserID         string    `json:"userID"`
	Trial          int       `json:"trial"`
	Score          int       `json:"score"`
	Color          string    `json:"color"`
	Digit          int       `json:"digit"`
	ActualAnswer   string    `json:"actualAnswer"`
	UserAnswer     string    `json:"userAnswer"`
	ResponseTime   int       `json:"responseTime"`
	IsCorrect      bool      `json:"isCorrect"`
	IsPractice     bool      `json:"isPractice"`
	Submitted      time.Time `json:"submitted"`
	ExperimentCode string    `json:"experimentCode"`
}

// DemandSelection represents a model for the data received from the Demand Selection Task
type DemandSelection struct {
	UserID                      string    `json:"userID"`
	Trial                       int       `json:"trial"`
	Score                       int       `json:"score"`
	FirstPatch                  string    `json:"firstPatch"`
	SecondPatch                 string    `json:"secondPatch"`
	SelectedPatch               string    `json:"selectedPatch"`
	HarderPatch                 string    `json:"harderPatch"`
	SelectPatchResponseTime     int       `json:"selectPatchResponseTime"`
	RespondToNumberResponseTime int       `json:"respondToNumberResponseTime"`
	TaskGoal                    string    `json:"taskGoal"`
	Color                       string    `json:"color"`
	Digit                       int       `json:"digit"`
	ActualAnswer                string    `json:"actualAnswer"`
	UserAnswer                  string    `json:"userAnswer"`
	IsCorrect                   bool      `json:"isCorrect"`
	Block                       int       `json:"block"`
	Rotation                    int       `json:"rotation"`
	Submitted                   time.Time `json:"submitted"`
	IsPractice                  bool      `json:"isPractice"`
	ExperimentCode              string    `json:"experimentCode"`
}

// TrailMaking represents a model for the data received from the TrailMaking Task
type TrailMaking struct {
	UserID            string    `json:"userID"`
	Trial             int       `json:"trial"`
	Score             int       `json:"score"`
	TrialType         string    `json:"trialType"`
	ActualAnswer      string    `json:"actualAnswer"`
	UserAnswer        string    `json:"userAnswer"`
	TimeFromLastClick int       `json:"timeFromLastClick"`
	IsCorrect         bool      `json:"isCorrect"`
	Submitted         time.Time `json:"submitted"`
	IsPractice        bool      `json:"isPractice"`
	ExperimentCode    string    `json:"experimentCode"`
}

// Stroop represents a model for the data received from the Stroop Task
type Stroop struct {
	UserID         string    `json:"userID"`
	Trial          int       `json:"trial"`
	Score          int       `json:"score"`
	ActualAnswer   string    `json:"actualAnswer"`
	UserAnswer     string    `json:"userAnswer"`
	IsCorrect      bool      `json:"isCorrect"`
	IsCongruent    bool      `json:"isCongruent"`
	ResponseTime   int       `json:"responseTime"`
	Set            int       `json:"set"` // A participant is presented with 1 out of 4 potential data sets
	Submitted      time.Time `json:"submitted"`
	IsPractice     bool      `json:"isPractice"`
	ExperimentCode string    `json:"experimentCode"`
}

// NBack represents a model for the data received from the N-back Task
type NBack struct {
	UserID         string    `json:"userID"`
	Trial          int       `json:"trial"`
	Score          int       `json:"score"`
	ActualAnswer   string    `json:"actualAnswer"`
	UserAnswer     string    `json:"userAnswer"`
	IsCorrect      bool      `json:"isCorrect"`
	ResponseTime   int       `json:"responseTime"`
	Set            int       `json:"set"` // A participant is presented with 1 out of 4 potentail data sets
	Submitted      time.Time `json:"submitted"`
	IsPractice     bool      `json:"isPractice"`
	ExperimentCode string    `json:"experimentCode"`
}

// FingerTapping represents a model for the data received from the finger tapping Task
type FingerTapping struct {
	UserID                string    `json:"userID"`
	Trial                 int       `json:"trial"`
	Score                 int       `json:"score"`
	Block                 int       `json:"block"`
	DominantHand          string    `json:"dominantHand"`
	ShouldUseDominantHand bool      `json:"shouldUseDominantHand"`
	IsCorrect             bool      `json:"isCorrect"`
	TimeFromLastKeyPress  int       `json:"timeFromLastKeyPress"`
	KeyPressed            string    `json:"keyPressed"`
	Submitted             time.Time `json:"submitted"` // ISO date string
	IsPractice            bool      `json:"isPractice"`
	ExperimentCode        string    `json:"experimentCode"`
}
