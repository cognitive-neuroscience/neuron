
-- Holmes-Rahe Life Stress Inventory
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Holmes-Rahe Life Stress Inventory",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Le Questionnaire" 
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "<p>Please indicate whether the following life events have happened to you during the last year (last 12 months).</p>",
                                "fr": "<p>Veuillez indiquer si vous avez vécu les événements de vie suivants au cours de la dernière année (12 derniers mois)." 
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Death of spouse",
                                "fr": "Décès d''un conjoint.e" 
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Death of spouse",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Divorce",
                                "fr": "Divorce"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Divorce",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Marital separation from mate",
                                "fr": "Séparation d''un conjoint.e"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Marital separation from mate",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Detention in jail or other institution",
                                "fr": "Détention en prison ou dans une autre institution"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Detention in jail or other institution",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Death of a close family member",
                                "fr": "Décès d''un membre de la famille proche"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Death of a close family member",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major personal injury or illness",
                                "fr": "Blessure ou maladie grave"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major personal injury or illness",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Marriage",
                                "fr": "Mariage"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Marriage",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Being fired at work",
                                "fr": "Licenciement (perte d''emploi)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Being fired at work",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Marital reconciliation with mate",
                                "fr": "Réconciliation d''un mariage ou relation conjugale"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Marital reconciliation with mate",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Retirement from work",
                                "fr": "Prise de retraite"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Retirement from work",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in the health or behaviour of a family member",
                                "fr": "Changement majeur de la santé ou du comportement d''un membre de la famille"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in the health or behaviour of a family member",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Pregnancy",
                                "fr": "Grossesse"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Pregnancy",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Sexual difficulties",
                                "fr": "Difficultés sexuelles"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Sexual difficulties",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Gaining a new family member (i.e…. Birth, adoption, older adult moving in, etc.)",
                                "fr": "Nouveau membre dans la famille (p.ex. naissance, adoption, aménagement d''une personne âgée chez soi, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Gaining a new family member (ie Birth, adoption, older adult moving in, etc)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major business readjustment",
                                "fr": "Réajustement majeur d''une entreprise"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major business readjustment",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in financial state (i.e. a lot worse or better off than usual)",
                                "fr": "Changement majeur dans la situation financière (c.-à-d. beaucoup pire ou mieux que d''habitude)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in financial state (ie a lot worse or better off than usual)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Death of a close friend",
                                "fr": "Décès d''un.e ami.e proche"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Death of a close friend",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Changing to a different line of work",
                                "fr": "Changement de métier"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Changing to a different line of work",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in the number of arguments with spouse (i.e…. Either a lot more or a lot less than usual regarding child rearing, personal habits, etc.)",
                                "fr": "Changement majeur dans le nombre de disputes avec son conjoint.e (c.-à-d. Soit beaucoup plus ou beaucoup moins que d''habitude concernant l''éducation des enfants, les habitudes personnelles, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in the number of arguments with spouse (ie Either a lot more or a lot less than usual regarding child rearing, personal habits, etc)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Taking on a mortgage (for home, business, etc…)",
                                "fr": "Prendre une hypothèque (pour une maison, une entreprise, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Taking on a mortgage (for home, business, etc…)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Foreclosure on a mortgage or a loan",
                                "fr": "Saisie hypothécaire ou d''un prêt, reprise de biens"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Foreclosure on a mortgage or a loan",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in responsibilities at work (i.e. promotion, demotion, etc.)",
                                "fr": "Changement majeur dans les responsabilités au travail (c.-à-d. promotion, rétrogradation, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in responsibilities at work (ie promotion, demotion, etc)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Son or daughter leaving home (marriage, attending college, joined mil.)",
                                "fr": "Enfant(s) ayant quitté la maison (pour cause de mariage, d''études collégiales, service militaire, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Son or daughter leaving home (marriage, attending college, joined mil)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "In-law troubles",
                                "fr": "Conflits avec la belle-famille"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In-law troubles",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Outstanding personal achievement",
                                "fr": "Réussite personnelle exceptionnelle"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Outstanding personal achievement",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Spouse beginning or ceasing work outside the home",
                                "fr": "Conjoint.e qui commence ou cesse de travailler hors de la maison"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Spouse beginning or ceasing work outside the home",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Beginning or ceasing of formal schooling",
                                "fr": "Début ou arrêt de la scolarité formelle"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Beginning or ceasing of formal schooling",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in living condition (new home, remodeling, deterioration of neighborhood or home etc.)",
                                "fr": "Changement majeur dans les conditions de vie (p.ex. nouvelle maison, rénovation, I associate ithdétérioration du quartier ou de la maison, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in living condition (new home, remodeling, deterioration of neighborhood or home etc)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Revision of personal habits (dress manners, associations, quitting smoking)",
                                "fr": "Révision des habitudes personnelles (p.ex. la tenue vestimentaire, groupe social, arrêt du tabac)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Revision of personal habits (dress manners, associations, quitting smoking)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Troubles with the boss",
                                "fr": "Conflits avec le patron"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Troubles with the boss",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major changes in working hours or conditions",
                                "fr": "Changements majeurs des horaires ou des conditions de travail"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major changes in working hours or conditions",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Changes in residence",
                                "fr": "Changement de la résidence"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Changes in residence",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Changing to a new school",
                                "fr": "Changement d''école"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Changing to a new school",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Select \\"Yes\\". This is simply to ensure you are paying attention!",
                                "fr": "Sélectionnez « Oui ». Ceci sert à vérifier votre niveau d’attention!"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "attentionCheck-Choose yes if you are reading",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in usual type and/or amount of recreation",
                                "fr": "Changement majeur de le type d''activités récréatives et/ou le temps passé à en profiter"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in usual type and/or amount of recreation",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in religious activity (a lot more or less than usual)",
                                "fr": "Changement majeur dans les activités religieuses (beaucoup plus ou moins que d''habitude)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in religious activity (a lot more or less than usual)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in social activities (clubs, movies, visiting, etc.)",
                                "fr": "Changement majeur dans les activités sociales (les clubs, la cinéma, des visites, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in social activities (clubs, movies, visiting, etc)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Taking on a loan (car, tv, freezer, etc.)",
                                "fr": "Sortir un prêt (pour la voiture, la télé, le congélateur, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Taking on a loan (car, tv, freezer, etc)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in sleeping habits (a lot more or a lot less than usual)",
                                "fr": "Changement majeur dans les habitudes de sommeil (beaucoup plus ou beaucoup moins que d''habitude)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in sleeping habits (a lot more or a lot less than usual)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in number of family get-togethers",
                                "fr": "Changement majeur dans le nombre de réunions de famille"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in number of family get-togethers",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major change in eating habits (a lot more or less food intake, or very different meal hours or surroundings)",
                                "fr": "Changement majeur dans les habitudes alimentaires (quantité beaucoup plus ou moins, heures de repas très différentes ou environnement très différent)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in eating habits (a lot more or less food intake, or very different meal hours or surroundings)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Vacation",
                                "fr": "Vacances"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Vacation",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Major holidays",
                                "fr": "Longues vacances"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Major holidays",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Minor violations of the law (traffic tickets, disturbing the peace, etc)",
                                "fr": "Violations mineures à la loi (contraventions, trouble à l''ordre public, etc.)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Minor violations of the law (traffic tickets, disturbing the peace, etc)",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 36;