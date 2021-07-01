package services

import (
	"errors"
	"strconv"

	"github.com/cognitive-neuroscience/neuron/src/database"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
)

var userRepositoryImpl = database.UserRepository{}
var taskRespositoryImpl = database.TaskRepository{}
var studyRepositoryImpl = database.StudyRepository{}
var studyDataRepositoryImpl = database.StudyDataRepository{}

func convertStringToUint8(str string) (uint, error) {
	parsedUint64, err := strconv.ParseUint(str, 10, 64)
	if err != nil {
		axonlogger.WarningLogger.Println("error parsing studyid to uint", err)
		return 0, errors.New("could not parse the given string")
	}
	parsedUint := uint(parsedUint64)
	return parsedUint, nil
}
