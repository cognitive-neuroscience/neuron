package controllers

import (
	"log"

	"github.com/cognitive-neuroscience/neuron/src/common"
	"github.com/cognitive-neuroscience/neuron/src/services"
	"github.com/gofiber/fiber"
)

// GetTableData is the download endpoint that reads the code and task from the url and returns the data
func GetTableData(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		experimentCode := c.Params("code")
		task := c.Params("taskName")
		data, _ := services.GetTableData(experimentCode, task)
		c.JSON(data)
		return
	}
	common.SendHTTPForbidden(c)
	return
}

// GetTableNames returns a list of tables that data can be retrieved from
func GetTableNames(c *fiber.Ctx) {
	authorizedRoles := []string{common.ADMIN}
	if common.IsAllowed(c, authorizedRoles) {
		tableNames, err := services.GetTableNames()
		if err != nil {
			log.Println(err)
			common.SendHTTPStatusServiceUnavailable(c)
			return
		}
		c.JSON(tableNames)
		return
	}
	common.SendHTTPForbidden(c)
}
