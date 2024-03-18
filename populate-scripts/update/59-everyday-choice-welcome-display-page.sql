
-- Everyday Choice Welcome Display Page
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Everyday Choice Welcome Display Page",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the study of Neurocognition on the Web for PD - Everyday Activities Game",
                        "fr": "Bienvenu à l''étude de Neurocognition sur le web pour la MP - Le jeu des Activités Quotidiennes"
                    },
                    "sections": [
                        {
                            "header": {
                                "en": "Thank you for participating in our study!",
                                "fr": "Merci de participer à notre étude!"
                            },
                            "textContent": ""
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "You will be playing a game of choice between everyday activities and completing questionnaires to help us better understand decision-making and cognition in people with Parkinson''s disease.",
                                "fr": "Vous allez jouer à un jeu de choix entre des activités quotidiennes et remplir des questionnaires. Ceci nous aidera à mieux comprendre le processus de prise de décision et la cognition chez les personnes atteintes de la maladie de Parkinson"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "While we ask that you complete the study in one sitting, please feel free to take breaks! We simply ask that you wait until the end of a testing block or of a questionnaire, otherwise your data will be lost.",
                                "fr": "Quoiqu''on vous demande de compléter l''étude en une seule fois, SVP n''hésitez-pas à prendre des pauses! Nous vous demandons simplement d''attendre jusqu''à la fin d''une partie d''un test ou d''un questionnaire, sinon vos données seront perdues."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "<b>To take a break:</b> simply close this window.",
                                "fr": "</b>Pour prendre une pause:</b> simplement fermez cette fenêtre."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "<b>To get back to it:</b> use the link you were sent in the email. It will take you to the log-in page.",
                                "fr": "</b>Pour y revenir:</b> utilisez le lien qui vous a été envoyé par courriel. Ceci va vous amener à la page de connexion."
                            }
                        },
                        {
                            "header": "",
                            "indent": 1
                        },
                        {
                            "textContent": {
                                "en": "<b>QUESTIONS OR EXPERIENCING DIFFICULTIES?</b>",
                                "fr": "</b>DES QUESTIONS OU DES DIFFICULTÉS?</b>"
                            }
                        },
                        {
                            "header": "",
                            "textContent": "sharplab.neuro@mcgill.ca"
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "To take a break now, close the window.",
                                "fr": "Pour prendre une pause maintenant, fermez cette fenêtre."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "To continue, please click CONTINUE",
                                "fr": "Pour continuer, SVP cliquez CONTINUE"
                            }
                        }
                    ],
                    "buttons": {
                        "displayContinueButton": true
                    }
                }
            }
        ]
    }'
WHERE id = 59;