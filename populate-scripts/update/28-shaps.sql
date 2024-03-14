
-- SHAPS
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "SHAPS",
    description = "Snaith-Hamilton Pleasure Scale",
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
                                "en": "This questionnaire is designed to measure your ability to experience pleasure in the \\"LAST FEW DAYS\\". Please read each  statement very carefully. Tick one of the boxes to indicate how much you agree or disagree with each statement.",
                                "fr": "Ce questionnaire a été conçu pour mesurer votre capacité à éprouver du plaisir <b> au cours des ces derniers jours</b>. Il est important de lire chaque énoncé <b> très attentivement </b>. Cochez l''une des cases pour préciser votre degré d’accord ou de désaccord pour chacun des énoncés."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy my favourite television or radio program:",
                                "fr": "Mon émission préférée de télévision ou de radio me procure beaucoup de plaisir:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy my favourite television or radio program",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy being with my family or close friends:",
                                "fr": "J’apprécie beaucoup d’être avec ma famille ou avec des amis intimes:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy being with my family or close friends",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would find pleasure in my hobbies and pastimes:",
                                "fr": "Je trouve du plaisir dans mes hobbies et passe temps:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would find pleasure in my hobbies and pastimes",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would be able to enjoy my favourite meal:",
                                "fr": "Je suis capable d’apprécier mon plat favori:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would be able to enjoy my favourite meal",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy a warm bath or refreshing shower:",
                                "fr": "J’aime beaucoup prendre un bain chaud ou une douche rafraîchissante:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy a warm bath or refreshing shower",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread:",
                                "fr": "Je trouve du plaisir dans le parfum des fleurs ou dans l’odeur d’une fraîche brise de mer ou du pain fraîchement cuit:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy seeing other people''s smiling faces:",
                                "fr": "J’aime beaucoup voir des visages souriants autour de moi:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy seeing other people''s smiling faces",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy looking smart when I have made an effort with my appearance:",
                                "fr": "J’apprécie beaucoup de paraître élégant(e) quand j’ai fait un effort pour soigner mon apparence:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy looking smart when I have made an effort with my appearance",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy reading a book, magazine or newspaper:",
                                "fr": "J’aime beaucoup lire un livre, un magazine ou un journal:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy reading a book, magazine or newspaper",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Select \\"Disagree\\". This is simply to ensure that you are paying attention!",
                                "fr": "Sélectionnez « En désaccord ». Ceci sert à vérifier votre niveau d’attention!"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "attentionCheck-Select disagree to indicate that you are reading the questions",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy a cup of tea or coffee or my favourite drink:",
                                "fr": "J’apprécie beaucoup une tasse de thé ou de café ou un verre de ma boisson favorite:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy a cup of tea or coffee or my favourite drink",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend:",
                                "fr": "Je trouve du plaisir dans des petits riens tels  que, par exemple, une journée fortement ensoleillée ou un coup de téléphone d’un ami:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would find pleasure in small things, eg bright sunny day, a telephone call from a friend",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would be able to enjoy a beautiful landscape or view:",
                                "fr": "Je suis capable d’apprécier un très beau paysage ou une très belle vue:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would be able to enjoy a beautiful landscape or view",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would get pleasure from helping others:",
                                "fr": "Je prends plaisir à aider les autres:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would get pleasure from helping others",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would feel pleasure when I receive praise from other people:",
                                "fr": "Je ressens du plaisir à recevoir les éloges d’autres personnes:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would feel pleasure when I receive praise from other people",
                            "options": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 28;