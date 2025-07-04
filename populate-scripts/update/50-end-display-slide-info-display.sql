
-- End Display Slide INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "End Display Slide",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "You have successfully completed the Neurocognition on the Web study!",
                        "fr": "Vous avez terminé avec succès l''étude de la Neurocognition sur le Web!"
                    },
                    "sections": [
                        {
                            "header": {
                                "en": "Thank you for participating in our study! You will be entered in a draw to win a $100 e-gift card from a retailer of your choice that offers e-gift cards.",
                                "fr": "Merci d''avoir participé à notre étude! Vous serez inscrit à un tirage au sort pour gagner une carte-cadeau électroniques de 100$ auprès du détaillant de votre choix proposant des cartes-caudeaux électroniques."
                            },
                            "textContent": ""
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "If you have any questions about our study, please feel free to contact us through our email.",
                                "fr": "Si vous avez des questions sur notre étude, n''hésitez pas à nous contacter par courriel."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Furthermore, we would love to hear your feedback and your experience using our platform, as this project is still a work in progress. Please feel free to contact us (sharplab.neuro@mcgill.ca).",
                                "fr": "De plus, nous aimerions entendre vos commentaires et votre expérience d''utilisation de notre plateforme, car ce projet est toujours en cours. N''hésitez pas à nous contacter (sharplab.neuro@mcgill.ca)."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "If you are interested in our previous research, please visit our website www.sharplab.ca for blog posts describing past studies.",
                                "fr": "Si vous êtes intéressé par nos recherches précédentes, veuillez visiter notre site web www.sharplab.ca pour consulter des articles de blog décrivant des études passées."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "If you are in full-screen mode, you can press ''esc'' to exit, then close the window or browser. You can also click \\"Continue\\" which will bring you back to your dashboard.",
                                "fr": "Si vous êtes en mode plein écran, vous pouvez appuyer sur ''esc'' pour quitter, puis fermer la fenêtre ou le navigateur. Vous pouvez également cliquer sur \\"Continuer\\" qui vous ramènera à votre tableau de bord."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Thank you so much for participating!",
                                "fr": "Merci beaucoup d''avoir participé!"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "<b>Contact Email:</b> sharplab.neuro@mcgill.ca",
                                "fr": "<b>Courriel pour nous contacter :</b> sharplab.neuro@mcgill.ca"
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
WHERE id = 50;
