-- APATHY AES
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Apathy AES",
    description = "Apathy Evaluation Scale",
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
                                "en": "Instructions: For each statement, select the answer that best describes your thoughts, feelings, and activity in the past 4 weeks.",
                                "fr": "Instructions: Pour chacun des énoncés suivants, sélectionnez l’option qui décrit le mieux vos pensées, sentiments et activités au cours des 4 dernières semaines."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am interested in things.",
                                "fr": "Je m’intéresse à des choses."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I am interested in things",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I get things done during the day.",
                                "fr": "J’accompli des choses durant la journée."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I get things done during the day",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Getting things started on my own is important to me.",
                                "fr": "Démarrer les choses par moi-même est important pour moi."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Getting things started on my own is important to me",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am interested in having new experiences.",
                                "fr": "Avoir de nouvelles expériences m’intéresse."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am interested in having new experiences",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am interested in learning new things.",
                                "fr": "Apprendre de nouvelles choses m’intéresse."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am interested in learning new things",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I put little effort into anything.",
                                "fr": "Je mets peu d’effort dans tout."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I put little effort into anything",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I approach life with intensity.",
                                "fr": "J’approche la vie avec intensité."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I approach life with intensity",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Seeing a job through to the end is important to me.",
                                "fr": "C’est important pour moi de voir une tâche jusqu’à sa fin."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Seeing a job through to the end is important to me",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I spend time doing things that interest me.",
                                "fr": "Je passe beaucoup de temps à faire des choses qui m’intéressent."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I spend time doing things that interest me",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Someone has to tell me what to do each day.",
                                "fr": "Quelqu’un doit me dire quoi faire tous les jours."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Someone has to tell me what to do each day",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Select \\"Somewhat\\". This is simply to ensure you are paying attention!",
                                "fr": "Sélectionnez « Assez ».  Ceci sert à vérifier votre niveau d’attention!"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "attentionCheck-Select somewhat for this question please",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am less concerned about my problems than I should be.",
                                "fr": "Mes problèmes me concernent moins qu’ils le devraient."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am less concerned about my problems than I should be",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have friends.",
                                "fr": "J’ai des amis."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have friends",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Getting together with friends is important to me.",
                                "fr": "C’est important pour moi de passer du temps avec mes amis."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Getting together with friends is important to me",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "When something good happens, I get excited.",
                                "fr": "Quand quelque chose de bien m’arrive, je suis excité(e)."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "When something good happens, I get excited",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have an accurate understanding of my problems.",
                                "fr": "J’ai une bonne compréhension de mes problèmes."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have an accurate understanding of my problems",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Getting things done during the day is important to me.",
                                "fr": "Il est important pour moi de compléter des tâches durant la journée."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Getting things done during the day is important to me",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have initiative.",
                                "fr": "J’ai de l’initiative."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have initiative",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have motivation.",
                                "fr": "J’ai de la motivation."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have motivation",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 20;