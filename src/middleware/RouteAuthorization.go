package middleware

import "net/http"

// VerifyToken verifies if the token present in the authorization header is valid
func VerifyToken(res http.ResponseWriter, req *http.Request) {
	token := req.Header.Get("Authorization")

	if token == "" {
		res.WriteHeader(401)
	} else {

	}
}
