package axonlogger

import (
	"io"
	"log"
	"os"
)

// exported loggers
var (
	InfoLogger    *log.Logger
	WarningLogger *log.Logger
	ErrorLogger   *log.Logger
)

// Initialize creates the loggers available throughout the application
func Initialize(file *os.File) {
	WarningLogger = log.New(file, "WARNING: ", log.Ldate|log.Ltime|log.Lshortfile)
	ErrorLogger = log.New(file, "ERROR: ", log.Ldate|log.Ltime|log.Lshortfile)
	InfoLogger = log.New(file, "INFO: ", log.Ldate|log.Ltime|log.Lshortfile)
	mw := io.MultiWriter(os.Stdout, file)
	WarningLogger.SetOutput(mw)
	ErrorLogger.SetOutput(mw)
	InfoLogger.SetOutput(mw)
}
