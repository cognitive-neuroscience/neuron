
-- EVERYDAY CHOICE
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Everyday Choice",
    description = "Modified rating task where the participant is required to rate their most preferred option when presented with a single activity or a list of activiites",
    external_url = "",
    config = '{
        "taskConfig": {
            "counterBalanceGroups": {
                "1": "LOWTOHIGH",
                "2": "HIGHTOLOW"
            }
        },
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the Everyday Activities Game",
                        "fr": "Bienvenue au Jeu des Activités Quotidiennes"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We are trying to understand how people fill their days with activities.",
                                "fr": "Nous essayons de comprendre comment les gens remplissent leurs journées d''activités."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this task we will ask you about activities that you may do in your everyday life.",
                                "fr": "Dans ce jeu, nous allons vous interroger sur des activités qui font (ou non) partie de la vie quotidienne."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "There are two parts to the task: <br> 1) Answering questions about different activities <br> 2) Indicating your preference between different activities. <br> You will also complete some questionnaires at the end.",
                                "fr": "La tâche comporte deux parties : <br> 1) Répondre à des questions sur différentes activités <br> 2) Indiquer votre préférence entre différentes activités. <br> Vous remplirez également quelques questionnaires à la fin."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You <b>MUST</b> complete both parts in one sitting, otherwise your progress will be lost!!",
                                "fr": "Vous <b>DEVEZ</b> compléter les deux parties en une seule fois, sinon vos données et votre progrès sera perdu!!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please note that Part 1 is the longest and takes around 40 minutes. The rest is much shorter, and the entire experiment will last from 1 hour to 1 hour and 20 minutess.",
                                "fr": "Veuillez noter que la partie 1 est la plus longue et dure environ 40 minutes. Le reste est beaucoup plus court, et l''ensemble de l''expérience durera entre 1 heure et 1 heure 20 minutes."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT to continue",
                                "fr": "Cliquez sur NEXT pour continuer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "COVID-19 Disclaimer",
                        "fr": "Avis à propos des effets de la COVID-19"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We recognize that what you currently do in your everyday life may be impacted by the COVID-19 pandemic.",
                                "fr": "Nous sommes conscients que vos habitudes quotidiennes on peut-être chang.es à cause de la pandémie COVID-19."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "As a result, you may not currently be participating in some of the activities that we will ask you about.",
                                "fr": "Par conséquent, il se peut que vous ne participiez pas actuellement à certaines des activités sur lesquelles nous vous interrogerons."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "As much as possible, please try to picture yourself doing the activities under normal (pre-pandemic circumstances).",
                                "fr": "Dans la mesure du possible, essayez de vous imaginer en train de faire ces activités dans des circonstances normales (pré-pandémiques)."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT to continue",
                                "fr": "Cliquez sur NEXT pour continuer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": false,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Everyday Activities Game - Part 1",
                        "fr": "Jeu des Activités Quotidiennes - Partie 1"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please read the following instructions carefully.",
                                "fr": "Veuillez lire attentivement les instructions suivantes."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will ask you a series of questions about how you feel about different activities.",
                                "fr": "Nous vous poserons une série de questions sur ce que vous ressentez à propos de différentes activités."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will have to provide your response using your mouse.",
                                "fr": "Vous devrez fournir votre réponse en utilisant votre souris."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT to continue",
                                "fr": "Cliquez sur NEXT pour continuer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": false,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Let’s walk through an example",
                        "fr": "Voici un exemple"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Activity: Bring the car to the mechanic",
                                "fr": "Activité : Amener la voiture chez le mécanicien"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will be asked: How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you? ",
                                "fr": "On vous demandera : À quel point avez-vous hâte au résultat de cette activité ? À quel point cette activité vous demande-t-elle un effort mental?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>We understand that this may or may not apply to you (perhaps you don’t currently own a car), but we ask that you try to picture yourself doing each activity so that you can answer the questions.</b>",
                                "fr": "<b>Nous comprenons que cette question peut ou non s''appliquer à vous (p.ex. vous ne possédez peut-être pas de voiture), mais nous vous demandons d''essayer de vous imaginer en train de faire chaque activité afin de pouvoir répondre aux questions.</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START to practice",
                                "fr": "Cliquez sur START pour pratiquer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": true,
                        "previousDisabled": false,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "RATINGCOMPONENT",
                "componentConfig": {
                    "numTrials": 2,
                    "isPractice": true,
                    "maxResponseTime": 150000,
                    "interTrialDelay": 100,
                    "interActivityDelay": 1000,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingSlider": 0,
                    "numDoSomethingActivities": 21,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            {
                                "activity": {
                                    "en": "Bring the car to the mechanic",
                                    "fr": "Apporter la voiture au mécanicien"
                                },
                                "type": "DoSomething",
                                "questions": [
                                    {
                                        "question": {
                                            "en": "How much do you look forward to the outcome of this activity?",
                                            "fr": "À quel point avez-vous hâte au résultat de cette activité?"
                                        },
                                        "legend": [
                                            {
                                                "en": "Not at all",
                                                "fr": "Pas du tout"
                                            },
                                            {
                                                "en": "Very much",
                                                "fr": "Beaucoup"
                                            }
                                        ]
                                    },
                                    {
                                        "question": {
                                            "en": "How mentally effortful does this activity feel to you?",
                                            "fr": "À quel point cette activité vous demande-t-elle un effort mental?"
                                        },
                                        "legend": [
                                            {
                                                "en": "Not at all",
                                                "fr": "Pas du tout"
                                            },
                                            {
                                                "en": "Very effortful",
                                                "fr": "Beaucoup"
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now you are ready to start.",
                                "fr": "Maintenant vous êtes prêt.e à commencer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will show you a total of 26 activities and ask you a series of questions about each activity.",
                                "fr": "Nous vous montrerons un total de 26 activités et nous vous poserons une série de questions sur chaque activité."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please take a moment to picture yourself doing each activity before answering the questions.",
                                "fr": "Veuillez prendre un moment pour vous imaginer en train d''entreprendre chaque activité avant de répondre aux questions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Again, this is the longest part, and it may feel repetitive, but please be patient. There will be a break in the middle.</b>",
                                "fr": "<b>Encore une fois, ceci est la partie la plus longue, et elle peut sembler répétitive, mais soyez patient. Il y aura une pause au milieu.</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START when you are ready",
                                "fr": "Cliquez sur START lorsque vous êtes prêt.e"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": true,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "RATINGCOMPONENT",
                "componentConfig": {
                    "numTrials": 13,
                    "isPractice": false,
                    "maxResponseTime": 15000,
                    "interTrialDelay": 100,
                    "interActivityDelay": 1000,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingSlider": 0,
                    "numDoSomethingActivities": 21,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "You may now take a break! It is important that you leave this window open, otherwise your data and progress will be lost.",
                        "fr": "Vous pouvez maintenant prendre une pause! SVP laissez cette fenêtre ouverte, sinon vos données et votre progrès sera perdu."
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We simply ask that you keep your break to under <b>10 minutes</b> or so.",
                                "fr": "Nous vous demandons simplement de limiter la pause à environ <b>10 minutes</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Press \\"START\\" when you are ready to continue",
                                "fr": "Cliquez sur \\"START\\" lorsque vous êtes prêt à commencer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": true,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "RATINGCOMPONENT",
                "componentConfig": {
                    "numTrials": 13,
                    "isPractice": false,
                    "maxResponseTime": 15000,
                    "interTrialDelay": 100,
                    "interActivityDelay": 1000,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingSlider": 0,
                    "numDoSomethingActivities": 21,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for completing Part 1 of the game!",
                                "fr": "Merci d''avoir terminé la première partie du jeu!"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Everyday Activities Game - Part 2",
                        "fr": "Jeu des activités quotidiennes - Partie 2"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please read the following instructions carefully.",
                                "fr": "Veuillez lire attentivement les instructions suivantes."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "For this part of the task, you will be asked to choose between two different activities.",
                                "fr": "Pour cette partie de la tâche, vous devrez choisir entre deux activités différentes."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Your job is to <b>imagine yourself faced with this choice in your everyday life, and to indicate which activity you would choose.</b>",
                                "fr": "Vous devez <b>vous imaginer confronté à ce choix dans votre vie quotidienne, et indiquer quelle activité vous choisiriez.</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT for an example",
                                "fr": "Cliquez sur NEXT pour un exemple"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "For example:",
                                "fr": "Par exemple:"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": {
                                "en": "/assets/images/instructions/everydaychoice-new/choice-example_en.png",
                                "fr": "/assets/images/instructions/everydaychoice-new/choice-example_fr.png"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We ask that you try to picture the choice you would make in real life, even if some of the choices may not be ones you have ever been faced with.",
                                "fr": "Nous vous demandons d''essayer d''imaginer le choix que vous feriez dans la vie réelle, même si certains des choix ne sont pas ceux auxquels vous avez déjà été confronté.e."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Tell us: <b>which activity would you MOST LIKELY CHOOSE TO DO?</b>",
                                "fr": "Dites-nous : quelle activité CHOISIRIEZ-VOUS LE PLUS PROBABLEMENT ?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START to practice",
                                "fr": "Cliquez sur START pour vous entraîner"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": true,
                        "previousDisabled": false,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "CHOICECOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 15000,
                    "interTrialDelay": 100,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingInput": 0,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            {
                                "firstActivity": {
                                    "en": "Bring the car to the mechanic",
                                    "fr": "Apporter la voiture au mécanicien"
                                },
                                "secondActivity": {
                                    "en": "Dust your bookshelves",
                                    "fr": "Dépoussiérer vos étagères"
                                }
                            }
                        ]
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You finished the practice!",
                                "fr": "Vous avez terminé l''entraînement!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now, please picture yourself doing the activity for each of the following activities, and rate which activity you would MOST LIKELY spend time doing.",
                                "fr": "Maintenant, imaginez-vous en train de faire l''activité dans la vie réelle pour chacune des activités suivantes, et indiquez laquelle vous choisiriez le PLUS PROBABLEMENT de faire."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START when you are ready",
                                "fr": "Cliquez sur START lorsque vous êtes prêt"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": true,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "CHOICECOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 15000,
                    "interTrialDelay": 100,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingInput": 0,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Hooray! You have finished the Everyday Activities Game. We appreciate your time and effort in helping with our research.",
                                "fr": "Bravo ! Vous avez terminé le Jeu des Activités Quotidiennes. Nous apprécions le temps et l''effort que vous avez consacrés à notre recherche."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Before you go, you will complete some short questionnaires.",
                                "fr": "Avant de partir, veuillez remplir quelques questionnaires."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT to continue",
                                "fr": "Cliquez sur NEXT pour continuer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            }
        ]
    }'
WHERE id = 10;