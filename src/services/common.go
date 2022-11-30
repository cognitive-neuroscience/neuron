package services

import (
	"errors"
	"strconv"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/email"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
)

var userRepositoryImpl = database.UserRepository{}
var taskRespositoryImpl = database.TaskRepository{}
var studyRepositoryImpl = database.StudyRepository{}
var studyDataRepositoryImpl = database.StudyDataRepository{}
var organizationRepositoryImpl = database.OrganizationRepository{}
var emailServiceImpl = email.EmailBaseService{}

func convertStringToUint8(str string) (uint, error) {
	parsedUint64, err := strconv.ParseUint(str, 10, 64)
	if err != nil {
		axonlogger.WarningLogger.Println("error parsing studyid to uint", err)
		return 0, errors.New("could not parse the given string")
	}
	parsedUint := uint(parsedUint64)
	return parsedUint, nil
}

func convertUintToString(number uint) string {
	return strconv.FormatUint(uint64(number), 10)
}
