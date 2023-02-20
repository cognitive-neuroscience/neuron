package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/email"
	"github.com/cognitive-neuroscience/neuron/src/services"
)

var authServiceImpl = services.AuthService{}
var tokenServiceImpl = services.TokenService{}
var userServiceImpl = services.UserService{}
var taskServiceImpl = services.TaskService{}
var studyServiceImpl = services.StudyService{}
var participantDataServiceImpl = services.ParticipantDataService{}
var emailServiceImpl = email.EmailBaseService{}
var studyUserServiceImpl = services.StudyUserService{}
var crowdSourcedUserServiceImpl = services.CrowdSourcedUserService{}
