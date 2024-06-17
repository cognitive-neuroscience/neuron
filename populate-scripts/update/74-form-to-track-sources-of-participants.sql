
-- Form to track sources of participants
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Online Study Recruitement Questionnaire",
    description = "Questionnaire asking the participant how they were recruited to our study",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Please choose the best answer which describes how you heard about this study",
                        "fr": "Veuillez indiquer la réponse qui décrit le mieux comment vous avez découvert cette étude"
                    },
                    "questions": [
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "How did you hear about this study",
                                "fr": "Comment avez-vous découvert cette étude"
                            },
                            "key": "recruitment source",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Email from Quebec Parkinson Network (QPN)",
                                        "fr": "Courriel du Réseau Parkinson Québec (RPQ)"
                                    },
                                    "value": "QPN"
                                },
                                {
                                    "label": {
                                        "en": "Email from The Canadian Open Parkinson Network (C-OPN)",
                                        "fr": "Courriel du Réseau Parkinson Canadien Ouvert (RPCO)"
                                    },
                                    "value": "C-OPN"
                                },
                                {
                                    "label": {
                                        "en": "Advertisement from Parkinson Quebec",
                                        "fr": "Annonce du Parkinson Québec"
                                    },
                                    "value": "Parkinson Quebec"
                                },
                                {
                                    "label": {
                                        "en": "Advertisement from Parkinson Canada",
                                        "fr": "Annonce du Parkinson Canada"
                                    },
                                    "value": "Parkinson Canada"
                                },
                                {
                                    "label": {
                                        "en": "Not sure/None of the above",
                                        "fr": "Pas sûr/Aucune de ces réponses"
                                    },
                                    "value": "None"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 74;