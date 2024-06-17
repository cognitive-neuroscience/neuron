
-- Stress Study Post Manipulation Check In Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Stress Study: Post Manipulation Check In",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Le Questionnaire"
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "With regards to the situation you just experienced, please consider how you are feeling in this current moment when answering the following questions. Drag the marker to the appropriate position on the 0-100 scale with 0 being \\"not feeling this at all\\" and 100 being \\"extremely feeling this\\".",
                                "fr": "Par rapport à la situation que vous venez de vivre, veuillez considérer comment vous vous sentez en ce moment en répondant aux questions suivantes. Faites glisser le marqueur vers la position appropriée sur l''échelle de 0 à 100, 0 étant \\"ne ressentant pas du tout cette émotion\\" et 100 étant \\"la ressentant beaucoup\\"."
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "Use your mouse to drag the marker in order to select your answer",
                                "fr": "Utilisez votre souris pour faire glisser le marqueur afin de sélectionner votre réponse"
                            }
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "How stressed do you feel?",
                                "fr": "À quel point vous sentez-vous stressé.e?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How stressed do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne ressens pas du tout ça"
                                },
                                {
                                    "en": "Extremely",
                                    "fr": "Extrêmement"
                                }
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "How pleased do you feel?",
                                "fr": "À quel point vous sentez-vous content.e?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How pleased do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne ressens pas du tout ça"
                                },
                                {
                                    "en": "Extremely",
                                    "fr": "Extrêmement"
                                }
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "How calm do you feel?",
                                "fr": "À quel point vous sentez-vous calme?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How calm do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne ressens pas du tout ça"
                                },
                                {
                                    "en": "Extremely",
                                    "fr": "Extrêmement"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 54;