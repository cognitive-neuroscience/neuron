package services

import (
	"errors"
	"os"
	"strings"
	"time"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/dgrijalva/jwt-go"
	"github.com/gofiber/fiber"
)

// AuthenticateToken verifies if the token present in the authorization header is valid
func AuthenticateToken(c *fiber.Ctx) (*models.Claims, error) {
	claims := &models.Claims{}
	var err error

	// 1. check that token is present
	token := c.Get("Authorization")
	if token == "" {
		axonlogger.WarningLogger.Println("No token present")
		return claims, errors.New("No token present")
	}

	// 2. check that token string is extractable and get it
	extractedToken, err := extractToken(token)
	if err != nil {
		return claims, err
	}

	// 3. check that token is valid
	claims, err = ValidateToken(extractedToken)
	if err != nil {
		return claims, err
	}
	return claims, nil
}

func extractToken(t string) (string, error) {
	strArr := strings.Split(t, " ")
	if len(strArr) == 2 && strings.ToLower(strArr[0]) == "bearer" {
		return strArr[1], nil
	}
	axonlogger.WarningLogger.Println("Could not parse token", t)
	return "", errors.New("Could not parse token")
}

// CreateToken returns the token and error after signing with HS256
func CreateToken(id string, email string, role string) (string, error) {
	key := getKey()
	// 4 hours before JWT expires
	expirationTime := time.Now().Add(4 * time.Hour)
	claims := &models.Claims{
		UserID: id,
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
func ValidateToken(tokenString string) (*models.Claims, error) {
	key := getKey()
	claims := &models.Claims{}
	token, err := jwt.ParseWithClaims(tokenString, claims, func(token *jwt.Token) (interface{}, error) {
		return []byte(key), nil
	})
	if err != nil {
		axonlogger.ErrorLogger.Println("Error when calling ParseWithClaims on token", tokenString, ":", err)
		return claims, errors.New("Could not parse with claims")
	}

	if !token.Valid {
		axonlogger.WarningLogger.Println("Token is not valid")
		return claims, errors.New("Token is not valid")
	}

	return claims, nil
}

func getKey() string {
	key, exists := os.LookupEnv("NEURON_SECRET")
	if exists {
		return key
	}
	// return simple dev key if env is absent
	return "neuron"
}
