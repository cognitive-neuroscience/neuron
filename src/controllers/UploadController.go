package controllers

// import (
// 	"github.com/cognitive-neuroscience/neuron/src/common"
// 	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
// 	"github.com/cognitive-neuroscience/neuron/src/services"

// 	"github.com/gofiber/fiber"
// )

// // UploadTaskData represents the entry point for the Upload API
// func UploadTaskData(c *fiber.Ctx) {
// 	var taskData interface{}
// 	if err := c.BodyParser(&taskData); err != nil {
// 		axonlogger.WarningLogger.Println("Could not parse incoming task data", taskData)
// 		common.SendHTTPBadRequest(c)
// 		return
// 	}
// 	experimentCode := c.Params("code")
// 	taskName := c.Params("taskName")

// 	axonlogger.InfoLogger.Println("Uploading task data to DB", experimentCode, taskName)

// 	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
// 	if common.IsAllowed(c, authorizedRoles) {
// 		httpStatus := services.UploadTaskData(experimentCode, taskName, taskData)
// 		common.SendGenericHTTPModel(c, httpStatus)
// 		return
// 	}
// 	axonlogger.WarningLogger.Println("Not authorized", experimentCode, taskName)
// 	common.SendHTTPForbidden(c)
// }
