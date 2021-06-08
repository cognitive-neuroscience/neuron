package services

import (
	"errors"
	"os"
	"time"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/dgrijalva/jwt-go"
)

type TokenService struct{}

// // AuthenticateToken verifies if the token present in the authorization header is valid
// func AuthenticateToken(c *fiber.Ctx) (*models.Claims, error) {
// 	claims := &models.Claims{}
// 	var err error

// 	// 1. check that token is present
// 	token := c.Get("Authorization")
// 	if token == "" {
// 		axonlogger.WarningLogger.Println("No token present")
// 		return claims, errors.New("No token present")
// 	}

// 	// 2. check that token string is extractable and get it
// 	extractedToken, err := extractToken(token)
// 	if err != nil {
// 		return claims, err
// 	}

// 	// 3. check that token is valid
// 	claims, err = ValidateToken(extractedToken)
// 	if err != nil {
// 		return claims, err
// 	}

// 	return claims, nil
// }

// func extractToken(t string) (string, error) {
// 	strArr := strings.Split(t, " ")
// 	if len(strArr) == 2 && strings.ToLower(strArr[0]) == "bearer" {
// 		return strArr[1], nil
// 	}
// 	axonlogger.WarningLogger.Println("Could not parse token", t)
// 	return "", errors.New("Could not parse token")
// }

// CreateToken returns the token and error after signing with HS256
func (t *TokenService) CreateToken(id string, email string, role string) (string, error) {
	key := GetJWTKey()

	expirationTime := time.Now().Add(2 * time.Hour)
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
func (t *TokenService) ValidateToken(tokenString string) (*models.Claims, error) {
	key := GetJWTKey()
	claims := &models.Claims{}
	token, err := jwt.ParseWithClaims(tokenString, claims, func(token *jwt.Token) (interface{}, error) {
		return []byte(key), nil
	})
	if err != nil {
		axonlogger.WarningLogger.Println("Error when calling ParseWithClaims on token", tokenString, err)
		return claims, errors.New("could not parse with claims")
	}

	// verify that we are using the expected algorithm
	if token.Method.Alg() != jwt.SigningMethodHS256.Name {
		axonlogger.WarningLogger.Println("token is not using expected auth algorithm")
		return claims, errors.New("token is not valid")
	}

	if !token.Valid {
		axonlogger.WarningLogger.Println("Token is not valid")
		return claims, errors.New("token is not valid")
	}
	axonlogger.InfoLogger.Println("Authenticated Token:", claims.Email, claims.UserID, claims.Role)
	return claims, nil
}

func GetJWTKey() string {
	key, exists := os.LookupEnv("NEURON_SECRET")
	if exists {
		return key
	}
	// return simple dev key if env is absent
	return "neuron"
}
