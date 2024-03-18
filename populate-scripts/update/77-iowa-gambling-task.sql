
-- Iowa Gambling Task
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Iowa Gambling Task",
    description = "The participant needs to choose one out of four card decks (named A,B,C, and D). The participant can win and/or lose money with each card.",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "image-fill",
                            "imagePath": {
                                "en": "/assets/images/instructions/iowagambling/en/1.jpeg",
                                "fr": "/assets/images/instructions/iowagambling/fr/1.jpeg"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "image-fill",
                            "imagePath": {
                                "en": "/assets/images/instructions/iowagambling/en/2.jpeg",
                                "fr": "/assets/images/instructions/iowagambling/fr/2.jpeg"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": false,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "image-fill",
                            "imagePath": {
                                "en": "/assets/images/instructions/iowagambling/en/3.jpeg",
                                "fr": "/assets/images/instructions/iowagambling/fr/3.jpeg"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": true,
                        "previousDisabled": false,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "IOWAGAMBLINGCOMPONENT",
                "componentConfig": {
                    "numTrials": 100,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Congratulations!",
                        "fr": "Félicitations!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You finished the game successfully",
                                "fr": "Vous avez terminé le jeu avec succès"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for your participation",
                                "fr": "Merci pour votre participation"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            }
        ]
    }'
WHERE id = 77;