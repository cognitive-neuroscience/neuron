
-- Iowa Gambling Task
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "SDMT",
    description = "Symbol Digit Modalities Task. The participant needs to use a key that maps images to numbers. They must look at a grid of images, and input the associated numbers",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "SDMTCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 180000,
                    "numRows": 1,
                    "numCols": 9,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "SDMTCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 120000,
                    "numRows": 1,
                    "numCols": 16,
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
WHERE id = 93;