package middleware

import (
	"github.com/gofiber/fiber"
)

// AddHeaders adds cors headers for the request
func AddHeaders(c *fiber.Ctx) {
	c.Set("Access-Control-Allow-Origin", c.Get("Origin"))
	c.Set("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE")
	c.Set("Access-Control-Allow-Headers", "Authorization, Content-Type")
	c.Set("Access-Control-Allow-Credentials", "true")
	c.Set("Access-Control-Expose-Headers", "Authorization, UserID, Email")
	c.Next()
}
