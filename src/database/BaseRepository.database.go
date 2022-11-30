package database

import (
	"database/sql"
	"reflect"

	"github.com/cognitive-neuroscience/neuron/src/db"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
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

	argStruct.Set(argStruct)
	return nil
}

// rowsToStructs takes in a pointer to sql.Rows which are the result of a db query,
// and a argStructSlice interface{} which is a pointer to the struct that we want to scan the row into. We avoid a type
// assertion by adding a pointer
func rowsToStructs(rows *sql.Rows, argStructSlicePointer interface{}) error {
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("Could not convert rows to structs", err)
		}
	}()

	// use the reflect package to get the underlying element
	// ValueOf creates a new reflect.Value type
	// Elem() gets the value stored or the value that is pointed to - the underlying model slice (i.e. [n]models.Task{})
	argStructSlice := reflect.ValueOf(argStructSlicePointer).Elem()

	// Type() gets the type of the element (in our case, a slice of models)
	// Elem() gets the element type of the slice
	// NumField() gets the number of properties of the given type
	// we create a slice of the given struct's arguments
	properties := make([]interface{}, argStructSlice.Type().Elem().NumField())

	// for each row you get from the DB, scan the resulting fields into the struct row and add it to the original struct slice
	for rows.Next() {
		// create a struct of the struct slice
		rowStruct := reflect.New(argStructSlice.Type().Elem()).Elem()

		for i := 0; i < rowStruct.NumField(); i++ {
			// Addr() returns a pointer representing the address of the field
			// Interface() turns the field into an interface (to type it to any so that scan does not do a type assertion (?))
			// We populate the properties slice with pointers to the rowStruct fields
			properties[i] = rowStruct.Field(i).Addr().Interface()
		}

		if err := rows.Scan(properties...); err != nil {
			return err
		}
		// Set() sets the given arg to the value
		// Append() returns a slice consisting of a value appended to previous values
		argStructSlice.Set(reflect.Append(argStructSlice, rowStruct))
	}
	return nil
}

func (b *BaseRepository) GetOneBy(argStruct interface{}, query string, args ...interface{}) error {
	db := db.DB

	row := db.QueryRow(query, args...)
	if err := rowToStruct(row, argStruct); err != nil {
		axonlogger.ErrorLogger.Println("Attempted Query: " + query)
		axonlogger.ErrorLogger.Println("There was an error running the query in the DB", err)
		return err
	}
	return nil
}

func (b *BaseRepository) GetAllBy(argStructSlice interface{}, query string, args ...interface{}) error {
	db := db.DB
	rows, err := db.Query(query, args...)
	if err != nil {
		return err
	}
	defer rows.Close()
	return rowsToStructs(rows, argStructSlice)
}
