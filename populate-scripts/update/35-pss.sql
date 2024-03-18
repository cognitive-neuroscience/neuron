
-- PSS
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "PSS",
    description = "Perceived Stress Scale",
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
                                "en": "<p>The questions in this scale ask you about your feelings and thoughts during the last month. In each case, you will be asked to indicate how often you felt or thought a certain way.</p>",
                                "fr": "<p>Les questions ci-dessous sont par rapport à vos sentiments et à vos pensées au cours du dernier mois. Dans chaque cas, il vous sera demandé d''indiquer à quelle fréquence vous avez ressenti ou pensé d''une certaine manière.</p>" 
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you been upset because of something that happened unexpectedly?",
                                "fr": "Au cours du dernier mois, combien de fois avez-vous été dérangé.e ou perturbé.e par un évènement inattendu?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you been upset because of something that happened unexpectedly",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you felt that you were unable to control the important things in your life?",
                                "fr": "Au cours du dernier mois, combien de fois vous êtes-vous senti.e incapable de contrôler les choses importantes de votre vie?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt that you were unable to control the important things in your life",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you felt nervous and \\"stressed\\"?",
                                "fr": "Au cours du dernier mois, combien de fois vous êtes-vous senti.e nerveux.euse et \\"stressé.e\\"?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt nervous and \\"stressed\\"",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you felt confident about your ability to handle your personal problems?",
                                "fr": "Au cours du dernier mois, combien de fois vous êtes-vous senti.e confiant.e dans votre capacité à gérer vos problèmes personnels?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt confident about your ability to handle your personal problems",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you felt that things were going your way?",
                                "fr": "Au cours du dernier mois, combien de fois avez-vous eu l''impression que les choses allaient comme vous le vouliez?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt that things were going your way",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you found that you could not cope with all the things that you had to do?",
                                "fr": "Au cours du dernier mois, combien de fois avez-vous trouvé que vous ne pouviez pas assumer toutes les choses que vous deviez faire?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you found that you could not cope with all the things that you had to do",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Select \\"Very Often\\". This is simply to ensure you are paying attention!",
                                "fr": "Sélectionnez « Très Souvent ». Ceci sert à vérifier votre niveau d’attention!"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "attentionCheck-Can you select very often if you are paying attention",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you been able to control irritations in your life?",
                                "fr": "Au cours du dernier mois, combien de fois avez-vous été capable de contrôler les irritants dans votre vie?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you been able to control irritations in your life",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you felt that you were on top of things?",
                                "fr": "Au cours du dernier mois, combien de fois vous êtes-vous senti.e au-dessus des choses?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt that you were on top of things",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you been angered because of things that were outside of your control?",
                                "fr": "Au cours du dernier mois, combien de fois avez-vous été en colère à cause de choses qui étaient en dehors de votre contrôle?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you been angered because of things that were outside of your control",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?",
                                "fr": "Au cours du dernier mois, combien de fois avez-vous eu l''impression que les difficultés s''accumulaient à un tel point que vous ne pourriez plus les surmonter?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt difficulties were piling up so high that you could not overcome them",
                            "options": [
                                {
                                    "label": {
                                        "en": "0 - Never",
                                        "fr": "0 - Jamais"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "1 - Almost Never",
                                        "fr": "1 - Presque Jamais"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 - Sometimes",
                                        "fr": "2 - Parfois"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "3 - Fairly Often",
                                        "fr": "3 - Assez Souvent"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "4 - Very Often",
                                        "fr": "4 - Très Souvent"
                                    },
                                    "value": "4"
                                }
                            ]
                        } 
                    ]
                }
            }
        ]
    }'
WHERE id = 35;