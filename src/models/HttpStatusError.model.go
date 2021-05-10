package models

// HTTPStatus represents the model for a HTTP response
type HTTPStatus struct {
	Status  int    `json:"status"`
	Message string `json:"message"`
}
