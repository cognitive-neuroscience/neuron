
-- PLT (version 1)
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Probabilistic Learning Task (VERSION 1)",
    description = "This task is a probabilistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501. To see the image set associated with this version of the PLT, visit this link: https://github.com/cognitive-neuroscience/axon/tree/master/src/assets/images/stimuli/version1/plt",
    external_url = "",
    config = '{
        "taskConfig": {
            "version": 1
        },
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the learning task!",
                        "fr": "Bienvenue au Jeu d''apprentissage!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Your goal is to find the symbols that give you the most <b>points<b/>.",
                                "fr": "Votre objectif est de trouver les symboles qui offrent le plus de <b>points</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this game, you will see sets of symbols.",
                                "fr": "Dans ce jeu, vous verrez des paires de symboles."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "For example:",
                                "fr": "Par exemple:"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/plt/example1.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Some symbols will be <b>more likely</b> to give you <b>points</b> than others.",
                                "fr": "Un des symboles sera <b>plus susceptible</b> de vous donner des <b>points</b> que l’autre."
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
                                "en": "You want to pick the symbol most likely to <b>give</b> you points.",
                                "fr": "Votre objectif est de choisir le symbole qui est le plus susceptible de vous <b>donner</b> des points."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "To select a symbol on a given side of the screen, use the keys below:",
                                "fr": "Pour choisir un symbole, utilisez les touches du clavier comme suit:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "indent": 1,
                                "en": "Z: LEFT SIDE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M: RIGHT SIDE",
                                "fr": "Z: Celui à gauche &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M: Celui à droite"
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
                                "en": "At first, it will feel like you are guessing. With each guess, you will learn if you won points.",
                                "fr": "Au début, vous aurez l’impression d’y aller au pif. Après chaque choix, on vous dira si vous avez gagné des points."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Over time, you will learn which symbols are better or worse.",
                                "fr": "Avec le temps, vous apprendrez quels symboles sont les plus susceptibles de vous donner des points."
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
                                "en": "You will begin with a practice session.",
                                "fr": "Vous commencerez par une session d’entraînement."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, to select a symbol on a given side of the screen, use the keys below:",
                                "fr": "N’oubliez pas: pour choisir un symbole, utilisez les touches du clavier comme suit:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Z: LEFT SIDE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M: RIGHT SIDE",
                                "fr": "Z: Celui à gauche &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M: Celui à droite"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" to begin",
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
                "componentName": "PLTCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 4000,
                    "phase": "practice-phase",
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationJitteredLowerBound": 500,
                    "durationFixationJitteredUpperBound": 500,
                    "showFeedbackAfterEachTrial": true,
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
                        "en": "Well done!",
                        "fr": "Bravo!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You may have noticed that one of the symbols was more likely to <b>give you points.</b>",
                                "fr": "Vous avez peut-être remarqué que l’un des symboles vous donnait plus souvent des points que l’autre."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "But this was not always the case. Sometimes it gave you none, but it was still the better symbol because it gave you points <b>most often</b>.",
                                "fr": "Mais cela n’était pas toujours le cas. Parfois il ne vous donnait rien, mais c’était quand-même le meilleur des deux parce qu’il vous donnait des points le plus souvent."
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
                                "en": "The real game is similar to the practice except you will see 3 pairs of symbols.",
                                "fr": "Le vrai jeu est similaire à l’entraînement sauf que vous verrez trois paires de symboles."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember: some symbols will be <b>BETTER</b>, but even these symbols will still not always give you what you want.",
                                "fr": "N’oubliez pas: certains symboles offriront plus souvent des points, mais même ces symboles-là ne vous donneront pas toujours ce que vous voulez."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Use buttons:",
                                "fr": "Utilisez les touches:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Z (Left) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M (Right)",
                                "fr": "Z (Gauche) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M (Droite)"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" to begin",
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
                "componentName": "PLTCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 4000,
                    "phase": "training-phase",
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationJitteredLowerBound": 300,
                    "durationFixationJitteredUpperBound": 800,
                    "showFeedbackAfterEachTrial": true,
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
                        "en": "Well done!",
                        "fr": "Bravo!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The next part of this game is the same except you will no longer receive feedback.",
                                "fr": "La prochaine étape du jeu est pareille sauf que vous ne recevrez plus de ‘feedback’."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Use what you just learned to pick the symbol most likely to give you points.",
                                "fr": "Utilisez ce que vous venez d’apprendre à propos des symboles pour choisir celui qui est le plus susceptible de vous offrir des points."
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
                                "en": "You will see the same symbols again though they may sometimes appear in different combinations.",
                                "fr": "Vous verrez à nouveau les mêmes symboles, sauf que les paires seront parfois réarrangées."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Reminder: pick the symbol that is the most <b>LIKELY</b> to <b>give you points</b>.",
                                "fr": "N’oubliez pas: choisissez le symbole le plus susceptible d’offrir de des points."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Use buttons:",
                                "fr": "Utilisez les touches:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Z (Left) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M (Right)",
                                "fr": "Z (Gauche) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M (Droite)"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you are unsure, go with your gut feeling.",
                                "fr": "Si vous n’êtes pas sûr.e, allez-y avec votre instinct."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" to begin",
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
                "componentName": "PLTCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 4000,
                    "phase": "test-phase",
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationJitteredLowerBound": 300,
                    "durationFixationJitteredUpperBound": 800,
                    "showFeedbackAfterEachTrial": false,
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
                        "en": "Well done!",
                        "fr": "Bravo!"
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
            }
        ]
    }'
WHERE id = 56;
