package controllers

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/middleware"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/cognitive-neuroscience/neuron/src/services"
)

// UserController represents the entry point for the User API
func UserController(res http.ResponseWriter, req *http.Request) {
	log.Println("User API")

	switch req.Method {
	case "GET":
		getUser(res, req)
		break
	case "POST":
		saveUser(res, req)
		break
	case "PATCH":
		updateUser(res, req)
		break
	default:
		res.WriteHeader(http.StatusMethodNotAllowed)
		break
	}
}

func getUser(res http.ResponseWriter, req *http.Request) {
	log.Println("Get User")
	middleware.VerifyToken(res, req)
	res.Write([]byte("OK"))
}

func saveUser(res http.ResponseWriter, req *http.Request) {
	log.Println("Save User")

	var user models.User
	err := json.NewDecoder(req.Body).Decode(&user)
	if err != nil {
		http.Error(res, err.Error(), http.StatusBadRequest)
		return
	}

	result := services.SaveUser(user)
	res.WriteHeader(result.Status)
	res.Write([]byte(result.Error))
}

func updateUser(res http.ResponseWriter, req *http.Request) {
	log.Println("Update User")
	middleware.VerifyToken(res, req)
	res.Write([]byte("OK"))
}
