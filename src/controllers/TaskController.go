package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

type TaskController struct{}

// func GetAllSharplabRoutes(e echo.Context) error {

// 	s, err := taskService.GetAllSharplabRoutes()
// 	if err != nil {
// 		return err
// 	}
// 	c.JSON(s)
// 	return nil
// }

// GetTasksByStudyId
func (t *TaskController) GetTasksByStudyId(e echo.Context) error {
	id := e.Param("id")
	tasks, err := taskServiceImpl.GetTasksByStudyId(id)
	if err != nil {
		return common.SendGenericHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusInternalServerError, Message: err.Error()})
	}
	return common.SendHTTPOkWithBody(e, tasks)
}

// GetAllCustomTasks gets all CustomTasks from the DB
func (t *TaskController) GetAllTasks(e echo.Context) error {
	tasks, err := taskServiceImpl.GetAllTasks()
	if err != nil {
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	return common.SendHTTPOkWithBody(e, tasks)
}

// DeleteCustomTaskByID deletes the CustomTask from the DB given the ID number
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

// SaveCustomTask is the customTask api entry point for saving a CustomTask given the json. This describes the data that populates
// an embedded pavlovia task
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
