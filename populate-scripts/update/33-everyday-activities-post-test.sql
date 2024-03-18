
-- EVERYDAY ACTIVITIES POST TEST
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Everyday Activities Post Test",
    description = "",
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
                                "en": "<p>We are still in the development stages of this research study. The goal of the study is to understand how and why people fill their time. Are people driven by pleasure? By obligation? A bit of both? These are difficult things to measure because different people enjoy different things and have different sets of obligations. Any feedback you can provide on this study will be really helpful to us as we fine-tune our approach to understanding this.</p> <p> Please see below questions for some specific areas where we would like your feedback:</p>",
                                "fr": "<p>Nous sommes encore en phase de développement pour cette étude. L''objectif de l''étude est de comprendre comment et pourquoi les gens occupent leur temps. Les gens sont-ils motivés par le plaisir ? Par les obligations ? Un peu des deux ? Il est difficile de mesurer ces aspects, car chaque personne a des obligations et des désirs différents. Tout retour que vous pouvez donc fournir sur cette étude nous sera vraiment utile pour raffiner notre approche .</p> <p>Les questions ci-dessous adressent certains aspects spécifiques de l''étude sur lesquels nous aimerions avoir votre opinion :</p>"
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "Q1-pandemic",
                            "title": {
                                "en": "1. We understand that the current pandemic has more or less affected what you do in your everyday life. How much do you think that affected your ability to answer the questions of our study? For example, did you have trouble picturing yourself doing a specific activity that you have not been able to do due to the pandemic (e.g., chat with a neighbor)?",
                                "fr": "1. Nous savons que la pandémie a probablement affecté ce que vous faites dans votre vie quotidienne. Dans quelle mesure pensez-vous que cela a affecté votre capacité à répondre aux questions de notre étude ? Par exemple, avez-vous eu du mal à vous imaginer en train de faire une activité spécifique que vous n''avez pas pu faire récemment à cause de la pandémie (par exemple, discuter avec un voisin)?"
                            },
                            "textContent": {
                                "en": "Please rate <em>on a scale of 1-10</em> how much your current life situation affected your ability to answer the questions:",
                                "fr": "Veuillez évaluer <em>sur une échelle de 1 à 10</em> dans quelle mesure votre situation de vie actuelle a affecté votre capacité à répondre aux questions :"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "1 - Not at all: I had no difficulty picturing myself doing most of these activities",
                                        "fr": "1 - Pas du tout: Je n''ai eu aucune difficulté à m''imaginer en train de faire la plupart des activités"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": "2",
                                    "value": "2"
                                },
                                {
                                    "label": "3",
                                    "value": "3"
                                },
                                {
                                    "label": "4",
                                    "value": "4"
                                },
                                {
                                    "label": "5",
                                    "value": "5"
                                },
                                {
                                    "label": "6",
                                    "value": "6"
                                },
                                {
                                    "label": "7",
                                    "value": "7"
                                },
                                {
                                    "label": "8",
                                    "value": "8"
                                },
                                {
                                    "label": "9",
                                    "value": "9"
                                },
                                {
                                    "label": {
                                        "en": "10 - Very much so: I could NOT picture doing most of the activities given the present circumstances",
                                        "fr": "10 - Beaucoup: Je ne pouvais PAS m''imaginer en train de faire la plupart des activités étant donné les circonstances actuelles"
                                    },
                                    "value": "10"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "textContent": {
                                "en": "If you have any specific comments, please include them here [OPTIONAL]",
                                "fr": "Si vous avez des commentaires spécifiques, veuillez les inclure ici [FACULTATIF]"
                            },
                            "key": "Q1_comment"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "Q2-activities",
                            "title": {
                                "en": "2. Our goal was to ask you about activities that are part of everyday life, but that differs from person to person. Were most of the activities listed part of your usual (i.e. pre-pandemic) everyday life? ",
                                "fr": "2. Notre objectif était de vous interroger sur les activités qui font partie de la vie quotidienne, mais ces activités diffèrent d''une personne à l''autre. La plupart des activités énumérées faisaient-elles partie de votre vie quotidienne habituelle (c''est-à-dire avant la pandémie) ? "
                            },
                            "textContent": {
                                "en": "Please respond using the 1-10 scale:",
                                "fr": "Veuillez répondre en utilisant l''échelle de 1 à 10 :"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "1 - Most of the activities are foreign to me",
                                        "fr": "1 - La plupart des activités m''étaient étrangères"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": "2",
                                    "value": "2"
                                },
                                {
                                    "label": "3",
                                    "value": "3"
                                },
                                {
                                    "label": "4",
                                    "value": "4"
                                },
                                {
                                    "label": "5",
                                    "value": "5"
                                },
                                {
                                    "label": "6",
                                    "value": "6"
                                },
                                {
                                    "label": "7",
                                    "value": "7"
                                },
                                {
                                    "label": "8",
                                    "value": "8"
                                },
                                {
                                    "label": "9",
                                    "value": "9"
                                },
                                {
                                    "label": {
                                        "en": "10 - Most of the activities do feature in my everyday life",
                                        "fr": "10 - La plupart de ces activités font partie de ma vie quotidienne"
                                    },
                                    "value": "10"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "textContent": {
                                "en": "Any specific comments? (e.g., did any of the activities stand out as NOT being usual activities for you?) [OPTIONAL]",
                                "fr": "Commentaires additionnels ? (par exemple, est-ce que l''une des activités en particulier vous a semblé NE PAS être une activité habituelle pour vous?) [FACULTATIF]"
                            },
                            "key": "Q2_comment"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "Q3-choice",
                            "title": {
                                "en": "3. In one part of this task, you were asked to choose between two activities, but we understand these were ''pretend'' choices.",
                                "fr": "3. Dans une partie de l''étude, on vous a demandé de choisir entre deux activités, mais nous comprenons qu''il s''agissait de choix ''fictifs''."
                            },
                            "textContent": {
                                "en": "Please rate on a scale of 1-10 how much you think your choices generally reflected how you would choose in real life:",
                                "fr": "Veuillez évaluer sur une échelle de 1 à 10 dans quelle mesure vous pensez que vos choix reflètent généralement la façon dont vous choisiriez dans la vraie vie :"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "1 -  Not at all reflective – I made random choices in the game",
                                        "fr": "1 -  Ne reflète pas du tout mes vrais choix – J''ai choisi au hasard pendant l''étude "
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": "2",
                                    "value": "2"
                                },
                                {
                                    "label": "3",
                                    "value": "3"
                                },
                                {
                                    "label": "4",
                                    "value": "4"
                                },
                                {
                                    "label": "5",
                                    "value": "5"
                                },
                                {
                                    "label": "6",
                                    "value": "6"
                                },
                                {
                                    "label": "7",
                                    "value": "7"
                                },
                                {
                                    "label": "8",
                                    "value": "8"
                                },
                                {
                                    "label": "9",
                                    "value": "9"
                                },
                                {
                                    "label": {
                                        "en": "10 - Exactly as I would choose in real life",
                                        "fr": "10 - Exactement comme je choisirais en vrai vie"
                                    },
                                    "value": "10"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "textContent": {
                                "en": "Additional comments?",
                                "fr": "Commentaires additionnels ?"
                            },
                            "key": "Q3_comment"
                        },
                        {
                            "questionType": "freeTextResponse",
                            "title": {
                                "en": "4. Do you have any final comments or suggestions about the task? Any specific part of it that was confusing? [OPTIONAL]",
                                "fr": "4. Avez-vous des commentaires finaux ou des suggestions concernant le jeu ? Quelque chose en particulier qui était peu claire ? [FACULTATIF]"
                            },
                            "key": "Final_comment"
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 33;