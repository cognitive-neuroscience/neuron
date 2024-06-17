-- DEMAND SELECTION
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Demand Selection",
    description = "The participant selects one of two patches on the screen and is then presented with the task switching task. One patch is more difficult and switches more often than the other",
    external_url = "",
    config = '{
        "taskConfig": {
            "counterBalanceGroups": {
                "1": "EASIER PATCH",
                "2": "HARDER PATCH"
            }
        },
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Part 2: Patch Game",
                        "fr": "Partie 2: Jeu des Parcelles"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Read the instructions carefully",
                                "fr": "Lisez attentivement les instructions"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now you will be playing a slightly different game",
                                "fr": "Vous allez maintenant jouer à un jeu légèrement différent"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will see two colored patches on the screen and will have to pick one. Each patch is hiding a colored number.",
                                "fr": "Vous verrez deux parcelles colorées à l''écran et vous devrez en choisir une. Chaque parcelle cache un chiffre coloré."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Once the number appears, as before, you will have to make a decision about that number based on its color: ORANGE or BLUE",
                                "fr": "Quand le chiffre apparaît, comme avant, vous devrez réagir au chiffre en fonction de sa couleur, ORANGE ou BLEU."
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
                        "en": "More instructions",
                        "fr": "Suite des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "There are differences between the patches:",
                                "fr": "Les parcelles ne sont pas pareilles:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "One patch is hiding numbers that change color <b>less</b> often",
                                "fr": "Un parcelle cache des chiffres qui changent de couleur <b>MOINS</b> souvent."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The other patch is hiding numbers that change color <b>more</b> often",
                                "fr": "L''autre parcelle cache des chiffres qui changent de couleur <b>PLUS</b> souvent."
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
                        "en": "More instructions",
                        "fr": "Suite des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you develop a preference for one of the patches, feel free to continue to choose it",
                                "fr": "Si vous développez une préférence pour une des parcelles, n''hésitez pas à continuer à la choisir."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "However, we recommend that you <b>try both patches at the beginning</b>",
                                "fr": "Toutefois, nous vous recommandons <b>d''essayer les deux parcelles au début</b> pour voir si vous en préférez une."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Try to avoid choosing the patch solely based on its deisgn or its location",
                                "fr": "Essayez d''éviter de choisir le parcelle uniquement en fonction de sa couleur ou de son emplacement sur l''écran."
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
                        "en": "More instructions",
                        "fr": "Suite des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Steps to select a patch:",
                                "fr": "Comment sélectionner une parcelle:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "1. Move the cursor to the bullseye in the middle of the screen. This will make the patches appear",
                                "fr": "1. Avec votre souris vous devez premièrement amener le curseur vers la cible au milieu de l''écran. Ceci permettra de dévoiler les parcelles."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "2. To select a patch, move the cursor to its location. The number will then appear",
                                "fr": "2. Ensuite vous devez sélectionner une parcelle en plaçant le curseur par dessus. Ceci fera apparaître le chiffre caché."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "3. Then use the arrow keys as before to give us your answer",
                                "fr": "3. Ensuite vous devez utiliser les touches fléchées selon la couleur du chiffre, comme durant la première partie du jeu."
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
                        "en": "More instructions",
                        "fr": "Suite des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                        "en": "First, a practice round",
                        "fr": "Vous allez maintenant vous pratiquer!"
                    },
                    "sections": [
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 10,
                    "delayToShowHelpMessage": 4000,
                    "durationHelpMessageShown": 6000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "none",
                    "counterbalanceMode": "none",
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "blue",
                                "secondPatch": "orange",
                                "digit": 7
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "blue",
                                "secondPatch": "orange",
                                "digit": 2
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "orange",
                                "secondPatch": "blue",
                                "digit": 4
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "orange",
                                "secondPatch": "blue",
                                "digit": 8
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "blue",
                                "secondPatch": "orange",
                                "digit": 1
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "blue",
                                "secondPatch": "orange",
                                "digit": 7
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "blue",
                                "secondPatch": "orange",
                                "digit": 6
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "orange",
                                "secondPatch": "blue",
                                "digit": 4
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "orange",
                                "secondPatch": "blue",
                                "digit": 1
                            },
                            {
                                "firstPatchImgName": "abstPa.png",
                                "secondPatchImgName": "abstPb.png",
                                "rotation": 105,
                                "counterbalance": "NONE",
                                "firstPatch": "blue",
                                "secondPatch": "orange",
                                "digit": 1
                            }
                        ]
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Practice round is now complete",
                        "fr": "Le tour de pratique est maintenant terminé"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "demandselection-num-correct",
                            "textContent": {
                                "en": "You got ??? out of 10 correct",
                                "fr": "Vous avez ??? bonne réponses sur 10"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "skippable": true,
                    "skippableCacheKey": "demandselection-should-skip",
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will repeat this round so you can get more practice.",
                                "fr": "Nous allons répéter ce tour afin que vous puissiez vous entraîner davantage."
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
                    "skippableCacheKey": "demandselection-should-skip",
                    "title": {
                        "en": "More instructions",
                        "fr": "Suite des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "skippable": true,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 10,
                    "delayToShowHelpMessage": 4000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "none",
                    "counterbalanceMode": "none",
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "skippable": true,
                    "skippableCacheKey": "demandselection-should-skip",
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "demandselection-num-correct",
                            "textContent": {
                                "en": "You got ??? out of 10 correct",
                                "fr": "Vous avez ??? bonne réponses sur 10"
                            }
                        }
                    ]
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
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                            "textContent": {
                                "en": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round.",
                                "fr": "Le jeu se lancera en plein écran. Cliquez sur \\"Start\\" pour commencer l''entraînement."
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "skippable": false,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 20,
                    "delayToShowHelpMessage": 4000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "none",
                    "counterbalanceMode": "none",
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
                                "en": "There are six short parts to the game, each lasting a few minutes. You can take short breaks in between each.",
                                "fr": "Il y a six courts tours, chacun d''une durée de quelques minutes. Vous pourrez prendre une pauses entre chaque tour."
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
                            "injection": "cached-string",
                            "cacheKey": "demandselection-block-num",
                            "textContent": {
                                "en": "This is part ??? of the game.",
                                "fr": "Cela fait partie ??? du jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Recap instructions",
                        "fr": "Rappel des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, first pick a patch then make a decision based on the color of the number, ORANGE or BLUE",
                                "fr": "Rappelez-vous, choisissez d''abord un patch puis prenez une décision en fonction de la couleur du numéro, ORANGE ou BLEU"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The patches are different:",
                                "fr": "Les parcelles sont différentes."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The numbers hiding behind each patch change color <b>more</b> or <b>less</b> often depending on the patch",
                                "fr": "Les chiffres qui se cachent derrière chaque parcelle changent de couleur <b>plus</b> ou <b>moins</b> souvent selon la parcelle."
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
                        "fr": "Rappel des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you develop a preference for one of the patches, feel free to continue to choose it.",
                                "fr": "Si vous développez une préférence pour une des parcelles, n''hésitez pas à continuer à la choisir."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "However, we recommend that <b>you try both patches at the beginning</b>.",
                                "fr": "Toutefois, nous vous recommandons d''essayer les deux parcelles au début."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Try to avoid choosing the patch solely based on how they look or on their location.",
                                "fr": "Essayez d''éviter de choisir une parcelle uniquement en fonction de sa couleur ou de son emplacement"
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
                        "fr": "Rappel des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 50,
                    "delayToShowHelpMessage": 4000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "none",
                    "counterbalanceMode": "none",
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
                        "en": "Congrats, you have finished this part.",
                        "fr": "Le premier tour est maintenant terminé."
                    },
                    "sections": [
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
                            "injection": "cached-string",
                            "cacheKey": "demandselection-block-num",
                            "textContent": {
                                "en": "This is part ??? of the game.",
                                "fr": "Cela fait partie ??? du jeu."
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
                        "fr": "Rappel des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 50,
                    "delayToShowHelpMessage": 4000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "none",
                    "counterbalanceMode": "none",
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
                        "en": "Congrats, you have finished this part",
                        "fr": "Félicitations, vous avez terminé cette partie"
                    },
                    "sections": [
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
                            "injection": "cached-string",
                            "cacheKey": "demandselection-block-num",
                            "textContent": {
                                "en": "This is part ??? of the game.",
                                "fr": "Cela fait partie ??? du jeu."
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
                        "fr": "Rappel des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 50,
                    "delayToShowHelpMessage": 4000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "none",
                    "counterbalanceMode": "none",
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
                        "en": "Congrats, you have finished this part",
                        "fr": "Félicitations, vous avez terminé cette partie"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
                            }
                        }
                    ]
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
                            "cacheKey": "demandselection-block-num",
                            "textContent": {
                                "en": "This is part ??? of the game.",
                                "fr": "Cela fait partie ??? du jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Recap instructions",
                        "fr": "Rappel des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 50,
                    "delayToShowHelpMessage": 4000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "counterbalance",
                    "counterbalanceMode": "none",
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
                        "en": "Congrats, you have finished this part",
                        "fr": "Félicitations, vous avez terminé cette partie"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Please pay attention. We will be asking you to do something different!!!</b>",
                                "fr": "<b>Attention: Les règles vont changer pour la prochaine partie!!</b>"
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
                            "injection": "cached-string",
                            "cacheKey": "demandselection-block-num",
                            "textContent": {
                                "en": "This is part ??? of the game.",
                                "fr": "Cela fait partie ??? du jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Read these instructions.",
                                "fr": "Veuillez lire ces instructions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "demandselection-patch-string-presented",
                            "textContent": {
                                "en": "You must now find the <b>???</b> and pick that one on each trial",
                                "fr": "Vous devez maintenant identifier la parcelle qui vous semble <b>???</b> et la choisir à chaque essai."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "As before, start by taking the time to explore each of the patches.",
                                "fr": "Comme d’habitude, prenez tout d’abord le temps d’explorer les deux parcelles."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "demandselection-patch-string-presented",
                            "textContent": {
                                "en": "Remember, once you have found and selected the <b>???</b>, your goal is still to make a decision about the number that appears based on its color: ORANGE or BLUE",
                                "fr": "Rappelez-vous, une fois que vous avez trouvé et sélectionné le <b>???</b>, votre objectif est toujours de prendre une décision sur le nombre qui apparaît en fonction de sa couleur : ORANGE ou BLEU"
							}
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Recap instructions",
                        "fr": "Rappel des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready for the actual game",
                                "fr": "Cliquez sur \\"START\\" pour commencer"
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 35,
                    "delayToShowHelpMessage": 4000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "counterbalance-alternative",
                    "counterbalanceMode": "counterbalance",
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
                        "en": "Congrats, you have finished this part",
                        "fr": "Félicitations, vous avez terminé cette partie"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Please pay attention. We will be asking you to do something different!!!</b>",
                                "fr": "<b>Attention: Les règles vont changer pour la prochaine partie!!</b>"
                            }
                        }
                    ]
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
                            "cacheKey": "demandselection-block-num",
                            "textContent": {
                                "en": "This is part ??? of the game.",
                                "fr": "Cela fait partie ??? du jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Read these instructions.",
                                "fr": "Veuillez lire ces instructions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "demandselection-patch-string-presented",
                            "textContent": {
                                "en": "You must now find the <b>???</b> and pick that one on each trial",
                                "fr": "Vous devez maintenant identifier la parcelle qui vous semble <b>???</b> et la choisir à chaque essai."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "As before, start by taking the time to explore each of the patches.",
                                "fr": "Comme d’habitude, prenez tout d’abord le temps d’explorer les deux parcelles."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "demandselection-patch-string-presented",
                            "textContent": {
                                "en": "Remember, once you have found and selected the <b>???</b>, your goal is still to make a decision about the number that appears based on its color: ORANGE or BLUE",
                                "fr": "Rappelez-vous, une fois que vous avez trouvé et sélectionné le <b>???</b>, votre objectif est toujours de prendre une décision sur le nombre qui apparaît en fonction de sa couleur : ORANGE ou BLEU"
							}
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Recap instructions",
                        "fr": "Rappel des instructions"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, the number''s color tells you what you must identify about the number",
                                "fr": "Rappel:"
                            }
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
                                "fr": "Pair: touche fléche droite ➡"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
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
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready for the actual game",
                                "fr": "Cliquez sur \\"START\\" pour commencer"
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
                "componentName": "DEMANDSELECTIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 5000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 1000,
                    "numTrials": 35,
                    "delayToShowHelpMessage": 4000,
                    "probOfShiftFirstPatch": 10,
                    "probOfShiftSecondPatch": 90,
                    "oddEvenColor": "blue",
                    "ltGtColor": "orange",
                    "setCounterBalancePatchStringInMemory": "none",
                    "counterbalanceMode": "counterbalance-alternative",
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
                                "en": "You finished the game successfully",
                                "fr": "Vous avez terminé le jeu avec succès."
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
WHERE id = 7;