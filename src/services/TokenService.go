package services

import (
	"errors"
	"log"
	"os"
	"strings"
	"time"

	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/dgrijalva/jwt-go"
	"github.com/gofiber/fiber"
)

var key = os.Getenv("NEURON_SECRET")

// AuthenticateToken verifies if the token present in the authorization header is valid
func AuthenticateToken(c *fiber.Ctx) (*models.Claims, error) {

	claims := &models.Claims{}
	var err error

	// 1. check that token is present
	token := c.Get("Authorization")
	if token == "" {
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
	return "", errors.New("Could not parse token")
}

// CreateToken returns the token and error after signing with HS256
func CreateToken(id string, email string, role string) (string, error) {
	if key == "" {
		log.Println("Using insecure DEV JWT key")
		key = "neuron"
	}
	log.Println("Using secure JWT key")
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
		return claims, err
	}

	if !token.Valid {
		return claims, errors.New("Token is not valid")
	}

	return claims, nil
}

// // ExtractClaims extracts the data from the JWT
// func ExtractClaims(c *fiber.Ctx) (models.Claims, error) {
// 	claims := models.Claims{}
// 	token := c.Get("Authorization")

// 	// 2. check that token string is extractable and get it
// 	extractedToken, err := extractToken(token)
// 	if err != nil {
// 		log.Println("Token is not extractable. Error:")
// 		log.Println(err)
// 		return claims, err
// 	}

// 	aToken, err := jwt.ParseWithClaims(extractedToken, claims, func(token *jwt.Token) (interface{}, error) {
// 		return []byte(key), nil
// 	})

// 	if err != nil || !aToken.Valid {
// 		log.Println(err)
// 		return claims, err
// 	}
// 	return claims, nil
// }
