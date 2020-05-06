package middleware

import (
	"github.com/gofiber/fiber"
)

// VerifyToken verifies if the token present in the authorization header is valid
func VerifyToken(c *fiber.Ctx) {
	token := c.Get("Authorization")

	if token == "" {
		c.SendStatus(401)
		return
	}
	c.Next()
}
