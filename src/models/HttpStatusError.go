package models

// HTTPErrorStatus represents the model for a HTTP response
type HTTPErrorStatus struct {
	Status  int    `json:"status"`
	Message string `json:"message"`
}
