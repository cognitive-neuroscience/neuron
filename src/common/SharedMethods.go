package common

import "strings"

// import (
// 	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
// 	"github.com/cognitive-neuroscience/neuron/src/services"
// 	"github.com/gofiber/fiber"
// )

// // IsAllowed is a common method that checks if the token is valid and if the role is allowed for this route
// func IsAllowed(c *fiber.Ctx, authorizedRoles []string) bool {

// 	// make sure token is present, extractable, and valid
// 	authenticatedClaims, err := services.AuthenticateToken(c)
// 	if err != nil {
// 		axonlogger.WarningLogger.Println("Could not authenticate the given token", err)
// 		return false
// 	}

// 	// get role and see if it is present in list of authorized roles
// 	role := authenticatedClaims.Role
// 	for _, authorizedRole := range authorizedRoles {
// 		if authorizedRole == role {
// 			return true
// 		}
// 	}
// 	axonlogger.WarningLogger.Println("User is not allowed to proceed")
// 	return false
// }

func IncludesSubStr(strSlice []string, subStr string) bool {
	for _, str := range strSlice {
		if strings.Contains(subStr, str) {
			return true
		}
	}
	return false
}
