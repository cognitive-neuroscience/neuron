
-- Information Task Questionnaire Round 5
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Information Task Questionnaire Round 5",
    description = "The participant is presented with a questionnaire asking them about the lowest value that they would have accepted.",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title":"Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "Thanks for playing! Now we have a few questions about your strategy during the game. At different points in the game, you may have felt satisfied with the highest value card you had drawn, so you woudl pick it instead of drawing a new card.",
                                "fr": ""
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "For example, on the first turn, if you happened to draw a 99, then you may have been satisfied enough with it to pick it for the rest of the game. For each of the turns listed below, what was the LOWEST value for a card that would have been enough for you to pick it fore the rest of the game? When you are finished, click the next button to submit your number. We will ask you about 6 different turns.",
                                "fr": ""
                            }
                        },
                        {
                            "questionType": "input",
                            "title": {
                                "en": "For the 5th round out of 20, the lowest card that would be enough was:",
                                "fr": ""
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true
                            },
                            "key": "lowestCard"
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 80;