package middleware

import (
	"net/http"
	"os"
	"strconv"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/dgrijalva/jwt-go"
	"github.com/gofiber/fiber"
)

var key = os.Getenv("NEURON_TOKEN_KEY")

// VerifyToken verifies if the token present in the authorization header is valid
func VerifyToken(c *fiber.Ctx) {
	token := c.Get("Authorization")

	if token == "" {
		c.Status(http.StatusUnauthorized).JSON(&models.HTTPErrorStatus{Status: http.StatusUnauthorized, Message: http.StatusText(http.StatusUnauthorized)})
		return
	}

	status := ValidateToken(c, token)

	if status == http.StatusOK {
		c.Next()
	} else {
		c.SendStatus(status)
	}
}

// CreateToken returns the token and error after signing with HS256
func CreateToken(id uint, email string) (string, error) {
	if key == "" {
		key = "neuron"
	}
	expirationTime := time.Now().Add(24 * time.Hour)
	claims := &models.Claims{
		UserID: id,
		Email:  email,
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: expirationTime.Unix(),
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(key))
}

// ValidateToken validates a token payload
func ValidateToken(c *fiber.Ctx, tokenString string) int {
	if key == "" {
		key = "neuron"
	}
	claims := &models.Claims{}
	token, err := jwt.ParseWithClaims(tokenString, claims, func(token *jwt.Token) (interface{}, error) {
		return []byte(key), nil
	})
	if err != nil {
		return http.StatusUnauthorized
	}
	if !token.Valid {
		return http.StatusUnauthorized
	}
	c.Fasthttp.Request.Header.Add("UserID", strconv.FormatUint(uint64(claims.UserID), 16))
	c.Fasthttp.Request.Header.Add("Email", string(claims.Email))
	c.Set("UserID", strconv.FormatUint(uint64(claims.UserID), 16))
	c.Set("Email", string(claims.Email))
	return http.StatusOK
}
