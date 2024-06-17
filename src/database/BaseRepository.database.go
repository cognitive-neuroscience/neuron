package database

import (
	"database/sql"
	"net/http"
	"reflect"
	"strings"

	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

type BaseRepository struct{}

// source of code
// https://stackoverflow.com/questions/62240553/generalizing-sql-rows-scan-in-go

// rowsToStructs takes in a pointer to sql.Rows which are the result of a db query,
// and a argStructSlice interface{} which is a pointer to the struct that we want to scan the row into
func rowToStruct(row *sql.Row, argStructPointer interface{}) error {
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("Could not convert row to struct", err)
		}
	}()

	argStruct := reflect.ValueOf(argStructPointer).Elem()

	properties := make([]interface{}, argStruct.Type().NumField())

	// rowStruct := reflect.New(argStruct.Type()).Elem()

	for i := 0; i < argStruct.NumField(); i++ {
		// Addr() returns a pointer representing the address of the field
		// Interface() turns the field into an interface (to type it to any so that scan does not do a type assertion (?))
		// We populate the properties slice with pointers to the rowStruct fields
		properties[i] = argStruct.Field(i).Addr().Interface()
	}

	if err := row.Scan(properties...); err != nil {
		return err
	}

	return nil
}

// rowsToStructs takes in a pointer to sql.Rows which are the result of a db query,
// and a argStructSlice interface{} which is a pointer to the struct that we want to scan the row into. We avoid a type
// assertion by passing in a pointer
func rowsToStructs(rows *sql.Rows, argStructSlicePointer interface{}) error {
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("Could not convert rows to structs", err)
		}
	}()

	// use the reflect package to get the underlying element
	// ValueOf creates a new reflect.Value wrapper type given the value
	// Elem() gets the value stored or the value that is pointed to - the underlying model slice (i.e. []models.Task{})

	// Elem() can potentially panic
	argStructSlice := reflect.ValueOf(argStructSlicePointer).Elem()

	// Type() gets the reflect.Type of the element (in our case, a slice of models, i.e. []models.Task{})
	// Elem() gets the element type of the slice
	// NumField() gets the number of properties of the given type
	// we create a slice of the given struct's arguments

	// NumField() can potentially panic
	properties := make([]interface{}, argStructSlice.Type().Elem().NumField())

	// for each row you get from the DB, scan the resulting fields into the struct row and add it to the original struct slice
	for rows.Next() {
		// reflect.New() returns a pointer to a zero value version of the given type
		// additional Elem() call returns the actual value that the pointer is pointing to
		rowStruct := reflect.New(argStructSlice.Type().Elem()).Elem()

		for i := 0; i < rowStruct.NumField(); i++ {
			// Addr() returns a pointer representing the address of the field
			// Interface() turns the field pointer into an interface (to type it to any so that scan does not do a type assertion (?))
			// We populate the properties slice with pointers to the rowStruct fields for the scan function to infer the types correctly
			properties[i] = rowStruct.Field(i).Addr().Interface()
		}

		// spread a slice as an arg to a variadic function
		if err := rows.Scan(properties...); err != nil {
			return err
		}
		// Set() sets the given arg to the value
		// Append() returns a slice consisting of a value appended to previous values
		argStructSlice.Set(reflect.Append(argStructSlice, rowStruct))
	}
	return nil
}

// GetOneBy takes a generic struct and attempts to execute the given query, writing the results into the struct.
// It returns a 200, 404, or 500 status code.
func (b *BaseRepository) GetOneBy(argStruct interface{}, query string, args ...interface{}) models.HTTPStatus {
	db := db.DB
	row := db.QueryRow(query, args...)
	rowErr := rowToStruct(row, argStruct)

	if rowErr == sql.ErrNoRows {
		axonlogger.WarningLogger.Println("cannot retrieve resource as it does not exist", args)
		return models.HTTPStatus{Status: http.StatusNotFound, Message: http.StatusText(http.StatusNotFound)}
	} else if rowErr != nil {

		if strings.Contains(rowErr.Error(), "1452") {
			// 1452 is a mysql DB error indicating that the foreign key constraint fails - either the study or the user does not exist
			axonlogger.WarningLogger.Println("cannot retrieve resource as it does not exist", args)
			return models.HTTPStatus{Status: http.StatusNotFound, Message: http.StatusText(http.StatusNotFound)}
		}
		axonlogger.WarningLogger.Println("Attempted Query: " + query)
		axonlogger.WarningLogger.Println("There was an error running the query in the DB", rowErr)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}

// GetAllBy takes a generic struct slice and attempts to execute the given query, writing the results into the struct slice.
// It returns a 200, or 500 status code.
func (b *BaseRepository) GetAllBy(argStructSlice interface{}, query string, args ...interface{}) models.HTTPStatus {
	db := db.DB

	rows, err := db.Query(query, args...)
	if err != nil {
		axonlogger.ErrorLogger.Println("Attempted Query: " + query)
		axonlogger.ErrorLogger.Println("Error querying rows", err)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	defer rows.Close()
	rowToStructErr := rowsToStructs(rows, argStructSlice)
	if rowToStructErr != nil {
		axonlogger.ErrorLogger.Println("Attempted Query: " + query)
		axonlogger.ErrorLogger.Println("Error scanning rows", rowToStructErr)
		return models.HTTPStatus{Status: http.StatusInternalServerError, Message: http.StatusText(http.StatusInternalServerError)}
	}
	return models.HTTPStatus{Status: http.StatusOK, Message: http.StatusText(http.StatusOK)}
}
