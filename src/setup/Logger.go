package setup

import (
	"io"
	"log"
	"os"
)

var logFileRef *os.File

// exported loggers
var (
	InfoLogger    *log.Logger
	WarningLogger *log.Logger
	ErrorLogger   *log.Logger
)

// Initialize creates the loggers available throughout the application
func initializeLogger(file *os.File) {
	WarningLogger = log.New(file, "WARNING: ", log.Ldate|log.Ltime|log.Lshortfile)
	ErrorLogger = log.New(file, "ERROR: ", log.Ldate|log.Ltime|log.Lshortfile)
	InfoLogger = log.New(file, "INFO: ", log.Ldate|log.Ltime|log.Lshortfile)
	mw := io.MultiWriter(os.Stdout, file)
	WarningLogger.SetOutput(mw)
	ErrorLogger.SetOutput(mw)
	InfoLogger.SetOutput(mw)
}

func Setup() {
	// logging to external log file
	file, err := os.OpenFile(getLogPath(), os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)
	logFileRef = file
	log.Println("Created log file")
	if err != nil {
		panic("Could not create log file to write to")
	}
	initializeLogger(file) // initialize logger with given file to write to
}

func CloseLogFile() {
	logFileRef.Close()
}

func getLogPath() string {
	prodPath, exists := os.LookupEnv("PROD_LOG_PATH")

	if !exists {
		log.Println("Could not find PROD_LOG_PATH, using default log path")
		return "./axon.log"
	}
	log.Println("Retrieved log path", prodPath)
	return prodPath
}
