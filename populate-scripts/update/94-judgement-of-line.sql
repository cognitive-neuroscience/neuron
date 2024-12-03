
-- Judgement of Line Task
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Lines and Angles Game",
    description = "Participants must judge and match the angle of a line",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the Lines and Angles Game",
                        "fr": "Bienvenue au Jeu des Lignes et des Angles"
                        },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please read the instructions carefully.",
                                "fr": "Lisez attentivement les instructions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"SUIVANT\\" pour continuer"
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
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will be shown a line like this:",
                                "fr": "Une ligne comme celle-ci sera affichée:"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/judgement-of-line/instructions-1.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Underneath it, you will see a set of 15 lines:",
                                "fr": "En dessous, vous verrez un ensemble de 15 lignes:"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/judgement-of-line/instructions-2.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "With your mouse, click on the line that matches the angle of the single line at the top. There will be 20 lines to match and you’ll have 10 seconds for each line.",
                                "fr": "Avec votre souris vous devrez cliquer sur la ligne qui correspond à l’angle de la ligne unique en haut. Vous aurez 20 lignes à identifier et vous disposerez de 10 secondes pour chaque ligne."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" to start",
                                "fr": "Cliquez sur \\"COMMENCER\\" pour commencer"
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
                "componentName": "JUDGEMENTOFLINECOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 10000,
                    "durationOfFeedback": 3000,
                    "numTrials": 20,
                    "interTrialDelay": 5000,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [ "1", "8", "11", "7", "10", "13", "4", "12", "2", "5", "8", "3", "11", "4", "15", "6" ,"12", "5", "14", "9" ]
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Congratulations! You completed the game.",
                                "fr": "Félicitations! Vous avez terminé le jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for your participation.",
                                "fr": "Merci pour votre participation."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\"",
                                "fr": "Cliquez sur \\"SUIVANT\\""
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
WHERE id = 94;