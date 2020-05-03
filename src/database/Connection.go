package database

import (
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
	"log"
)

// ConnectDB instantiates a mongoDB connection
func ConnectDB() {
	var err error
	DBConn, err = gorm.Open("mysql", "sharplab:sharplab@(192.168.1.116)/sharplab?charset=utf8mb4")
	if err != nil {
		log.Fatalln(err.Error())
	}
	log.Println("Connected to database")
}
