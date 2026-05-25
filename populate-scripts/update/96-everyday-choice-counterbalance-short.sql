
-- EVERYDAY CHOICE
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Everyday Choice Counterbalanced With Short Version",
    description = "This is just like the original Everyday Choice task, but with a counterbalance between the two versions. Half of the participants will see the original versionm, and the other half will see the short version where they only rate 3 questions",
    external_url = "",
    config = '{
        "taskConfig": {
            "counterBalanceGroups": {
                "1": "LOWTOHIGH_LONG",
                "2": "HIGHTOLOW_LONG",
                "3": "LOWTOHIGH_SHORT",
                "4": "HIGHTOLOW_SHORT"
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
                                "en": "This is part 1 of the counterbalanced everyday choice task.",
                                "fr": "C''est la partie 1 de la tâche de choix quotidiennement counterbalancée."
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
                        "en": "Welcome to the Everyday Activities Game",
                        "fr": "Bienvenue au Jeu des Activités Quotidiennes"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We start with practice.",
                                "fr": "Nous commençons par la pratique."
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
                    "title": {
                        "en": "Welcome to the Everyday Activities Game",
                        "fr": "Bienvenue au Jeu des Activités Quotidiennes"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now lets do the real thing.",
                                "fr": "Maintenant, faisons la chose réelle."
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
                "componentName": "RATINGCOMPONENT",
                "componentConfig": {
                    "numTrials": 13,
                    "isPractice": false,
                    "maxResponseTime": 15000,
                    "resetCache": true,
                    "counterbalanceShortVersionOption": "counterbalance",
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
                                "en": "Take a break",
                                "fr": "Prendre une pause"
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
                    "counterbalanceShortVersionOption": "counterbalance",
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
                    "title": {
                        "en": "Welcome to the Everyday Activities Game",
                        "fr": "Bienvenue au Jeu des Activités Quotidiennes"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now lets do the real thing.",
                                "fr": "Maintenant, faisons la chose réelle."
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
                    "title": {
                        "en": "Welcome to the Everyday Activities Game",
                        "fr": "Bienvenue au Jeu des Activités Quotidiennes"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "This is part 2 of the counterbalanced everyday choice task.",
                                "fr": "C''est la partie 2 de la tâche de choix quotidiennement counterbalancée."
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
                "componentName": "RATINGCOMPONENT",
                "componentConfig": {
                    "numTrials": 13,
                    "isPractice": false,
                    "maxResponseTime": 15000,
                    "resetCache": true,
                    "counterbalanceShortVersionOption": "counterbalance-alternative",
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
                                "en": "Take a break",
                                "fr": "Prendre une pause"
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
                    "counterbalanceShortVersionOption": "counterbalance-alternative",
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
            }
        ]
    }'
WHERE id = 96;