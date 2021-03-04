package controllers

// import (
// 	"github.com/cognitive-neuroscience/neuron/src/common"
// 	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
// 	"github.com/cognitive-neuroscience/neuron/src/models"
// 	"github.com/cognitive-neuroscience/neuron/src/services"
// 	"github.com/gofiber/fiber"
// )

// // GetAllCustomTasks gets all CustomTasks from the DB
// func GetAllCustomTasks(c *fiber.Ctx) {
// 	axonlogger.InfoLogger.Println("Getting all CustomTasks")
// 	authorizedRoles := []string{common.ADMIN}
// 	if common.IsAllowed(c, authorizedRoles) {
// 		CustomTasks, err := services.GetAllCustomTasks()
// 		if err != nil {
// 			common.SendHTTPStatusServiceUnavailable(c)
// 			return
// 		}
// 		c.JSON(CustomTasks)
// 		return
// 	}
// 	axonlogger.WarningLogger.Println("Not authorized to get all CustomTasks")
// 	common.SendHTTPForbidden(c)
// }

// // DeleteCustomTaskByID deletes the CustomTask from the DB given the ID number
// func DeleteCustomTaskByID(c *fiber.Ctx) {
// 	id := c.Params("id")
// 	axonlogger.InfoLogger.Println("Deleting CustomTask", id)
// 	authorizedRoles := []string{common.ADMIN}
// 	if common.IsAllowed(c, authorizedRoles) {
// 		result := services.DeleteCustomTaskByID(id)
// 		common.SendGenericHTTPModel(c, result)
// 		return
// 	}
// 	axonlogger.WarningLogger.Println("Not authorized to delete CustomTask", id)
// 	common.SendHTTPForbidden(c)
// }

// // SaveCustomTask is the customTask api entry point for saving a CustomTask given the json. This describes the data that populates
// // an embedded pavlovia task
// func SaveCustomTask(c *fiber.Ctx) {
// 	axonlogger.InfoLogger.Println("Saving customTask")
// 	customTask := new(models.CustomTask)
// 	if err := c.BodyParser(customTask); err != nil {
// 		common.SendHTTPBadRequest(c)
// 		axonlogger.WarningLogger.Println("Could not parse the given customTask")
// 		return
// 	}
// 	authorizedRoles := []string{common.ADMIN}
// 	if common.IsAllowed(c, authorizedRoles) {
// 		result := services.SaveCustomTask(customTask)
// 		common.SendGenericHTTPModel(c, result)
// 		return
// 	}
// 	axonlogger.WarningLogger.Println("Not authorized to save customTask:", customTask)
// 	common.SendHTTPStatusServiceUnavailable(c)
// }
