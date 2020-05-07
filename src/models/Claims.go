package models

import jwt "github.com/dgrijalva/jwt-go"

// Claims represents a model for JWT
type Claims struct {
	Email string `json:"email"`
	jwt.StandardClaims
}
