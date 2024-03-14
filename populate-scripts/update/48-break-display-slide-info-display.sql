
-- Break Display Slide INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Break Display Slide",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Thank you for your participation and for sticking with it so far!",
                        "fr": "Merci pour votre participation et d''avoir persévéré jusqu''à présent!"
                    },
                    "sections": [
                        {
                            "header": {
                                "en": "A few reminders:",
                                "fr": "Quelques rappels:"
                            },
                            "textContent": ""
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "1. You can take breaks if you want to. We simply ask that you <b>wait until the end of a game or of a questionnaire</b>, otherwise your data will be lost.",
                                "fr": "1. Vous pouvez prendre des pauses si vous le souhaitez. Par contre, nous vous demandons d''<b>attendre la fin d''un jeu ou d''un questionnaire</b>, sinon vos données seront perdues."
                            }
                        },
                        {
                            "header": "",
                            "indent": 2,
                            "textContent": {
                                "en": "<b>To take a break:</b> simply close this window.",
                                "fr": "<b>Pour prendre une pause:</b> fermez simplement cette fenêtre."
                            }
                        },
                        {
                            "header": "",
                            "indent": 2,
                            "textContent": {
                                "en": "<b>To get back to it:</b> use the link you were sent in the email. It will take you to the log-in page.",
                                "fr": "<b>Pour y revenir:</b> utilisez le lien qui vous a été envoyé dans le courriel. Cela vous amènera à la page de connexion."
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "2. Please complete the full set of brain games within ONE week from when you started.",
                                "fr": "2. Veuillez compléter l''ensemble complet des jeux et questionnaires dans un délai de UNE semaine."
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "3. We also ask that you do the games when you are feeling ''ON'', i.e. when you feel that your PD medications are in effect (typically best about 1-2 hours after your last dose). If you don''t take PD medications, then please choose the time that works best for you.",
                                "fr": "3. Nous vous demandons également de compléter les jeux à un moment où vous vous sentez ''ON'', c''est-à-dire lorsque vous sentez que vos médicaments pour la maladie de Parkinson ont pris effet (généralement 1 à 2 heures après votre dernière dose). Si vous ne prenez pas de médicaments pour la maladie de Parkinson, veuillez choisir le moment qui vous convient le mieux."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "<b>QUESTIONS OR EXPERIENCING DIFFICULTIES?</b>",
                                "fr": "<b>DES QUESTIONS OU DES DIFFICULTÉS ?</b>"
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
                                "fr": "Pour prendre une pause maintenant, fermez la fenêtre."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "To continue, please click CONTINUE",
                                "fr": "Pour continuer, veuillez cliquer sur ''CONTINUE''"
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
WHERE id = 48;