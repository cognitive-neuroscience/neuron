package controllers

type TaskController struct{}

// // GetAllCustomTasks gets all CustomTasks from the DB
// func (t *TaskController) GetAllTasks(e echo.Context) error {
// 	tasks, err := taskServiceImpl.GetAllTasks()
// 	if err != nil {
// 		return common.SendHTTPStatusServiceUnavailable(e)
// 	}
// 	return common.SendHTTPOkWithBody(e, tasks)
// }

// func (t *TaskController) GetTaskByTaskId(e echo.Context) error {
// 	taskId := e.Param("taskId")

// 	task, err := taskServiceImpl.GetTaskByTaskId(taskId)
// 	if err != nil {
// 		return common.SendHTTPWithMessage(e, models.HTTPStatus{Status: http.StatusInternalServerError, Message: err.Error()})
// 	}
// 	return common.SendHTTPOkWithBody(e, task)
// }
