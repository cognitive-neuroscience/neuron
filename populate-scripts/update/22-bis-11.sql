
-- BIS-11
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "BIS-11",
    description = "The Barratt Impulsiveness Scale",
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
                                "en": "DIRECTIONS: People differ in the ways they act and think in different situations. This is a test to measure some of the ways in which you act and think. Read each statement and choose the appropriate answer. Do not spend too much time on any statement. Answer quickly and honestly.",
                                "fr": "Instructions: Les gens n''ont pas tous la même façon d''agir et de penser dans différentes situations. Ce test vise à mesurer certaines de vos façons d''agir et de penser. Lisez chaque énoncé et choisissez la réponse appropriée. Ne vous attardez pas trop sur les énoncés. Répondez rapidement et honnêtement."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I plan tasks carefully.",
                                "fr": "Je planifie les tâches soigneusement."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I plan tasks carefully",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I do things without thinking.",
                                "fr": "J’agis sans réfléchir."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I do things without thinking",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I make-up my mind quickly.",
                                "fr": "Je me décide rapidement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I make-up my mind quickly",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am happy-go-lucky.",
                                "fr": "Je suis insouciant(e)."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am happy-go-lucky",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I don''t pay attention.",
                                "fr": "Je ne porte pas attention."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I don''t \\"pay attention\\"",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have racing thoughts.",
                                "fr": "J’ai des pensées qui se bousculent"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have \\"racing\\" thoughts",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I plan trips well ahead of time.",
                                "fr": "Je planifie mes voyages bien en avance."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I plan trips well ahead of time",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am self controlled.",
                                "fr": "J’ai contrôle sur moi-même."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am self controlled",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I concentrate easily.",
                                "fr": "Je me concentre facilement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I concentrate easily",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I save regularly.",
                                "fr": "J’économise régulièrement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I save regularly",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I squirm at plays or lectures.",
                                "fr": "Je me tortille durant les pièces de théâtre et les conférences."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I \\"squirm\\" at plays or lectures",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am a careful thinker.",
                                "fr": "Je suis un(e) penseur(-euse) prudent."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am a careful thinker",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I plan for job security.",
                                "fr": "Je planifie ma sécurité d’emploi."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I plan for job security",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I say things without thinking.",
                                "fr": "Je dis des choses sans penser."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I say things without thinking",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I like to think about complex problems.",
                                "fr": "J’aime penser aux problèmes compliqués."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I like to think about complex problems",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I change jobs.",
                                "fr": "Je change d’emploi."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I change jobs",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I act on impulse.",
                                "fr": "J’agis impulsivement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I act \\"on impulse\\"",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I get easily bored when solving thought problems.",
                                "fr": "Résoudre des problèmes de pensée m’ennuie."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I get easily bored when solving thought problems",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I act on the spur of the moment.",
                                "fr": "J’agis sous l’impulsion du moment."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I act on the spur of the moment",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am a steady thinker.",
                                "fr": "Je suis un(e) penseur(-euse) pondéré(e)."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am a steady thinker",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I change residences.",
                                "fr": "Je change de logements."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I change residences",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I buy things on impulse.",
                                "fr": "J’achète des choses sur un coup de tête."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I buy things on impulse",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I can only think about one thing at a time.",
                                "fr": "Je peux seulement penser à une chose à la fois."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I can only think about one thing at a time",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I change hobbies.",
                                "fr": "Je change de hobbys."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I change hobbies",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I spend or charge more than I earn.",
                                "fr": "Je dépense plus que ce que je gagne."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I spend or charge more than I earn",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I often have extraneous thoughts when thinking.",
                                "fr": "J’ai souvent des pensées étrangères."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I often have extraneous thoughts when thinking",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am more interested in the present than the future.",
                                "fr": "Je m’intéresse plus au présent qu’au futur."
                            },
                            "validation":{
                                "required": true
                            },
                            "key": "I am more interested in the present than the future",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Select \\"Rarely/Never\\". This is simply to ensure you are paying attention!",
                                "fr": "Sélectionnez « Rarement/Jamais ». Ceci sert à vérifier votre niveau d’attention!"
                            },
                            "validation":{
                                "required": true
                            },
                            "key": "attentionCheck-Select rarely/never if you are paying attention",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am restless at the theater or lectures.",
                                "fr": "Je suis agité(e) au théâtre et durant les conférences."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am restless at the theater or lectures",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I like puzzles.",
                                "fr": "J’aime les casse-têtes."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I like puzzles",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am future oriented.",
                                "fr": "Je suis orienté(e) vers l’avenir."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am future oriented",
                            "options": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 22;