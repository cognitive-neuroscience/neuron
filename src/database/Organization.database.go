package database

import (
	"errors"

	axonlogger "github.com/cognitive-neuroscience/neuron/src/logger"
	"github.com/cognitive-neuroscience/neuron/src/models"
)

/*
 * This file is for retrieving data involving organizations
 */

type OrganizationRepository struct{}

func (o *OrganizationRepository) GetOrganizationById(organizationId uint) (models.Organization, error) {
	organization := models.Organization{}

	baseRespositoryImpl := BaseRepository{}
	if err := baseRespositoryImpl.GetOneBy(
		&organization,
		`
			SELECT id, name, logo_path
			FROM organizations
			WHERE id = ?
			LIMIT 1
		`,
		organizationId,
	); err != nil {
		axonlogger.ErrorLogger.Println("There was an error getting organization by ID from the DB", err)
		return organization, errors.New("there was an error getting the organization")
	}

	return organization, nil
}
