
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
                                "en": "We are trying to understand how people fill their days with activities.",
                                "fr": "Nous essayons de comprendre comment les gens remplissent leur journée avec des activités."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this task, we will ask you about activities that you may do in your everyday life.",
                                "fr": "Dans cette tâche, nous vous demanderons des activités que vous pouvez faire dans votre vie quotidienne."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "There are four parts to this task:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;1) Answering question about different activities;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;2) Indicating your preference between different activities;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;3) Again, answering questions about different activities;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;4) Again, indicating your preference between different activities.",
                                "fr": "Il y a quatre parties à cette tâche:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;1) Répondre à des questions sur différentes activités;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;2) Indiquer votre préférence entre différentes activités;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;3) Répondre à des questions sur différentes activités;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;4) Indiquer votre préférence entre différentes activités."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You <b>MUST</b> complete all parts in one sitting, otherwise your progress will be lost!",
                                "fr": "Vous <b>DEVEZ</b> compléter toutes les parties en une seule fois, sinon votre progression sera perdue!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-string-mapping",
                            "counterbalanceStringMapping": {
                                "1": { "en": "1", "fr": "1" },
                                "2": { "en": "1", "fr": "1" },
                                "3": { "en": "3", "fr": "3" },
                                "4": { "en": "3", "fr": "3" }
                            },
                            "textContent": {
                                "en": "Please note that Part ??? is the longest and takes around 40 minutes. The rest is much shorter and the entire experiment will last around 1 hour to 1 hour and 30 minutes.",
                                "fr": "Veuillez noter que la Partie ??? est la plus longue et prend environ 40 minutes. Le reste est beaucoup plus court et l''expérience entière durera environ 1 heure à 1 heure et 30 minutes."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> to continue.",
                                "fr": "Cliquez sur <b>NEXT</b> pour continuer."
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
                                "fr": "Nous vous demanderons une série de questions sur la façon dont vous vous sentez à propos de différentes activités."
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
                                "en": "Click <b>NEXT</b> to continue.",
                                "fr": "Cliquez sur <b>NEXT</b> pour continuer."
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
                        "en": "Let''s walk through an example",
                        "fr": "Voyons un exemple"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Activity: Bring the car to the mechanic",
                                "fr": "Activité: Apporter la voiture au mécanicien"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-string-mapping",
                            "counterbalanceStringMapping": {
                                "1": {
                                    "en": "How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you?",
                                    "fr": "À quel point avez-vous hâte au résultat de cette activité? À quel point cette activité vous demande-t-elle un effort mental?"
                                },
                                "2": {
                                    "en": "How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you?",
                                    "fr": "À quel point avez-vous hâte au résultat de cette activité? À quel point cette activité vous demande-t-elle un effort mental?"
                                },
                                "3": {
                                    "en": "How effortful is this activity for your? How enjoyable is this activity for you?",
                                    "fr": "À quel point cette activité vous demande-t-elle un effort mental? À quel point cette activité vous plait-elle?"
                                },
                                "4": {
                                    "en": "How effortful is this activity for your? How enjoyable is this activity for you?",
                                    "fr": "À quel point cette activité vous demande-t-elle un effort mental? À quel point cette activité vous plait-elle?"
                                }
                            },
                            "textContent": {
                                "en": "You will be asked: ???",
                                "fr": "On vous demandera : ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>We understand that this may or may not apply to you (perhaps you don''t currently own a car), but we ask that you try to picture yourself doing each activity so that you can answer the questions.</b>",
                                "fr": "<b>Nous comprenons que cette question peut ou non s''appliquer à vous (p.ex. vous ne possédez peut-être pas de voiture), mais nous vous demandons d''essayer de vous imaginer en train de faire chaque activité afin de pouvoir répondre aux questions.</b>"
                            }
                        },
                        {
                        
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> to practice.",
                                "fr": "Cliquez sur <b>START</b> pour vous entraîner."
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
                    "counterbalanceShortVersionOption": "counterbalance",
                    "interTrialDelay": 100,
                    "interActivityDelay": 1000,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingSlider": 0,
                    "numDoSomethingActivities": 21,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": []
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now you are ready to start.",
                                "fr": "Maintenant, vous êtes prêt à commencer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will show you a total of 26 activities and ask you a series of questions about each activity. Please take a moment to picture yourself doing erach activity before answering the questions.",
                                "fr": "Nous vous montrerons un total de 26 activités et vous demanderons une série de questions sur chaque activité. Veuillez prendre un moment pour vous imaginer en train de faire chaque activité avant de répondre aux questions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-string-mapping",
                            "counterbalanceStringMapping": {
                                "1": {
                                    "en": "<b>Again, this is the longest part, and it may feel repetitive, but please be patient. There will be a break in the middle.<b/>",
                                    "fr": "<b>Encore une fois, c''est la partie la plus longue, et cela peut sembler répétitif, mais veuillez être patient. Il y aura une pause au milieu.<b/>"
                                },
                                "2": {
                                   "en": "<b>Again, this is the longest part, and it may feel repetitive, but please be patient. There will be a break in the middle.<b/>",
                                    "fr": "<b>Encore une fois, c''est la partie la plus longue, et cela peut sembler répétitif, mais veuillez être patient. Il y aura une pause au milieu.<b/>"
                                },
                                "3": { "en": "", "fr": "" },
                                "4": { "en": "", "fr": "" }
                            },
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> when you are ready.",
                                "fr": "Cliquez sur <b>START</b> quand vous êtes prêt."
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
                                "en": "We simply ask that you keep your break to under <b>10 minutes</b> or so.",
                                "fr": "Nous vous demandons simplement de garder votre pause sous <b>10 minutes</b> ou plus."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> when you are ready to continue.",
                                "fr": "Cliquez sur <b>START</b> quand vous êtes prêt à continuer."
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
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for completing part 1 of the game!",
                                "fr": "Merci d''avoir complété la partie 1 du jeu!"
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
                                "en": "Click <b>NEXT</b> for an example",
                                "fr": "Cliquez sur <b>NEXT</b> pour un exemple"
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
                                "en": "Click <b>START</b> to practice",
                                "fr": "Cliquez sur <b>START</b> pour vous entraîner"
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
                        "en": "",
                        "fr": ""
                    },
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
                                "fr": "Maintenant, veuillez vous imaginer en train de faire chaque activité et évaluer quelle activité vous choisiriez le plus probablement faire."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START when you are ready.",
                                "fr": "Cliquez sur START quand vous êtes prêt."
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
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for completing part 2 of the game!",
                                "fr": "Merci d''avoir complété la partie 2 du jeu!"
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
                        "en": "Everyday Activities Game - Part 3",
                        "fr": "Jeu des activités quotidiennes - Partie 3"
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
                                "en": "Again, we will ask you a series of questions about how you feel about different activities, but the questions will be slightly different.",
                                "fr": "Encore une fois, nous vous demanderons une série de questions sur la façon dont vous vous sentez à propos de différentes activités, mais les questions seront légèrement différentes."
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
                                "en": "Click <b>NEXT</b> to continue.",
                                "fr": "Cliquez sur <b>NEXT</b> pour continuer."
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
                        "en": "Let''s walk through an example",
                        "fr": "Voyons un exemple"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Activity: Bring the car to the mechanic",
                                "fr": "Activité: Apporter la voiture au mécanicien"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-string-mapping",
                            "counterbalanceStringMapping": {
                                "3": {
                                    "en": "How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you?",
                                    "fr": "À quel point avez-vous hâte au résultat de cette activité? À quel point cette activité vous demande-t-elle un effort mental?"
                                },
                                "4": {
                                    "en": "How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you?",
                                    "fr": "À quel point avez-vous hâte au résultat de cette activité? À quel point cette activité vous demande-t-elle un effort mental?"
                                },
                                "1": {
                                    "en": "How effortful is this activity for your? How enjoyable is this activity for you?",
                                    "fr": "À quel point cette activité vous demande-t-elle un effort mental? À quel point cette activité vous plait-elle?"
                                },
                                "2": {
                                    "en": "How effortful is this activity for your? How enjoyable is this activity for you?",
                                    "fr": "À quel point cette activité vous demande-t-elle un effort mental? À quel point cette activité vous plait-elle?"
                                }
                            },
                            "textContent": {
                                "en": "You will be asked: ???",
                                "fr": "On vous demandera : ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>We understand that this may or may not apply to you (perhaps you don''t currently own a car), but we ask that you try to picture yourself doing each activity so that you can answer the questions.</b>",
                                "fr": "<b>Nous comprenons que cette question peut ou non s''appliquer à vous (p.ex. vous ne possédez peut-être pas de voiture), mais nous vous demandons d''essayer de vous imaginer en train de faire chaque activité afin de pouvoir répondre aux questions.</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> to practice.",
                                "fr": "Cliquez sur <b>START</b> pour vous entraîner."
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
                    "counterbalanceShortVersionOption": "counterbalance-alternative",
                    "interTrialDelay": 100,
                    "interActivityDelay": 1000,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingSlider": 0,
                    "numDoSomethingActivities": 21,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": []
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now you are ready to start.",
                                "fr": "Vous êtes maintenant prêt à commencer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will show you a total of 26 activities and ask you a series of questions about each activity. Please take a moment to picture yourself doing each activity before answering the questions.",
                                "fr": "Nous vous montrerons un total de 26 activités et vous demanderons une série de questions sur chaque activité. Veuillez prendre un moment pour vous imaginer en train de faire chaque activité avant de répondre aux questions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-string-mapping",
                            "counterbalanceStringMapping": {
                                "1": { "en": "???", "fr": "???" },
                                "2": { "en": "", "fr": "" },
                                "3": {
                                    "en": "<b>This is the longest part of the experiment, and it may feel repetitive, but please be patient. There will be a break in the middle.</b>",
                                    "fr": "<b>C''est la partie la plus longue de l''expérience, et cela peut sembler répétitif, mais veuillez être patient. Il y aura une pause au milieu.</b>"
                                },
                                "4": {
                                    "en": "<b>This is the longest part of the experiment, and it may feel repetitive, but please be patient. There will be a break in the middle.</b>",
                                    "fr": "<b>C''est la partie la plus longue de l''expérience, et cela peut sembler répétitif, mais veuillez être patient. Il y aura une pause au milieu.</b>"
                                }
                            },
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> when you are ready.",
                                "fr": "Cliquez sur <b>START</b> quand vous êtes prêt."
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
                                "en": "We simply ask that you keep your break to under <b>10 minutes</b> or so.",
                                "fr": "Nous vous demandons simplement de garder votre pause sous <b>10 minutes</b> ou plus."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> when you are ready to continue.",
                                "fr": "Cliquez sur <b>START</b> quand vous êtes prêt à continuer."
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
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for completing Part 3 of the game!",
                                "fr": "Merci d''avoir complété la Partie 3 du jeu!"
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
                        "en": "Everyday Activities Game - Part 4",
                        "fr": "Jeu des activités quotidiennes - Partie 4"
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
                                "en": "For this part of the task, you will again be asked to choose between two different activities. Your job is to <b>imagine yourself faced with this choice in your everyday life, and to indicate which activity you would choose.</b>",
                                "fr": "Pour cette partie de la tâche, vous serez à nouveau invité à choisir entre deux activités différentes. Votre travail est de <b>imaginer vous face à ce choix dans votre vie quotidienne, et de indiquer quelle activité vous choisiriez de faire</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> for an example",
                                "fr": "Cliquez sur <b>NEXT</b> pour un exemple"
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
                                "en": "Click <b>START</b> to practice",
                                "fr": "Cliquez sur <b>START</b> pour vous entraîner"
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
                        "en": "",
                        "fr": ""
                    },
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
                                "fr": "Maintenant, veuillez vous imaginer en train de faire chaque activité et évaluer quelle activité vous choisiriez le plus probablement faire."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> when you are ready.",
                                "fr": "Cliquez sur <b>START</b> quand vous êtes prêt."
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
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Hooray! You have finished the Everyday Activities Game. We appreciate your time and effort in helping with our research.",
                                "fr": "Félicitations! Vous avez terminé le Jeu des Activités Quotidiennes. Nous apprécions votre temps et votre effort pour nous aider avec notre recherche."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> to continue.",
                                "fr": "Cliquez sur <b>NEXT</b> pour continuer."
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
WHERE id = 96;