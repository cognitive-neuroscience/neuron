package services

import (
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is the middle layer for handling data involving organizations
 */

type OrganizationService struct{}

func (o *OrganizationService) GetOrganizationById(organizationId uint) (models.Organization, error) {
	return organizationRepositoryImpl.GetOrganizationById(organizationId)
}
