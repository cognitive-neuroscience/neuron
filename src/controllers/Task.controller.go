package controllers

import (
	"net/http"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/models"
	"github.com/labstack/echo/v4"
)

type TaskController struct{}

// GetAllCustomTasks gets all CustomTasks from the DB
func (t *TaskController) GetAllTasks(e echo.Context) error {
	tasks, err := taskServiceImpl.GetAllTasks()
	if err != nil {
		return common.SendHTTPStatusServiceUnavailable(e)
	}
	return common.SendHTTPOkWithBody(e, tasks)
}

func (t *TaskController) GetTaskByTaskId(e echo.Context) error {
	taskId := e.Param("taskId")

	task, err := taskServiceImpl.GetTaskByTaskId(taskId)
	if err != nil {
		return common.SendGenericHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusInternalServerError, Message: err.Error()})
	}
	return common.SendHTTPOkWithBody(e, task)
}
