package common

import (
	"net/http"
	"os"
	"strconv"
	"time"
)

func ConvertUintToString(number uint) string {
	return strconv.FormatUint(uint64(number), 10)
}

// CreateAuthCookie creates a standardized JWT authentication cookie
// value: the JWT token string (or empty string to clear the cookie)
// expiration: when the cookie should expire (use time.Unix(0,0) to clear immediately)
func CreateAuthCookie(value string, expiration time.Time) *http.Cookie {
	cookie := &http.Cookie{
		Name:     "token",
		Value:    value,
		Path:     "/api",
		HttpOnly: true,  // not accessible by javascript
		Secure:   true,  // sent over https only
		Expires:  expiration,
		SameSite: http.SameSiteStrictMode,
	}

	// Set domain based on environment
	env, exists := os.LookupEnv("ENV")
	if exists {
		if env == "DEV" {
			cookie.Domain = "localhost"
		} else if env == "PROD" {
			cookie.Domain = "wecog.research.mcgill.ca"
		}
	}

	return cookie
}
