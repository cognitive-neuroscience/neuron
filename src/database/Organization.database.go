package database

import (
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for retrieving data involving organizations
 */

type OrganizationRepository struct{}

// GetOrganizationById retrieves the given organization by id.
// It returns a 200, 404, or 500 status code.
func (o *OrganizationRepository) GetOrganizationById(organizationId uint) (models.Organization, models.HTTPStatus) {
	// commented this out because it spams the logs
	// axonlogger.InfoLogger.Println("ORGANIZATION DATABASE: GetOrganizationById()")
	defer func() {
		if err := recover(); err != nil {
			axonlogger.ErrorLogger.Println("there was an error getting the organization by id", err)
		}
	}()

	organization := models.Organization{}
	httpStatus := baseRepositoryImpl.GetOneBy(
		&organization,
		`
			SELECT id, name, logo_path
			FROM organizations
			WHERE id = ?
			LIMIT 1
		`,
		organizationId,
	)
	return organization, httpStatus
}
