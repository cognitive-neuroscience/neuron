package services

import (
	"errors"
	"log"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/dgrijalva/jwt-go"
	"github.com/gofiber/fiber"
)

var key = os.Getenv("NEURON_TOKEN_KEY")

// AuthenticateToken verifies if the token present in the authorization header is valid
func AuthenticateToken(c *fiber.Ctx) bool {
	// 1. check that token is present
	token := c.Get("Authorization")
	if token == "" {
		return false
	}

	// 2. check that token string is extractable and get it
	extractedToken, err := extractToken(token)
	if err != nil {
		log.Println(err)
		return false
	}

	// 3. check that token is valid
	if !ValidateToken(extractedToken) {
		return false
	}

	return true
}

func extractToken(t string) (string, error) {
	strArr := strings.Split(t, " ")
	if len(strArr) == 2 && strings.ToLower(strArr[0]) == "bearer" {
		return strArr[1], nil
	}
	return "", errors.New("Could not parse token")
}

// CreateToken returns the token and error after signing with HS256
func CreateToken(id uint, email string, role string) (string, error) {
	if key == "" {
		key = "neuron"
	}
	// 4 hours before JWT expires
	expirationTime := time.Now().Add(4 * time.Hour)
	claims := &models.Claims{
		UserID: strconv.FormatUint(uint64(id), 16),
		Email:  email,
		Role:   role,
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: expirationTime.Unix(),
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(key))
}

// ValidateToken makes sure a given token is valid (acceptable, can be parsed, not expired)
func ValidateToken(tokenString string) bool {
	if key == "" {
		key = "neuron"
	}
	claims := &models.Claims{}
	token, err := jwt.ParseWithClaims(tokenString, claims, func(token *jwt.Token) (interface{}, error) {
		return []byte(key), nil
	})
	if err != nil {
		log.Println("Error when calling ParseWithClaims on token!")
		log.Println(err)
		return false
	}

	if !token.Valid {
		return false
	}

	return true
}

// ExtractClaims extracts the data from the JWT
func ExtractClaims(c *fiber.Ctx) (models.Claims, error) {
	claims := models.Claims{}
	token := c.Get("Authorization")

	// 2. check that token string is extractable and get it
	extractedToken, err := extractToken(token)
	if err != nil {
		log.Println(err)
		return claims, err
	}

	aToken, err := jwt.ParseWithClaims(extractedToken, claims, func(token *jwt.Token) (interface{}, error) {
		return []byte(key), nil
	})

	if err != nil || !aToken.Valid {
		return claims, err
	}
	return claims, nil
}
