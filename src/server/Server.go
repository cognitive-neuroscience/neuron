package server

import (
	"log"
	"net/http"
	"os"
)

// CreateServer creates a HTTP server
func CreateServer() {
	port := os.Getenv("NEURON_PORT")
	if port == "" {
		port = "8181"
	}
	log.Printf("Go HTTP Server running on port %v\n", ":"+port)
	log.Fatal(http.ListenAndServe(":"+port, nil))
}
