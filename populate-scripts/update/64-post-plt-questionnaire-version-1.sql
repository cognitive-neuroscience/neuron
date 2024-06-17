
-- POST PLT Questionnaire (version 1)
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "POST PLT Questionnaire (FOR PLT VERSION 1)",
    description = "Questionnaire asking the participant what they thought was the most/least likely stimulus to be correct",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "Now think about the symbols you saw",
                                "fr": "Pensez aux symboles que vous avez vus."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Which image was <b>LEAST</b> likely to be correct?",
                                "fr": "Quel symbole était le <b>MOINS</b> susceptible de vous offrir des points?"
                            },
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "horizontal",
                            "key": "image_least_likely_correct",
                            "radioButtonImageOptions": [
                                "/assets/images/stimuli/plt/version1/image1.jpg",
                                "/assets/images/stimuli/plt/version1/image2.jpg",
                                "/assets/images/stimuli/plt/version1/image3.jpg",
                                "/assets/images/stimuli/plt/version1/image4.jpg",
                                "/assets/images/stimuli/plt/version1/image5.jpg",
                                "/assets/images/stimuli/plt/version1/image6.jpg"
                            ],
                            "options": [
                                {
                                    "label": "1",
                                    "value": "image1"
                                },
                                {
                                    "label": "2",
                                    "value": "image2"
                                },
                                {
                                    "label": "3",
                                    "value": "image3"
                                },
                                {
                                    "label": "4",
                                    "value": "image4"
                                },
                                {
                                    "label": "5",
                                    "value": "image5"
                                },
                                {
                                    "label": "6",
                                    "value": "image6"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Which image was <b>MOST</b> likely to be correct?",
                                "fr": "Quel symbole était le <b>PLUS</b> susceptible de vous offrir des points?"
                            },
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "horizontal",
                            "key": "image_most_likely_correct",
                            "radioButtonImageOptions": [
                                "/assets/images/stimuli/plt/version1/image1.jpg",
                                "/assets/images/stimuli/plt/version1/image2.jpg",
                                "/assets/images/stimuli/plt/version1/image3.jpg",
                                "/assets/images/stimuli/plt/version1/image4.jpg",
                                "/assets/images/stimuli/plt/version1/image5.jpg",
                                "/assets/images/stimuli/plt/version1/image6.jpg"
                            ],
                            "options": [
                                {
                                    "label": "1",
                                    "value": "image1"
                                },
                                {
                                    "label": "2",
                                    "value": "image2"
                                },
                                {
                                    "label": "3",
                                    "value": "image3"
                                },
                                {
                                    "label": "4",
                                    "value": "image4"
                                },
                                {
                                    "label": "5",
                                    "value": "image5"
                                },
                                {
                                    "label": "6",
                                    "value": "image6"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 64;