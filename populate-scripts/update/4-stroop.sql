-- STROOP
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "NAB",
    name = "Stroop Task",
    description = "The participant sees either the word RED, BLUE, or GREEN. The participant has to press 1 if the word is colored red, 2 if the word is colored blue, or 3 if the word is colored green",
    external_url = "",
    config = '{
        "taskConfig": {
            "counterBalanceGroups": {
                "1": 1,
                "2": 2,
                "3": 3,
                "4": 4
            }
        },
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the Stroop Task",
                        "fr": "Bienvenue au jeu des couleurs"
                    },
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
                                "en": "In this task, different words for colors (Ex. \\"BLUE\\") will be presented in different colored ink:",
                                "fr": "Dans ce jeu, différents noms de couleurs (ex. \\"Bleu\\") apparaîtront à l’écran, et seront imprimés avec différentes couleurs d’encre."
                            }
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": {
                                "en": "/assets/images/instructions/strooptask/stroop_ink_examples_en.png",
                                "fr": "/assets/images/instructions/strooptask/stroop_ink_examples_fr.png"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You have to response to the <b>COLOR</b> of the ink that the word is printed in, <b>NOT</b> the word itself.",
                                "fr": "Vous devrez indiquer <b>la couleur de l’encre</b> sans tenir compte du nom de couleur qui est écrit."
                            }
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": {
                                "en": "/assets/images/instructions/strooptask/stroop_ink_instructions_en.png",
                                "fr": "/assets/images/instructions/strooptask/stroop_ink_instructions_fr.png"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
                                "fr": "Cliquez sur \\"SUIVANT\\" pour continuer"
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
                        "en": "Here are some examples",
                        "fr": "Voici quelques exemples"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you see \\"BLUE\\" with red ink then you should respond \\"1\\"",
                                "fr": "Si vous voyez \\"BLEU\\" (encre rouge) vous devez répondre \\"1\\""
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you see \\"BLUE\\" with blue ink then you should respond \\"2\\"",
                                "fr": "Si vous voyez \\"BLEU\\" (encre bleu) vous devez répondre \\"2\\""
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you see \\"BLUE\\" with green ink then you should respond \\"3\\"",
                                "fr": "Si vous voyez \\"BLEU\\" (encre vert) vous devez répondre \\"3\\""
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Again, only the COLOR of the ink matters, NOT the word itself.",
                                "fr": "N''oubliez pas: seule la COULEUR de l''encre compte, PAS le mot lui-même"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please use the number keys \\"1\\", \\"2\\", \\"3\\" on your keyboard to respond",
                                "fr": "Veuillez utiliser les touches numériques \\"1\\", \\"2\\", \\"3\\" sur votre clavier pour répondre"
                            }
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": {
                                "en": "/assets/images/instructions/strooptask/stroop_ink_instructions_en.png",
                                "fr": "/assets/images/instructions/strooptask/stroop_ink_instructions_fr.png"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
                                "fr": "Cliquez sur \\"SUIVANT\\" pour continuer"
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
                        "en": "Practice Round",
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
                                "en": "Good luck! You will have very little time to respond, so be ready",
                                "fr": "Vous aurez très peu de temps pour répondre, alors soyez prêts! Bonne chance!"
                            }
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": {
                                "en": "/assets/images/instructions/strooptask/stroop_ink_instructions_en.png",
                                "fr": "/assets/images/instructions/strooptask/stroop_ink_instructions_fr.png"
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
                "componentName": "STROOPCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "showScoreAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationFixationPresented": 1000,
                    "numTrials": 15,
                    "numCongruent": 8,
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
                        "en": "Practice round is now complete",
                        "fr": "Bon travail!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will now play the actual game",
                                "fr": "Vous allez maintenant commencer le vrai jeu"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will earn 10 points for every right answer",
                                "fr": "Vous gagnerez 10 points pour chaque bonne réponse"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Good luck!",
                                "fr": "Bonne chance!"
                            }
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": {
                                "en": "/assets/images/instructions/strooptask/stroop_ink_instructions_en.png",
                                "fr": "/assets/images/instructions/strooptask/stroop_ink_instructions_fr.png"
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
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "STROOPCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": false,
                    "showScoreAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationFixationPresented": 1000,
                    "numTrials": 60,
                    "numCongruent": 40,
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
                        "en": "Congratulations! You finished the game successfully",
                        "fr": "Félicitations! Vous avez terminé le jeu avec succès."
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "stroop-total-score",
                            "textContent": {
                                "en": "You scored: ??? points",
                                "fr": "Tu as: ??? points"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for your participation.",
                                "fr": "Merci pour votre participation."
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
WHERE id = 4;