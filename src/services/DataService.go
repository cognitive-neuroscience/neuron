package services

import (
	"strconv"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

// SaveTSData creates a table and save experiment data in the database
func SaveTSData(experiment string, userID string, data []models.TaskSwitchingData) {
	t := time.Now().Local()
	year := t.Year()
	month := t.Month()
	day := t.Day()
	hour := t.Hour()
	minute := t.Minute()
	seconds := t.Second()
	tableName := "SUBJECT_" + userID + "_EXPERIMENT_" + strings.ToUpper(experiment) + "_" + strconv.Itoa(year) + "_" + strconv.Itoa(int(month)) + "_" + strconv.Itoa(day) + "_" + strconv.Itoa(hour) + "_" + strconv.Itoa(minute) + "_" + strconv.Itoa(seconds)
	database.DBConn.Table(tableName).CreateTable(&models.TaskSwitchingData{})
	for _, s := range data {
		database.DBConn.Table(tableName).Create(&s)
	}
}

// SaveDSTData creates a table and save experiment data in the database
func SaveDSTData(experiment string, userID string, data []models.DemandSelectionData) {
	t := time.Now().Local()
	year := t.Year()
	month := t.Month()
	day := t.Day()
	hour := t.Hour()
	minute := t.Minute()
	seconds := t.Second()
	tableName := "SUBJECT_" + userID + "_EXPERIMENT_" + strings.ToUpper(experiment) + "_" + strconv.Itoa(year) + "_" + strconv.Itoa(int(month)) + "_" + strconv.Itoa(day) + "_" + strconv.Itoa(hour) + "_" + strconv.Itoa(minute) + "_" + strconv.Itoa(seconds)
	database.DBConn.Table(tableName).CreateTable(&models.DemandSelectionData{})
	for _, s := range data {
		database.DBConn.Table(tableName).Create(&s)
	}
}
