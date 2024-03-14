
-- PDAQ
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "PDAQ",
    description =  "Penn Parkinson's Daily Activities Questionnaire-15",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Questionnaire"
                    },
                    "questions":[
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "The following are questions about your daily activities. Please choose the option that best describes YOU.",
                                "fr": "Voici des questions sur des activités de tous les jours. Veuillez indiquer ce qui VOUS décrit le mieux"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have reading the newspaper or a magazine?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à lire le journal ou un magazine?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have reading the newspaper or a magazine",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à garder la notion du temps qui passe (ex. en utilisant une montre)?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have keeping track of time (eg using a clock)",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à compter le montant correct lors de vos achats?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à lire et à suivre des instructions complexes?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have reading and following complex instructions (eg directions for a new medication)",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à gérer un problème auquel vous n’êtes pas habitué (ex. réparer le réfrigérateur)?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have handling an unfamiliar problem (eg getting the refrigerator fixed)",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à expliquer à une autre personne comment faire quelque chose qui implique plusieurs étapes?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir d’une liste de 4 ou 5 courses que vous avez à faire sans l’écrire?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have using a map to tell where to go?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à utiliser une carte pour vous orienter?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have using a map to tell where to go",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir de nouvelles informations telles qu’un numéro de téléphone ou des instructions simples?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have doing more than one thing at a time?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à faire plus d’une chose en même temps?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have doing more than one thing at a time",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à apprendre à utiliser de nouveaux gadgets ou machines dans la maison?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have understanding your personal financial affairs?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à comprendre et gérer vos finances personnelles?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have understanding your personal financial affairs",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have maintaining or completing a train of thought?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à garder ou à terminer le fil de votre pensée?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have maintaining or completing a train of thought",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Select \\"A Little\\". This is simply to ensure you are paying attention!",
                                "fr": " Sélectionnez « Un Peu ». Ceci sert à vérifier votre niveau d’attention!"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "attentionCheck-Can you choose a little if you are reading the questions?",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à discuter d’une émission de télévision, d’un livre, d’un film ou d’actualités?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have remembering what day and month it is?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir de quel jour et de quel mois il s’agit?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have remembering what day and month it is",
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 30;