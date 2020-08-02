package database

import (
	"log"

	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql" // MySQL Dialect for GORM
	"github.com/qor/validations"
)

// ConnectDB instantiates a mongoDB connection
func ConnectDB() {
	var err error
	DBConn, err = gorm.Open("mysql", "sharplab:sharplab@tcp(127.0.0.1:3306)/sharplab?charset=utf8mb4&parseTime=True&loc=Local")
	// DBConn, err = gorm.Open("mysql", "sharplab:sharplab@(192.168.1.117)/sharplab?charset=utf8mb4&parseTime=True&loc=Local")
	if err != nil {
		log.Fatalln(err.Error())
	}
	validations.RegisterCallbacks(DBConn)
	log.Println("Connected to database")
}
