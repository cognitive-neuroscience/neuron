package database

import (
	"errors"
	"net/http"
	"reflect"
	"time"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/mitchellh/mapstructure"
)

/*
 * This file is for uploading participant task data to the correct table
 */

// UploadTaskData saves the given GENERIC taskData into the correct database
func UploadTaskData(experimentCode string, taskName string, taskData interface{}) models.HTTPStatus {
	formattedTaskName := Format(taskName)

	if errs := populateRows(formattedTaskName, taskData); len(errs) > 0 {
		axonlogger.ErrorLogger.Println("Could not save data into DB:", taskData)
		return models.HTTPStatus{Status: http.StatusServiceUnavailable, Message: http.StatusText(http.StatusServiceUnavailable)}
	}
	return models.HTTPStatus{Status: http.StatusCreated, Message: http.StatusText(http.StatusCreated)}
}

// it suddenly decided to start working? will keep an eye on this
func populateRows(taskName string, taskData interface{}) []error {
	db := DBConn
	model, err := GetModel(taskName)
	if err != nil {
		axonlogger.ErrorLogger.Println("Could not get model:", err)
		return append([]error{}, errors.New("Cannot populate task for "+taskName))
	}

	// cast data to slice of interface{}
	if data, ok := taskData.([]interface{}); ok {
		// iterate over maps
		for _, trial := range data {
			decoder, err := getDecoder(&model)
			if err != nil {
				axonlogger.ErrorLogger.Println("There was an error getting the parsing decoder:", err)
				return append([]error{}, errors.New("Cannot populate task for "+taskName))
			}
			// decode the given json map and parse it into the table model
			decoder.Decode(trial)
			// create the record
			// TODO: we currently don't check to see if the given table exists.
			errs := db.Model(&model).Create(model).GetErrors()
			if len(errs) > 0 {
				axonlogger.ErrorLogger.Println("Could not save the given data:", trial, "Error:", errs)
				return errs
			}
		}
		return []error{}
	}
	axonlogger.ErrorLogger.Println("Could not cast task data into interface array")
	axonlogger.ErrorLogger.Println(taskData)
	return append([]error{}, errors.New("Cannot populate task for "+taskName))
}

// // cast data to slice of interface{}
// if data, ok := taskData.([]interface{}); ok {
// 	// iterate over maps

// 	switch taskName {
// 	case STROOP:
// 		tableModel := models.Stroop{}
// 		for _, trial := range data {
// 			// decode the given json map and parse it into the table model
// 			mapstructure.Decode(trial, &tableModel)
// 			// create the record
// 			errs := db.Table(tableName).Create(tableModel).GetErrors()
// 			if len(errs) > 0 {
// 				return errs
// 			}
// 		}
// 		return []error{}
// 	case NBACK:
// 		tableModel := models.NBack{}
// 		for _, trial := range data {
// 			mapstructure.Decode(trial, &tableModel)
// 			errs := db.Table(tableName).Create(tableModel).GetErrors()
// 			if len(errs) > 0 {
// 				return errs
// 			}
// 		}
// 		return []error{}
// 	case TASKSWITCHING:
// 		tableModel := models.TaskSwitching{}

// 		for _, trial := range data {
// 			decoder, err := getDecoder(&tableModel)

// 			if err != nil {
// 				return append([]error{}, errors.New("Cannot populate task for "+taskName))
// 			}

// 			decoder.Decode(trial)

// 			errs := db.Table(tableName).Create(tableModel).GetErrors()
// 			if len(errs) > 0 {
// 				return errs
// 			}
// 		}
// 		return []error{}
// 	case TRAILMAKING:
// 		tableModel := models.TrailMaking{}
// 		for _, trial := range data {
// 			mapstructure.Decode(trial, &tableModel)
// 			errs := db.Table(tableName).Create(tableModel).GetErrors()
// 			if len(errs) > 0 {
// 				return errs
// 			}
// 		}
// 		return []error{}
// 	case DEMANDSELECTION:
// 		tableModel := models.DemandSelection{}
// 		for _, trial := range data {
// 			mapstructure.Decode(trial, &tableModel)
// 			errs := db.Table(tableName).Create(tableModel).GetErrors()
// 			if len(errs) > 0 {
// 				return errs
// 			}
// 		}
// 		return []error{}
// 	default:
// 		return append([]error{}, errors.New("Cannot populate task for "+taskName))
// 	}
// }
// return append([]error{}, errors.New("Could not cast trial data to model"))
// }

// hack - we currently have to do a separate case for each task model...can we refactor this to make it better?
// func populateRows(taskName string, tableName string, taskData interface{}) []error {
// 	db := DBConn

// 	// cast data to slice of interface{}
// 	if data, ok := taskData.([]interface{}); ok {
// 		// iterate over maps

// 		switch taskName {
// 		case STROOP:
// 			tableModel := models.Stroop{}
// 			for _, trial := range data {
// 				// decode the given json map and parse it into the table model
// 				mapstructure.Decode(trial, &tableModel)
// 				// create the record
// 				errs := db.Table(tableName).Create(tableModel).GetErrors()
// 				if len(errs) > 0 {
// 					return errs
// 				}
// 			}
// 			return []error{}
// 		case NBACK:
// 			tableModel := models.NBack{}
// 			for _, trial := range data {
// 				mapstructure.Decode(trial, &tableModel)
// 				errs := db.Table(tableName).Create(tableModel).GetErrors()
// 				if len(errs) > 0 {
// 					return errs
// 				}
// 			}
// 			return []error{}
// 		case TASKSWITCHING:
// 			tableModel := models.TaskSwitching{}

// 			for _, trial := range data {
// 				decoder, err := getDecoder(&tableModel)

// 				if err != nil {
// 					return append([]error{}, errors.New("Cannot populate task for "+taskName))
// 				}

// 				decoder.Decode(trial)

// 				errs := db.Table(tableName).Create(tableModel).GetErrors()
// 				if len(errs) > 0 {
// 					return errs
// 				}
// 			}
// 			return []error{}
// 		case TRAILMAKING:
// 			tableModel := models.TrailMaking{}
// 			for _, trial := range data {
// 				mapstructure.Decode(trial, &tableModel)
// 				errs := db.Table(tableName).Create(tableModel).GetErrors()
// 				if len(errs) > 0 {
// 					return errs
// 				}
// 			}
// 			return []error{}
// 		case DEMANDSELECTION:
// 			tableModel := models.DemandSelection{}
// 			for _, trial := range data {
// 				mapstructure.Decode(trial, &tableModel)
// 				errs := db.Table(tableName).Create(tableModel).GetErrors()
// 				if len(errs) > 0 {
// 					return errs
// 				}
// 			}
// 			return []error{}
// 		default:
// 			return append([]error{}, errors.New("Cannot populate task for "+taskName))
// 		}
// 	}
// 	return append([]error{}, errors.New("Could not cast trial data to model"))
// }

// callback function to parse the given ISO string into a time.Time struct
func isoStringToDateTime(
	f reflect.Type,
	t reflect.Type,
	data interface{}) (interface{}, error) {
	if t == reflect.TypeOf(time.Time{}) && f == reflect.TypeOf("") {
		return time.Parse(time.RFC3339, data.(string))
	}

	return data, nil
}

func getDecoder(in interface{}) (*mapstructure.Decoder, error) {
	config := mapstructure.DecoderConfig{
		DecodeHook: isoStringToDateTime,
		Result:     &in,
	}

	decoder, err := mapstructure.NewDecoder(&config)
	if err != nil {
		return nil, errors.New("Could not create decoder from interface")
	}

	return decoder, nil
}
