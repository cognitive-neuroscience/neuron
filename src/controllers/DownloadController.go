package controllers

// import (
// 	"github.com/cognitive-neuroscience/neuron/src/common"
// 	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
// 	"github.com/cognitive-neuroscience/neuron/src/services"
// 	"github.com/gofiber/fiber"
// )

// // GetTableData is the download endpoint that reads the code and task from the url and returns the data
// func GetTableData(c *fiber.Ctx) {
// 	experimentCode := c.Params("code")
// 	task := c.Params("taskName")

// 	axonlogger.InfoLogger.Println("Getting table data", experimentCode, task)

// 	authorizedRoles := []string{common.ADMIN}
// 	if common.IsAllowed(c, authorizedRoles) {
// 		data, err := services.GetTableData(experimentCode, task)
// 		if err != nil {
// 			axonlogger.ErrorLogger.Println("Could not get table data", err)
// 			common.SendHTTPStatusServiceUnavailable(c)
// 			return
// 		}
// 		c.JSON(data)
// 		return
// 	}
// 	axonlogger.WarningLogger.Println("Not authorized to access table data")
// 	common.SendHTTPForbidden(c)
// 	return
// }
