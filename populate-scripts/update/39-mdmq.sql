
-- MDMQ
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "MDMQ",
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
                    "questions":[
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "In the following you find a list of expressions that characterize different moods. Please take a look at the list, word by word, and mark for each word the answer that represents best the actual intensity of your mood status.",
                                "fr": "Dans la prochaine partie, vous trouverez une liste des expressions qui caractérisent différentes émotions. Jetez un coup d''oeil à la liste, mot par mot, et marquez pour chaque mot la réponse qui représente le mieux l''intensité de votre état d''esprit actuellement."
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "Please pay attention to the following facts:",
                                "fr": "Veuillez prêter attention aux faits suivants:"
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText3",
                            "title": {
                                "en": "- Within the list there are some attributes that possibly describe the same or similar moods. Please do not get irritated due to this fact, and judge each attribute irrespective of your answer to another attribute.<br />- Please judge only how you feel at this moment, and not how you normally or sometimes feel.<br/ >- If you have some difficulties in finding an answer, please mark the answer that fits best.",
                                "fr": "- Dans la liste, certains attributs décrivent peut-être des humeurs identiques ou similaires. Ne soyez pas irrité par ce fait et jugez chaque attribut indépendamment de votre réponse à un autre attribut.<br />- Veuillez juger uniquement ce que vous ressentez en ce moment, et non ce que vous ressentez normalement ou parfois.<br />- Si vous avez de la difficulté à choisir une réponse, veuillez marquer la réponse qui vous convient le mieux."
                            },
                            "indent": 1
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText4",
                            "title": {
                                "en": "Please judge each word and do not leave out a word.",
                                "fr": "Veuillez juger chaque mot et n''omettez aucun mot."
                            }
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "How CONTENT do you feel?",
                                "fr": "À quel point vous sentez-vous COMBLÉ.E?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How CONTENT do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How RESTLESS do you feel?",
                                "fr": "À quel point vous sentez-vous AGITÉ.E?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How RESTLESS do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How BAD do you feel?",
                                "fr": "À quel point vous sentez-vous MAL?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How BAD do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How COMPOSED do you feel?",
                                "fr": "À quel point vous sentez-vous TRANQUILLE?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How COMPOSED do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How GREAT do you feel?",
                                "fr": "À quel point vous sentez-vous TRÈS BIEN?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How GREAT do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How UNEASY do you feel?",
                                "fr": "À quel point vous sentez-vous MAL À L''AISE"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How UNEASY do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How UNCOMFORTABLE do you feel?",
                                "fr": "À quel point vous sentez-vous INCONFORTABLE?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How UNCOMFORTABLE do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How RELAXED do you feel?",
                                "fr": "À quel point vous sentez-vous DÉTENDU.E?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How RELAXED do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How GOOD do you feel?",
                                "fr": "À quel point vous sentez-vous BIEN?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How GOOD do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How AT EASE do you feel?",
                                "fr": "À quel point vous sentez-vous À L''AISE?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How AT EASE do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How UNHAPPY do you feel?",
                                "fr": "À quel point vous sentez-vous MALHEUREUX.EUSE?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How UNHAPPY do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How DISCONTENT do you feel?",
                                "fr": "À quel point vous sentez-vous MÉCONTENT.E?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How DISCONTENT do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How TENSE do you feel?",
                                "fr": "À quel point vous sentez-vous TENDU.E?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How TENSE do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How HAPPY do you feel?",
                                "fr": "À quel point vous sentez-vous HEUREUX.EUSE?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How HAPPY do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How NERVOUS do you feel?",
                                "fr": "À quel point vous sentez-vous NERVEUX.EUSE?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How NERVOUS do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
                                "en": "How CALM do you feel?",
                                "fr": "À quel point vous sentez-vous CALME?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "How CALM do you feel?",
                            "legend": [ 
                                {
                                    "en": "Definitely Not Feeling This",
                                    "fr": "Je ne me sens pas du tout comme ça"
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
WHERE id = 39;