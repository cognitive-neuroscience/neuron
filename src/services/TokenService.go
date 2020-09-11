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

// VerifyToken verifies if the token present in the authorization header is valid
func VerifyToken(c *fiber.Ctx) bool {
	token := c.Get("Authorization")
	// test this out in the future --> this might only be testable when u connect to angular as you
	// cannot connect a cookie to postman
	log.Println(c.Cookies("value"))
	if token == "" {
		return false
	}

	extractedToken, err := extractToken(token)
	if err != nil {
		return false
	}

	if TokenIsValid(extractedToken) {
		return true
	}

	return false
}

func extractToken(t string) (string, error) {
	strArr := strings.Split(t, " ")
	if len(strArr) == 2 && strings.ToLower(strArr[0]) == "bearer" {
		return strArr[1], nil
	}
	return "", errors.New("Could not parse token")
}

// CreateToken returns the token and error after signing with HS256
func CreateToken(id uint, email string) (string, error) {
	if key == "" {
		key = "neuron"
	}
	expirationTime := time.Now().Add(12 * time.Hour)
	claims := &models.Claims{
		UserID: strconv.FormatUint(uint64(id), 16),
		Email:  email,
		StandardClaims: jwt.StandardClaims{
			ExpiresAt: expirationTime.Unix(),
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(key))
}

// TokenIsValid validates a token payload
func TokenIsValid(tokenString string) bool {
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
