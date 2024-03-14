
-- Stress Study Post Test
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Stress Study Post Test",
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
                        "fr": "Les Questions" 
                    },
                    "questions": [
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Did you at any point think that you were being \\"tricked\\"?",
                                "fr": "Est-ce que vous avez pensé à un moment donné qu''ils y avait des \\"pièges\\" dans l''étude?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Did you at any point think that you were being tricked",
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
                                "en": "Did you think that parts of this study were deceiving you?",
                                "fr": "Est-ce que vous avez pensé à un moment donné que vous étiez en train d''être \\"trompé.e\\"?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Did you think that parts of this study were deceiving you",
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
                            "questionType": "freeTextResponse",
                            "title": {
                            "en": "If you answered <b>YES</b> to either of the above, please describe your experience with the games and the ice water task. How did you feel and what thoughts did you have?",
                            "fr": "Si vous avez répondu <b>OUI</b> à une des deux dernières questions, SVP décrivez votre expérience avec les jeux et le bain de glace. Comment vous ressentiez-vous et quelles pensées aviez-vous?"
                            },
                            "key": "description of experiences"
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 40;