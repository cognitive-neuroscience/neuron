-- Geriatric Depression Scale Short Form

UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Geriatric Depression Scale",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "header-1",
                            "title": {
                                "en": "Choose the best answer for how you have felt over the <b>past week</b>.",
                                "fr": "Choisissez la réponse qui correspond à la façon dont vous vous sentiez dans <b>la dernière semaine</b>."
                            },
                            "styles": {
                                "title-font-size": "lg"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Are you basically satisfied with your life?",
                                "fr": "Êtes-vous satisfait de votre vie?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "are-you-basically-satisfied-with-your-life",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Have you dropped many of your activities and interests?",
                                "fr": "Avez-vous abandonné beaucoup de vos activités et de vos intérêts?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "have-you-dropped-many-of-your-activities-and-interests",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel that your life is empty?",
                                "fr": "Avez-vous le sentiment que votre vie est vide?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-feel-that-your-life-is-empty",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you often get bored?",
                                "fr": "Vous ennuyez-vous souvent?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-often-get-bored",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Are you in good spirits most of the time?",
                                "fr": "Êtes-vous de bonne humeur la plupart du temps?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "are-you-in-good-spirits-most-of-the-time",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Are you afraid that something bad is going to happen to you?",
                                "fr": "Craignez-vous qu''un malheur vous arrive?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "are-you-afraid-that-something-bad-is-going-to-happen-to-you",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel happy most of the time?",
                                "fr": "Vous sentez-vous heureux la plupart du temps?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-feel-happy-most-of-the-time",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you often feel helpless?",
                                "fr": "Avez-vous souvent l''impression de ne pouvoir être aidé?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-often-feel-helpless",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you prefer to stay at home, rather than going out and doing new things?",
                                "fr": "Préférez-vous rester à la maison plutôt que de sortir et faire des choses nouvelles?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-prefer-to-stay-at-home-rather-than-going-out-and-doing-new-things",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel you have more problems with memory than most?",
                                "fr": "Avez-vous l''impression d''avoir plus de problèmes de mémoire que la plupart des gens?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-feel-you-have-more-problems-with-memory-than-most",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you think it is wonderful to be alive now?",
                                "fr": "Pensez-vous qu''il est merveilleux de vivre actuellement?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-think-it-is-wonderful-to-be-alive-now",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel pretty worthless the way you are now?",
                                "fr": "Sentez-vous que vous ne valez pas grand chose tel que vous êtes actuellement?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-feel-pretty-worthless-the-way-you-are-now",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel full of energy?",
                                "fr": "Vous sentez-vous plein d''énergie?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-feel-full-of-energy",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel that your situation is hopeless?",
                                "fr": "Pensez-vous que votre situation est sans espoir?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-feel-that-your-situation-is-hopeless",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you think that most people are better off than you are?",
                                "fr": "Pensez-vous que la plupart des gens sont en meilleure forme que vous?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "do-you-think-that-most-people-are-better-off-than-you-are",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 88;