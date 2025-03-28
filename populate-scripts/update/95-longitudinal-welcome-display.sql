
-- Longitudinal Welcome Display Slide INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Longitudinal Welcome Display Slide",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome back to the study of Neurocognition on the Web for Parkinson''s disease",
                        "fr": "Bon retour à l''étude de Neurocognition sur le Web pour la maladie de Parkinson"
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
                                "en": "You''re here because in the last two years you completed some of our brain games. We are now asking you to complete them again as part of our longitudinal study.",
                                "fr": "Vous êtes ici parce que, au cours des deux dernières années, vous avez complété certains de nos jeux cognitifs. Nous vous demandons maintenant de les compléter à nouveau dans le cadre de notre étude longitudinale."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Your participation will allow us to understand how cognition evolves over time, and help us expand online testing which allows us to significantly increase the number of people that can participate in research.",
                                "fr": "Votre participation nous permettra de comprendre comment la cognition évolue au fil du temps et de nous aider à développer les tests en ligne, ce qui nous permet d''augmenter considérablement le nombre de personnes pouvant participer à la recherche."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "You will be playing a series of brain games to help us better understand the thinking and memory changes experienced by people with Parkinson''s disease.",
                                "fr": "Vous allez jouer à une série de jeux cognitifs pour nous aider à mieux comprendre les changements cognitifs (ex. de pensée, de mémoire) vécus par les personnes atteintes de la maladie de Parkinson."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "You can do this all in one sitting, or leave (by closing the window) and come back later to finish the study.",
                                "fr": "Vous pouvez compléter le tout en une seule séance, ou partir (en fermant la fenêtre) et revenir plus tard pour compléter l''étude."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Please aim to complete all the games and questionnaires within ONE week from when you started. You''ll be able to see your progress in your dashboard when you log in.",
                                "fr": "Veuillez viser de compléter l''ensemble complet des jeux et questionnaires dans un délai de UNE semaine. Vous pourrez voir votre progression sur votre tableau de bord au moment de votre connexion."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Throughout the study please feel free to take breaks! We simply ask that you wait until the end of a game or of a questionnaire, otherwise your data will be lost.",
                                "fr": "Tout au long de cette étude, n''hésitez pas à prendre des pauses! Par contre, nous vous demandons d''attendre la fin d''un jeu ou d''un questionnaire, sinon vos données seront perdues."
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
                                "en": "We also ask that you do the games when you are feeling ''ON'', i.e. when you feel that your PD medications are in effect (typically best about 1-2 hours after your last dose). If you don''t take PD medications, then please choose the time that works best for you.",
                                "fr": "Nous vous demandons également de compléter les jeux à un moment où vous vous sentez ''ON'', c''est-à-dire lorsque vous sentez que vos médicaments pour la maladie de Parkinson ont pris effet (généralement 1 à 2 heures après votre dernière dose). Si vous ne prenez pas de médicaments pour la maladie de Parkinson, veuillez choisir le moment qui vous convient le mieux."
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
WHERE id = 95;