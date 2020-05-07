package middleware

import (
	"os"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/dgrijalva/jwt-go"
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

// CreateToken returns the token and error after signing with HS256
func CreateToken(email string) (string, error) {
	key := os.Getenv("NEURON_TOKEN_KEY")
	if key == "" {
		key = "neuron"
	}
	expirationTime := time.Now().Add(24 * time.Hour)
	claims := &models.Claims{
		Email: email,
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: expirationTime.Unix(),
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(key))
}

// ValidateToken validates a token payload
func ValidateToken(tokenString string) int {
	if key == "" {
		key = "neuron"
	}
	claims := &models.Claims{}
	token, err := jwt.ParseWithClaims(tokenString, claims, func(token *jwt.Token) (interface{}, error) {
		return []byte(key), nil
	})
	if err != nil {
		log.Println(err)
		if err == jwt.ErrSignatureInvalid {
			return http.StatusUnauthorized
		}
		return http.StatusBadRequest
	}
	if !token.Valid {
		return http.StatusUnauthorized
	}
	return http.StatusOK
}
