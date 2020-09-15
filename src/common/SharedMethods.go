package common

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// IsAllowed is a common method that checks if the token is valid and if the role is allowed for this route
func IsAllowed(c *fiber.Ctx, authorizedRoles []string) bool {

	isAuthenticated := services.AuthenticateToken(c)

	if isAuthenticated {
		claims, err := services.ExtractClaims(c)
		if err != nil {
			return false
		}

		role := claims.Role
		log.Println(claims)
		for _, authorizedRole := range authorizedRoles {
			if authorizedRole == role {
				return true
			}
		}
	}

	return false
}
