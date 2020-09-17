package common

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// IsAllowed is a common method that checks if the token is valid and if the role is allowed for this route
func IsAllowed(c *fiber.Ctx, authorizedRoles []string) bool {

	// make sure token is present, extractable, and valid
	authenticatedClaims, err := services.AuthenticateToken(c)
	if err != nil {
		log.Println(err)
		return false
	}

	// get role and see if it is present in list of authorized roles
	role := authenticatedClaims.Role
	for _, authorizedRole := range authorizedRoles {
		if authorizedRole == role {
			return true
		}
	}

	return false
}
