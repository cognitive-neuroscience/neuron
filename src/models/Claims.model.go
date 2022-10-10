package models

import "github.com/golang-jwt/jwt"

// Claims represents a model for JWT
type Claims struct {
	UserID string
	Email  string
	Role   string
	jwt.StandardClaims
}
