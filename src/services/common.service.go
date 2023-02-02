package services

import (
	"errors"
	"math/rand"
	"strconv"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/database"
	"github.com/cognitive-neuroscience/neuron/src/email"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
)

var userRepositoryImpl = database.UserRepository{}
var taskRespositoryImpl = database.TaskRepository{}
var studyRepositoryImpl = database.StudyRepository{}
var participantDataRepositoryImpl = database.ParticipantDataRepository{}
var organizationRepositoryImpl = database.OrganizationRepository{}
var studyUserRepositoryImpl = database.StudyUserRepository{}
var emailServiceImpl = email.EmailBaseService{}
var authServiceImpl = AuthService{}
var userServiceImpl = UserService{}
var crowdSourcedUserRepositoryImpl = database.CrowdSourcedUserRepository{}

func convertStringToUint8(str string) (uint, error) {
	parsedUint64, err := strconv.ParseUint(str, 10, 64)
	if err != nil {
		axonlogger.WarningLogger.Println("error parsing id to uint", err)
		return 0, errors.New("could not parse the given string")
	}
	parsedUint := uint(parsedUint64)
	return parsedUint, nil
}

// CodeCharacters represents the atomic characters that make up a short code
// it omits vowels to ensure no profanity is accidentally generated
var codeCharacters string = "bcdfghjklmnpqrstvwxyz0123456789"

// generateCode creates a code using the CharacterCode string of x size
func generateCode(size int) string {
	rand.Seed(time.Now().UnixNano())
	var str strings.Builder

	for i := 0; i < size; i++ {
		randIndex := rand.Intn(len(codeCharacters))
		str.WriteString(string(codeCharacters[randIndex]))
	}
	return str.String()
}
