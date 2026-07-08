
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
                        "fr": "Bienvenue au jeu des activités quotidiennes"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We are trying to understand how people fill their days with activities.",
                                "fr": "Nous cherchons à comprendre comment les gens occupent leurs journées avec des activités."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this task, we will ask you about activities that you may do in your everyday life.",
                                "fr": "Dans le cadre de cette tâche, nous vous poserons des questions sur des activités que vous pourriez pratiquer au quotidien."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "There are four parts to this task:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;1) Answering question about different activities;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;2) Indicating your preference between different activities;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;3) Again, answering questions about different activities;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;4) Again, indicating your preference between different activities.",
                                "fr": "Il y a quatre parties à cette tâche :<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;1) Répondre à des questions sur différentes activités ;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;2) Indiquer vos préférences entre différentes activités ;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;3) Répondre à nouveau à des questions sur différentes activités ;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;4) Indiquer à nouveau vos préférences entre différentes activités."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You <b>MUST</b> complete all parts in one sitting, otherwise your progress will be lost!",
                                "fr": "Vous <b>DEVEZ</b> compléter toutes les parties en une seule fois ; sinon, votre progression sera perdue !"
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
                                "fr": "Veuillez noter que la Partie ??? est la plus longue et dure environ 40 minutes. Les autres sont beaucoup plus courtes ; la durée totale de l''expérience est estimée entre 1 heure et 1 heure et demie."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> to continue.",
                                "fr": "Cliquez sur <b>SUIVANT</b> pour continuer."
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
                        "fr": "Jeu des activités quotidiennes - Partie 1"
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
                                "fr": "Vous devrez donner vos réponses à l''aide de votre souris d''ordinateur."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> to continue.",
                                "fr": "Cliquez sur <b>SUIVANT</b> pour continuer."
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
                        "fr": "Commençons avec un exemple"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Activity: Bring the car to the mechanic",
                                "fr": "Activité : Amener la voiture chez le garagiste."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-string-mapping",
                            "counterbalanceStringMapping": {
                                "1": {
                                    "en": "How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you?",
                                    "fr": "À quel point avez-vous hâte au résultat de cette activité ? À quel point cette activité vous demande-t-elle un effort mental ?"
                                },
                                "2": {
                                    "en": "How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you?",
                                    "fr": "À quel point avez-vous hâte au résultat de cette activité ? À quel point cette activité vous demande-t-elle un effort mental ?"
                                },
                                "3": {
                                    "en": "How effortful is this activity for your? How enjoyable is this activity for you?",
                                    "fr": "À quel point cette activité vous demande-t-elle de l''effort ? À quel point cette activité vous plaît-elle ?"
                                },
                                "4": {
                                    "en": "How effortful is this activity for your? How enjoyable is this activity for you?",
                                    "fr": "À quel point cette activité vous demande-t-elle de l''effort ? À quel point cette activité vous plaît-elle ?"
                                }
                            },
                            "textContent": {
                                "en": "You will be asked: ???",
                                "fr": "Nous vous demanderons : ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>We understand that this may or may not apply to you (perhaps you don''t currently own a car), but we ask that you try to picture yourself doing each activity so that you can answer the questions.</b>",
                                "fr": "<b>Nous comprenons que cela ne vous concerne peut-être pas (vous n''avez peut-être pas de voiture actuellement), mais nous vous demandons d''essayer de vous imaginer en train de réaliser chaque activité afin de pouvoir répondre aux questions.</b>"
                            }
                        },
                        {
                        
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> to practice.",
                                "fr": "Cliquez sur <b>COMMENCER</b> pour vous entraîner."
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
                                "fr": "Vous êtes maintenant prêt(e) à commencer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will show you a total of 26 activities and ask you a series of questions about each activity. Please take a moment to picture yourself doing erach activity before answering the questions.",
                                "fr": "Nous allons vous présenter 26 activités et vous poser des questions sur chacune d''elles. Prenez un instant pour vous imaginer en train de réaliser chaque activité avant de répondre aux questions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-string-mapping",
                            "counterbalanceStringMapping": {
                                "1": {
                                    "en": "<b>Again, this is the longest part, and it may feel repetitive, but please be patient. There will be a break in the middle.<b/>",
                                    "fr": "<b>Cette partie est la plus longue de l''expérience et peut paraître répétitive, mais soyez patient(e). Une pause est prévue au milieu.</b>"
                                },
                                "2": {
                                   "en": "<b>Again, this is the longest part, and it may feel repetitive, but please be patient. There will be a break in the middle.<b/>",
                                    "fr": "<b>Cette partie est la plus longue de l''expérience et peut paraître répétitive, mais soyez patient(e). Une pause est prévue au milieu.</b>"
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
                                "fr": "Cliquez sur <b>COMMENCER</b> lorsque vous serez prêt(e)."
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
                        "fr": "Vous pouvez maintenant prendre une pause ! Il est important de laisser cette fenêtre ouverte, sinon vos données et votre progression seront perdues."
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We simply ask that you keep your break to under <b>10 minutes</b> or so.",
                                "fr": "Nous vous demandons simplement de ne pas dépasser <b>10 minutes</b> de pause."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> when you are ready to continue.",
                                "fr": "Cliquez sur <b>COMMENCER</b> lorsque vous serez prêt(e) à continuer."
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
                                "fr": "Merci d''avoir terminé la première partie du jeu !"
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
                                "fr": "Imaginez-vous confronté(e) à ce choix dans votre vie quotidienne et indiquez l''activité que vous choisiriez."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> for an example",
                                "fr": "Cliquez sur <b>SUIVANT</b> pour un exemple"
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
                                "fr": "Nous vous demandons d''essayer d''imaginer le choix que vous feriez dans la vraie vie, même si certains de ces choix ne vous sont peut-être jamais familiers."
                            }
                        },       
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Tell us: <b>which activity would you MOST LIKELY CHOOSE TO DO?</b>",
                                "fr": "Dites-nous : quelle activité choisiriez-vous le plus probablement ?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> to practice",
                                "fr": "Cliquez sur <b>COMMENCER</b> pour vous entraîner"
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
                                    "fr": "Amener la voiture chez le garagiste"
                                },
                                "secondActivity": {
                                    "en": "Dust your bookshelves",
                                    "fr": "Épousseter vos étagères"
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
                                "fr": "Vous avez terminé l''exercice !"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now, please picture yourself doing the activity for each of the following activities, and rate which activity you would MOST LIKELY spend time doing.",
                                "fr": "À présent, veuillez vous imaginer en train de réaliser chacune des activités suivantes et indiquez celle à laquelle vous seriez LE PLUS SUSCEPTIBLE de consacrer du temps."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START when you are ready.",
                                "fr": "Cliquez sur <b>COMMENCER</b> lorsque vous êtes prêt(e)."
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
                    "addSecondStimuliSet": false,
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
                                "fr": "Merci d''avoir terminé la deuxième partie du jeu !"
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
                                "fr": "Nous allons vous poser une série de questions sur votre ressenti concernant différentes activités, mais elles seront légèrement différentes."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will have to provide your response using your mouse.",
                                "fr": "Vous devrez répondre à l''aide de votre souris."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> to continue.",
                                "fr": "Cliquez sur <b>SUIVANT</b> pour continuer."
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
                        "fr": "Commençons avec un exemple"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Activity: Bring the car to the mechanic",
                                "fr": "Activité : Amener la voiture chez le garagiste."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-string-mapping",
                            "counterbalanceStringMapping": {
                                "3": {
                                    "en": "How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you?",
                                    "fr": "À quel point avez-vous hâte au résultat de cette activité ? À quel point cette activité vous demande-t-elle un effort mental ?"
                                },
                                "4": {
                                    "en": "How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you?",
                                    "fr": "À quel point avez-vous hâte au résultat de cette activité ? À quel point cette activité vous demande-t-elle un effort mental ?"
                                },
                                "1": {
                                    "en": "How effortful is this activity for your? How enjoyable is this activity for you?",
                                    "fr": "À quel point cette activité vous demande-t-elle de l''effort ? À quel point cette activité vous plaît-elle ?"
                                },
                                "2": {
                                    "en": "How effortful is this activity for your? How enjoyable is this activity for you?",
                                    "fr": "À quel point cette activité vous demande-t-elle de l''effort ? À quel point cette activité vous plaît-elle ?"
                                }
                            },
                            "textContent": {
                                "en": "You will be asked: ???",
                                "fr": "Nous vous demanderons : ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>We understand that this may or may not apply to you (perhaps you don''t currently own a car), but we ask that you try to picture yourself doing each activity so that you can answer the questions.</b>",
                                "fr": "<b>Nous comprenons que cela ne vous concerne peut-être pas (vous n''avez peut-être pas de voiture actuellement), mais nous vous demandons d''essayer de vous imaginer en train de réaliser chaque activité afin de pouvoir répondre aux questions.</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> to practice.",
                                "fr": "Cliquez sur <b>COMMENCER</b> pour vous entraîner."
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
                                "fr": "Vous êtes maintenant prêt(e) à commencer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will show you a total of 26 activities and ask you a series of questions about each activity. Please take a moment to picture yourself doing each activity before answering the questions.",
                                "fr": "Nous allons vous présenter 26 activités et vous poser des questions sur chacune d''elles. Prenez un instant pour vous imaginer en train de réaliser chaque activité avant de répondre aux questions."
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
                                    "fr": "<b>Cette partie est la plus longue de l''expérience et peut paraître répétitive, mais soyez patient(e). Une pause est prévue au milieu.</b>"
                                },
                                "4": {
                                    "en": "<b>This is the longest part of the experiment, and it may feel repetitive, but please be patient. There will be a break in the middle.</b>",
                                    "fr": "<b>Cette partie est la plus longue de l''expérience et peut paraître répétitive, mais soyez patient(e). Une pause est prévue au milieu.</b>"
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
                                "fr": "Cliquez sur <b>COMMENCER</b> lorsque vous serez prêt(e)."
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
                        "fr": "Vous pouvez maintenant prendre une pause ! Il est important de laisser cette fenêtre ouverte, sinon vos données et votre progression seront perdues."
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We simply ask that you keep your break to under <b>10 minutes</b> or so.",
                                "fr": "Nous vous demandons simplement de ne pas dépasser <b>10 minutes</b> de pause."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> when you are ready to continue.",
                                "fr": "Cliquez sur <b>COMMENCER</b> lorsque vous serez prêt(e) à continuer."
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
                                "fr": "Merci d''avoir terminé la troisième partie du jeu !"
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
                                "fr": "Pour cette partie de la tâche, vous devrez à nouveau choisir entre deux activités différentes. Imaginez-vous confronté(e) à ce choix dans votre vie quotidienne et indiquez l''activité que vous choisiriez."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> for an example",
                                "fr": "Cliquez sur <b>SUIVANT</b> pour un exemple"
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
                                "fr": "Nous vous demandons d''essayer d''imaginer le choix que vous feriez dans la vraie vie, même si certains de ces choix ne vous sont peut-être jamais familiers."
                            }
                        },       
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Tell us: <b>which activity would you MOST LIKELY CHOOSE TO DO?</b>",
                                "fr": "Dites-nous : quelle activité choisiriez-vous le plus probablement ?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> to practice",
                                "fr": "Cliquez sur <b>COMMENCER</b> pour vous entraîner"
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
                                    "fr": "Amener la voiture chez le garagiste"
                                },
                                "secondActivity": {
                                    "en": "Dust your bookshelves",
                                    "fr": "Épousseter vos étagères"
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
                                "fr": "Vous avez terminé l''exercice !"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now, please picture yourself doing the activity for each of the following activities, and rate which activity you would MOST LIKELY spend time doing.",
                                "fr": "À présent, veuillez vous imaginer en train de réaliser chacune des activités suivantes et indiquez celle à laquelle vous seriez LE PLUS SUSCEPTIBLE de consacrer du temps."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>START</b> when you are ready.",
                                "fr": "Cliquez sur <b>COMMENCER</b> lorsque vous êtes prêt(e)."
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
                    "addSecondStimuliSet": false,
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
                                "fr": "Bravo ! Vous avez terminé le jeu des activités quotidiennes. Nous vous remercions pour votre temps et vos efforts consacrés à nos recherches."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click <b>NEXT</b> to continue.",
                                "fr": "Cliquez sur <b>SUIVANT</b> pour continuer."
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