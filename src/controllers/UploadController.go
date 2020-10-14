package controllers

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/services"

	"github.com/gofiber/fiber"
)

// UploadTaskData represents the entry point for the Upload API
func UploadTaskData(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN, common.PARTICIPANT}
	if common.IsAllowed(c, authorizedRoles) {
		var taskData interface{}
		if err := c.BodyParser(&taskData); err != nil {
			log.Println(err)
			common.SendHTTPBadRequest(c)
			return
		}
		experimentCode := c.Params("code")
		taskName := c.Params("taskName")
		httpStatus := services.UploadTaskData(experimentCode, taskName, taskData)
		common.SendGenericHTTPModel(c, httpStatus)
		return
	}
	common.SendHTTPForbidden(c)
}
