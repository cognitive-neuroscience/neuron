-- TASK SWITCHING
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Task Switching",
    description = "The participant is given a number from 1 - 4 or from 6 - 9. If the number if blue, then the participant should press the arrow keys to indicate whether the number if odd or even. If the number is orange, the participant should press the arrow keys to indicate whether the number if less than or greater than 5",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome",
                        "fr": "Bienvenue"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "There are two parts to this game.",
                                "fr": "Ce jeu comporte deux parties."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "PART 1: Number game",
                                "fr": "PARTIE 1: Jeu des chiffres"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "First we will go through the instructions and then you will have some opportunity to practice.",
                                "fr": "Nous vous expliquerons les règles du jeu et vous aurez ensuite l''occasion de pratiquer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                                "en": "Read the instructions carefully.",
                                "fr": "Lisez attentivement les instructions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will see a number on the screen. That number will either be <b>ORANGE</b> or <b>BLUE</b>.",
                                "fr": "Vous verrez un chiffre à l''écran. Ce chiffre sera <b>ORANGE</b> ou <b>BLEU</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The color is important: It will tell you what you must identify about that number.",
                                "fr": "La couleur est importante: elle indique ce que vous devez identifier à propos de ce numéro."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                        "en": "Instructions continued",
                        "fr": "Instructions suite"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>ORANGE NUMBER</b>",
                                "fr": "<b>Si le CHIFFRE est ORANGE</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Determine if the number is less than or greater than 5",
                                "fr": "Vous devez déterminez si le chiffre est inférieur ou supérieur à 5"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Lesser than (<) 5: Press the left arrow key ⬅️",
                                "fr": "Inférieur à (<) 5: Appuyez sur la touche fléchée gauche ⬅️"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Greater than (>) 5: Press the right arrow key ➡️",
                                "fr": "Supérieur à (>) 5: Appuyez sur la touche fléchée droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>BLUE NUMBER</b>",
                                "fr": "<b>Si le CHIFFRE est BLEU</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Determine if the number is odd or even",
                                "fr": "Vous devez déterminez si le chiffre est impair ou pair"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If the number is odd: Press the left arrow key <b>on your keyboard</b> ⬅️",
                                "fr": "Chiffre impair: Appuyez sur la touche fléchée gauche <b>sur votre clavier</b> ⬅️"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If the number is even: Press the right arrow key <b>on your keyboard</b> ➡️",
                                "fr": "Chiffre pair: Appuyez sur la touche fléchée droite <b>sur votre clavier</b> ➡️"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                        "en": "Examples",
                        "fr": "Exemples"
                    },
                    "sections": [
                        {
                            "sectionType": "image-small",
                            "imageAlignment": "left",
                            "imagePath": "/assets/images/instructions/taskswitching/orange3.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Hint: The number is <b>ORANGE</b> so you must decide if it is less than or greater than 5",
                                "fr": "Indice: Le chiffre est <b>ORANGE</b> vous devez donc décider s''il est inférieur ou supérieur à 5"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You should choose <b>LEFT</b> arrow to indicate that it''s less than (<) 5",
                                "fr": "Vous devez taper la flèche <b>GAUCHE</b> pour indiquer qu''il est inférieur à (<) 5"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "image-small",
                            "imageAlignment": "left",
                            "imagePath": "/assets/images/instructions/taskswitching/blue8.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Hint: The number is <b>BLUE</b> so you must decide if it is an odd or even number",
                                "fr": "Indice: Le chiffre est <b>BLEU</b>, vous devez donc décider s''il s''agit d''un chiffre pair ou impair"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You should choose <b>RIGHT</b> arrow to indicate that it''s even",
                                "fr": "Vous devez taper la flèche <b>DROITE</b> pour indiquer qu''il est pair"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                        "en": "Examples",
                        "fr": "Exemples"
                    },
                    "sections": [
                        {
                            "sectionType": "image-small",
                            "imageAlignment": "left",
                            "imagePath": "/assets/images/instructions/taskswitching/orange7.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Hint: The number is <b>ORANGE</b> so you must decide if it is less than or greater than 5",
                                "fr": "Indice: Le chiffre est <b>ORANGE</b> vous devez donc décider s''il est inférieur ou supérieur à 5"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You should choose the <b>RIGHT</b> arrow to indicate that it''s greater than (>) 5",
                                "fr": "Vous devez choisir la flèche <b>DROITE</b> pour indiquer qu''il est supérieur à (>) 5"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "image-small",
                            "imageAlignment": "left",
                            "imagePath": "/assets/images/instructions/taskswitching/blue7.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Hint: The number is <b>BLUE</b> so you must decide if it is an odd or even number",
                                "fr": "Indice: Le chiffre est <b>BLEU</b>, vous devez donc décider s''il s''agit d''un chiffre pair ou impair"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You should choose the <b>LEFT</b> arrow to indicate that it''s odd",
                                "fr": "Vous devez choisir la flèche <b>GAUCHE</b> pour indiquer qu''il est impair"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                        "en": "Practice round",
                        "fr": "Pratique"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Let''s practice",
                                "fr": "Pratiquons"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Don''t worry, this is just to help you learn which keys to press. We will continue to give you hints.",
                                "fr": "Vous aurez maintenant la chance de vous habituer à appuyer sur les bonnes flèhes au bon moment. Par contre, il n''y aura plus d''indices."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "(The game will launch in fullscreen)",
                                "fr": "(Le jeu se lancera en plein écran)"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                                "en": "<b>ORANGE NUMBER</b>: is number greater or less than 5?",
                                "fr": "<b>CHIFFRE ORANGE</b>: le chiffre est-il inférieur ou supérieur à 5?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Less than 5: Left arrow key ⬅️",
                                "fr": "Inférieur à 5: touche flèche gauche ⬅️"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Greater than 5: Right arrow key ➡️",
                                "fr": "Supérieur à 5: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>BLUE NUMBER</b>: is number odd or even?",
                                "fr": "<b>CHIFFRE BLEU</b>: le chiffre est-il pair ou impair?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Odd: Left arrow key ⬅️",
                                "fr": "Impair: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Even: Right arrow key ➡️",
                                "fr": "Pair: touche fléche droite ➡️"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round.",
                                "fr": "Le jeu se lancera en plein écran. Cliquez sur \\"Start\\" pour commencer l''entraînement."
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
                "componentName": "TASKSWITCHINGCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "showHint": true,
                    "maxResponseTime": 10000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationFixationPresented": 500,
                    "durationOfFeedback": 1000,
                    "numTrials": 5,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "probOfShift": 50,
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
                        "en": "1st Practice round is now complete.",
                        "fr": "Le premier tour de pratique est maintenant terminé."
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "task-switching-num-correct",
                            "textContent": {
                                "en": "You got ??? out of 5 trials correct",
                                "fr": "Vous avez ??? bonnes réponses sur 5"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" when you are ready for the next stage",
                                "fr": "Cliquez sur \\"NEXT\\" pour commencer la prochaine étape"
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
                        "en": "Practice round 2",
                        "fr": "Pratique 2"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number.",
                                "fr": "Rappel:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>ORANGE NUMBER</b>: is number greater or less than 5?",
                                "fr": "<b>CHIFFRE ORANGE</b>: le chiffre est-il ou 5?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Less than 5: Left arrow key ⬅️",
                                "fr": "Inférieur à 5: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Greater than 5: Right arrow key ➡️",
                                "fr": "Supérieur à 5: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>BLUE NUMBER</b>: is number odd or even?",
                                "fr": "<b>CHIFFRE BLEU</b>: le chiffre est-il pair ou impair?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Odd: Left arrow key ⬅️",
                                "fr": "Impair: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Even: Right arrow key ➡️",
                                "fr": "Pair: touche fléche droite"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round.",
                                "fr": "Le jeu se lancera en plein écran. Cliquez sur \\"Start\\" pour commencer l''entraînement."
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
                "componentName": "TASKSWITCHINGCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 4000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationFixationPresented": 500,
                    "durationOfFeedback": 1000,
                    "numTrials": 20,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "probOfShift": 50,
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
                            "injection": "cached-string",
                            "cacheKey": "task-switching-num-correct",
                            "textContent": {
                                "en": "You got ??? out of 20 trials correct",
                                "fr": "Vous avez ??? bonnes réponses sur 20"
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
                    "skippable": true,
                    "skippableCacheKey": "task-switching-should-skip",
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will repeat this round so you can get more practice.",
                                "fr": "Nous allons répéter ce tour pour que vous puissiez vous entraîner davantage."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" when you are ready for the next stage",
                                "fr": "Cliquez sur \\"NEXT\\" pour commencer la prochaine étape"
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
                    "skippable": true,
                    "skippableCacheKey": "task-switching-should-skip",
                    "title": {
                        "en": "Practice round 2",
                        "fr": "Pratique 2"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number.",
                                "fr": "Rappel:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>ORANGE NUMBER</b>: is number greater or less than 5?",
                                "fr": "<b>CHIFFRE ORANGE</b>: le chiffre est-il ou 5?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Less than 5: Left arrow key ⬅️",
                                "fr": "Inférieur à 5: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Greater than 5: Right arrow key ➡️",
                                "fr": "Supérieur à 5: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>BLUE NUMBER</b>: is number odd or even?",
                                "fr": "<b>CHIFFRE BLEU</b>: le chiffre est-il pair ou impair?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Odd: Left arrow key ⬅️",
                                "fr": "Impair: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Even: Right arrow key ➡️",
                                "fr": "Pair: touche fléche droite"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round.",
                                "fr": "Le jeu se lancera en plein écran. Cliquez sur \\"Start\\" pour commencer l''entraînement."
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
                "componentName": "TASKSWITCHINGCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "skippable": true,
                    "maxResponseTime": 4000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationFixationPresented": 500,
                    "durationOfFeedback": 1000,
                    "numTrials": 20,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "probOfShift": 50,
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
                        "en": "Practice round 3",
                        "fr": "Pratique 3"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Last practice",
                                "fr": "Dernière pratique"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "This time we won''t give you feedback after each answer.",
                                "fr": "Cette fois, nous ne vous dirons pas si vous avez répondu correctement ou incorrectement après chaque réponse."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Do your best!",
                                "fr": "Faites de votre mieux!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                        "en": "Practice round 3",
                        "fr": "Pratique 3"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number.",
                                "fr": "Rappel:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>ORANGE NUMBER</b>: is number greater or less than 5?",
                                "fr": "<b>CHIFFRE ORANGE</b>: le chiffre est-il ou 5?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Less than 5: Left arrow key ⬅️",
                                "fr": "Inférieur à 5: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Greater than 5: Right arrow key ➡️",
                                "fr": "Supérieur à 5: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>BLUE NUMBER</b>: is number odd or even?",
                                "fr": "<b>CHIFFRE BLEU</b>: le chiffre est-il pair ou impair?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Odd: Left arrow key ⬅️",
                                "fr": "Impair: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Even: Right arrow key ➡️",
                                "fr": "Pair: touche fléche droite"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round.",
                                "fr": "Le jeu se lancera en plein écran. Cliquez sur \\"Start\\" pour commencer l''entraînement."
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
                "componentName": "TASKSWITCHINGCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 4000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": false,
                    "durationFixationPresented": 500,
                    "durationOfFeedback": 1000,
                    "numTrials": 10,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "probOfShift": 50,
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
                        "en": "Main round",
                        "fr": "Tour principal"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Great! All practices are complete.",
                                "fr": "Bravo! Vous avez compléter les tours de pratique."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now you will play the real game.",
                                "fr": "Maintenant, vous allez jouer au vrai jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                        "en": "Recap instructions",
                        "fr": "Instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number.",
                                "fr": "Rappel:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>ORANGE NUMBER</b>: is number greater or less than 5?",
                                "fr": "<b>CHIFFRE ORANGE</b>: le chiffre est-il ou 5?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Less than 5: Left arrow key ⬅️",
                                "fr": "Inférieur à 5: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Greater than 5: Right arrow key ➡️",
                                "fr": "Supérieur à 5: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>BLUE NUMBER</b>: is number odd or even?",
                                "fr": "<b>CHIFFRE BLEU</b>: le chiffre est-il pair ou impair?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Odd: Left arrow key ⬅️",
                                "fr": "Impair: touche flèche gauche ⬅"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Even: Right arrow key ➡️",
                                "fr": "Pair: touche fléche droite"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready for the actual game",
                                "fr": "Cliquez sur \\"START\\" pour commencer"
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
                "componentName": "TASKSWITCHINGCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 4000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": false,
                    "durationFixationPresented": 500,
                    "durationOfFeedback": 1000,
                    "numTrials": 125,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "probOfShift": 50,
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
                        "en": "Congratulations!",
                        "fr": "Félicitations!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You finished the game successfully.",
                                "fr": "Vous avez terminé le jeu avec succès."
							}
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "task-switching-num-correct",
                            "textContent": {
                                "en": "You scored ??? points",
                                "fr": "Vous avez ??? points"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
WHERE id = 6;
