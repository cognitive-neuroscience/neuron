
-- Welcome Display Slide INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "reward_mood",
    description = "",
    external_url = "Reward Mood Display Slide",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the study of Neurocognition on the Web for Parkinson''s disease",
                        "fr": "Bienvenue à l''étude de Neurocognition sur le Web pour la maladie de Parkinson"
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
                            "en": "You will be playing one brain game and filling out questionnaires about your mood.",
                            "fr": "Vous allez jouer à un jeu cognitif et remplir des questionnaires sur votre humeur."
                        }
                    },
                    {
                        "header": "",
                        "textContent": {
                            "en": "The study takes approximately 30 minutes to complete. If possible, please complete the study in one sitting.",
                            "fr": "L''étude dure environ 30 minutes. Si possible, complétez l''étude en une seule séance."
                        }
                    },
                    {
                        "header": "",
                        "textContent": {
                            "en": "If you cannot complete the study in one sitting, you can come back later to finish the study. If you need to take a break from the study, we simply ask that you wait until the end of a game or questionnaire, otherwise your data will be lost.",
                            "fr": "Si vous ne pouvez pas le faire en une séance, vous pouvez revenir plus tard pour terminer l' 'étude. Si vous avez besoin de prendre une pause, nous vous demandons simplement d''attendre la fin d''un jeu ou d''un questionnaire, sinon vos données seront perdues."
                        }
                    },
                    {
                        "header": "",
                        "textContent": {
                            "en": "<b>To take a break:</b> simply close this window.",
                            "fr": "<b>Pour prendre une pause :</b> fermez simplement cette fenêtre."
                        }
                    },
                    {
                        "header": "",
                        "textContent": {
                            "en": "<b>To get back to it:</b> use the link you were sent in the email. It will take you to the log-in page.",
                            "fr": "<b>Pour y revenir :</b> utilisez le lien qui vous a été envoyé dans le courriel. Cela vous amènera à la page de connexion."
                        }
                    },
                    {
                        "header": "",
                        "indent": 1,
                        "textContent": {
                            "en": "We also ask that you do the games when you are feeling \'ON\', i.e. when you feel that your PD medications are in effect (typically best about 1-2 hours after your last dose). If you don''t take PD medications, then please choose the time that works best for you.",
                            "fr": "Nous vous demandons également de compléter les jeux à un moment où vous vous sentez \'ON\', c''est-à-dire lorsque vous sentez que vos médicaments pour la maladie de Parkinson ont pris effet (généralement 1 à 2 heures après votre dernière dose). Si vous ne prenez pas de médicaments pour la maladie de Parkinson, veuillez choisir le moment qui vous convient le mieux."
                        }
                    },
                    {
                        "textContent": {
                            "en": "<b>QUESTIONS OR EXPERIENCING DIFFICULTIES?</b>",
                            "fr": "<b>DES QUESTIONS OU DES DIFFICULTÉS?</b>"
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
                            "fr": "Pour continuer, veuillez cliquer sur \'CONTINUE\'"
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
WHERE id = 92;