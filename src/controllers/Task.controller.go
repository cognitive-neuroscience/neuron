package controllers

import (
	"github.com/cognitive-neuroscience/neuron/src/common"
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/labstack/echo/v4"
)

type TaskController struct{}

// GetAllTasks retrieves all tasks from the database
func (t *TaskController) GetAllTasks(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= TASK CONTROLLER: GetAllTasks() =============")
	tasks, httpStatus := taskServiceImpl.GetAllTasks()

	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return e.JSON(httpStatus.Status, httpStatus)
	}

	return common.SendHTTPOkWithBody(e, tasks)
}

// GetTaskById retrieves a task with the given id
func (t *TaskController) GetTaskById(e echo.Context) error {
	axonlogger.InfoLogger.Println("============= TASK CONTROLLER: GetTaskById() =============")
	taskId := e.Param("taskId")

	tasks, httpStatus := taskServiceImpl.GetTaskById(taskId)
	if !common.HTTPRequestIsSuccessful(httpStatus.Status) {
		return e.JSON(httpStatus.Status, httpStatus)
	}
	return common.SendHTTPOkWithBody(e, tasks)
}
