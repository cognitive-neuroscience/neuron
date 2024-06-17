
-- Stress Study Wait INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Stress Study Wait Slide",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Thank you for all your participation so far!",
                        "fr": "Merci pour votre participation jusqu''ici!" 
                    },
                    "sections": [
                        {
                            "textContent": {
                                "en": "Once you have reached this slide, please <b>wait</b> and <b>do not</b> press any buttons until you are instructed by the researcher to proceed to the next task.",
                                "fr": "Une fois arrivé à cet écran, veuillez <b>attendre</b> et <b>n''appuyez sur aucun</b> bouton. La chercheuse vous dira quand vous pourrez passer à la tâche suivante." 
                            }
                        },
                        {
                            "textContent": {
                                "en": "The researcher will return shortly.",
                                "fr": "La chercheuse va revenir bientôt." 
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
WHERE id = 55;