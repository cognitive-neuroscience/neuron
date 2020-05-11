package models

import jwt "github.com/dgrijalva/jwt-go"

// Claims represents a model for JWT
type Claims struct {
	UserID string
	Email  string
	jwt.StandardClaims
}
