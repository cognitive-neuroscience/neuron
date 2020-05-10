package models

import jwt "github.com/dgrijalva/jwt-go"

// Claims represents a model for JWT
type Claims struct {
	UserID uint
	Email  string
	jwt.StandardClaims
}
