package services

import (
	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is the middle layer for handling data involving organizations
 */

type OrganizationService struct{}

// GetOrganizationById gets the organization by the given id
func (o *OrganizationService) GetOrganizationById(organizationId uint) (models.Organization, models.HTTPStatus) {
	axonlogger.InfoLogger.Println("ORGANIZATION SERVICE: GetOrganizationById()")

	return organizationRepositoryImpl.GetOrganizationById(organizationId)
}
