
-- ODDBALL
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Oddball Task",
    description = "The participant is presented with various shapes. One shape (the triangle) is the target response. The participant needs to press a specific key whenever they see the target. Otherwise, they should press an alternative key for all other shapes",
    external_url = "",
    config = '{
        "taskConfig": {
            "counterBalanceGroups": {
                "1": "m",
                "2": "z"
            }
        },
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the Oddball Task",
                        "fr": "Bienvenue dans la tâche Oddball"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Read the instructions carefully",
                                "fr": "Lisez attentivement les instructions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this game, you will see \\"+\\" in the middle of the screen.",
                                "fr": "Dans ce jeux, vous verrez un \\"+\\" au centre de l’écran."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The \\"+\\" will be replaced by different shapes, which will be presented only briefly.",
                                "fr": "Le \\"+\\" sera remplacé par plusieurs formes, qui seront présentées brièvement."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Your goal is to identify when the triangle appears.",
                                "fr": "Votre but est d’identifier quand le triangle apparaît."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard when you see the TRIANGLE.",
                                "fr": "Appuyez le <b>???</b> quand vous voyez le TRIANGLE."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard for any other shape.",
                                "fr": "Appuyez le <b>???</b> pour toute autre forme."
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
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will start with a warm-up block and then a practice block where feedback will be provided after each trial.",
                                "fr": "Vous allez commencer par vous pratiquer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Remember:</b>",
                                "fr": "<b>Rappelez-vous:</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard when you see the TRIANGLE",
                                "fr": "Appuyez le <b>???</b> quand vous voyez le TRIANGLE."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard for any other shape",
                                "fr": "Appuyez le <b>???</b> pour toute autre forme."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" to begin the warm-up block",
                                "fr": "Cliquez sur \\"START\\" lorsque vous êtes prêt à commencer la pratique"
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
                "componentName": "ODDBALLCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 200,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 500,
                    "durationStimulusPresented": 450,
                    "durationFixationJitteredLowerBound": 1000,
                    "durationFixationJitteredUpperBound": 2000,
                    "numTrials": 10,
                    "numTargetTrials": 2,
                    "numNovelStimuli": 0,
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
                                "en": "You have completed the warm-up block! Next is a practice block where feedback will be provided.",
                                "fr": "Bravo!! Vous avez terminé la première pratique. Vous allez maintenant vous pratiquer une deuxième fois."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Remember:</b>",
                                "fr": "<b>Rappelez-vous:</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard when you see the TRIANGLE",
                                "fr": "Appuyez le <b>???</b> quand vous voyez le TRIANGLE."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard for any other shape",
                                "fr": "Appuyez le <b>???</b> pour toute autre forme."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready to begin the practice",
                                "fr": "Cliquez sur \\"START\\" lorsque vous êtes prêt à commencer la pratique"
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
                "componentName": "ODDBALLCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 200,
                    "showFeedbackAfterEachTrial": true,
                    "durationOfFeedback": 500,
                    "durationStimulusPresented": 450,
                    "durationFixationJitteredLowerBound": 1000,
                    "durationFixationJitteredUpperBound": 2000,
                    "numTrials": 10,
                    "numTargetTrials": 2,
                    "numNovelStimuli": 0,
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
                                "en": "You have reached the end of the practice block! Feedback will no longer be provided. There will be a total of 4 blocks with breaks between each block.",
                                "fr": "Bien joué! Vous avez fini la pratique! À partir de maintenant, il n’y aura plus de commentaires à l’écran pour vous aider."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Remember:</b>",
                                "fr": "<b>Rappelez-vous:</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard when you see the TRIANGLE",
                                "fr": "Appuyez le <b>???</b> quand vous voyez le TRIANGLE."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard for any other shape",
                                "fr": "Appuyez le <b>???</b> pour toute autre forme."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready to begin",
                                "fr": "Cliquez sur \\"START\\" lorsque vous êtes prêt à commencer"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "ODDBALLCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 200,
                    "showFeedbackAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationStimulusPresented": 450,
                    "durationFixationJitteredLowerBound": 1000,
                    "durationFixationJitteredUpperBound": 2000,
                    "numTrials": 60,
                    "numTargetTrials": 12,
                    "numNovelStimuli": 0,
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
                        "en": "You''ve reached the end of the block!",
                        "fr": "Vous avez atteint la fin du bloc!"
                    },
                    "timerConfig": {
                        "timer": 30000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 0
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You may take a 30 second break",
                                "fr": "Vous pouvez prendre une pause avant de passer au bloc suivant."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Reminder: If you need to take a longer break, please wait until the end of this game to close the window, otherwise your progress will not be saved. Thanks!",
                                "fr": "Rappel: Si vous voulez prendre une plus longue pause, SVP attendre la fin du jeu pour fermer la fenêtre. Sinon, votre progrès ne sera pas sauvegardé. Merci!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Remember:</b>",
                                "fr": "<b>Rappelez-vous:</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard when you see the TRIANGLE",
                                "fr": "Appuyez le <b>???</b> quand vous voyez le TRIANGLE."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard for any other shape",
                                "fr": "Appuyez le <b>???</b> pour toute autre forme."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will be automatically directed to the next block after the break. A \\"Get Ready!\\" slide will appear before you begin. You can also click \\"NEXT\\" to move on to the next round",
                                "fr": "Vous serez automatiquement dirigé vers le bloc suivant après la pause. Le message \\"Get Ready!\\" apparaîtra avant de commencer. Vous pouvez aussi cliquer sur \\"NEXT\\" pour passer au tour suivant."
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "ODDBALLCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 200,
                    "showFeedbackAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationStimulusPresented": 450,
                    "durationFixationJitteredLowerBound": 1000,
                    "durationFixationJitteredUpperBound": 2000,
                    "numTrials": 60,
                    "numTargetTrials": 12,
                    "numNovelStimuli": 0,
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
                        "en": "You''ve reached the end of the block!",
                        "fr": "Vous avez atteint la fin du bloc!"
                    },
                    "timerConfig": {
                        "timer": 30000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 0
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You may take a 30 second break",
                                "fr": "Vous pouvez prendre une pause avant de passer au bloc suivant."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Reminder: If you need to take a longer break, please wait until the end of this game to close the window, otherwise your progress will not be saved. Thanks!",
                                "fr": "Rappel: Si vous voulez prendre une plus longue pause, SVP attendre la fin du jeu pour fermer la fenêtre. Sinon, votre progrès ne sera pas sauvegardé. Merci!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Remember:</b>",
                                "fr": "<b>Rappelez-vous:</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard when you see the TRIANGLE",
                                "fr": "Appuyez le <b>???</b> quand vous voyez le TRIANGLE."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard for any other shape",
                                "fr": "Appuyez le <b>???</b> pour toute autre forme."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will be automatically directed to the next block after the break. A \\"Get Ready!\\" slide will appear before you begin. You can also click \\"NEXT\\" to move on to the next round",
                                "fr": "Vous serez automatiquement dirigé vers le bloc suivant après la pause. Le message \\"Get Ready!\\" apparaîtra avant de commencer. Vous pouvez aussi cliquer sur \\"NEXT\\" pour passer au tour suivant."
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "ODDBALLCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 200,
                    "showFeedbackAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationStimulusPresented": 450,
                    "durationFixationJitteredLowerBound": 1000,
                    "durationFixationJitteredUpperBound": 2000,
                    "numTrials": 60,
                    "numTargetTrials": 6,
                    "numNovelStimuli": 6,
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
                        "en": "You''ve reached the end of the block!",
                        "fr": "Vous avez atteint la fin du bloc!"
                    },
                    "timerConfig": {
                        "timer": 30000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 0
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You may take a 30 second break",
                                "fr": "Vous pouvez prendre une pause avant de passer au bloc suivant."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Reminder: If you need to take a longer break, please wait until the end of this game to close the window, otherwise your progress will not be saved. Thanks!",
                                "fr": "Rappel: Si vous voulez prendre une plus longue pause, SVP attendre la fin du jeu pour fermer la fenêtre. Sinon, votre progrès ne sera pas sauvegardé. Merci!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You may take a 30 second break",
                                "fr": "Vous pouvez prendre une pause avant de passer au bloc suivant."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Remember:</b>",
                                "fr": "<b>Rappelez-vous:</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard when you see the TRIANGLE",
                                "fr": "Appuyez le <b>???</b> quand vous voyez le TRIANGLE."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": {
                                "en": "Press <b>???</b> on the keyboard for any other shape",
                                "fr": "Appuyez le <b>???</b> pour toute autre forme."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will be automatically directed to the next block after the break. A \\"Get Ready!\\" slide will appear before you begin. You can also click \\"NEXT\\" to move on to the next round",
                                "fr": "Vous serez automatiquement dirigé vers le bloc suivant après la pause. Le message \\"Get Ready!\\" apparaîtra avant de commencer. Vous pouvez aussi cliquer sur \\"NEXT\\" pour passer au tour suivant."
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "ODDBALLCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 200,
                    "showFeedbackAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationStimulusPresented": 450,
                    "durationFixationJitteredLowerBound": 1000,
                    "durationFixationJitteredUpperBound": 2000,
                    "numTrials": 60,
                    "numTargetTrials": 6,
                    "numNovelStimuli": 6,
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
                        "en": "Game has finished",
                        "fr": "Le jeu est fini!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for your participation!",
                                "fr": "Merci pour votre participation!"
                            }
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 9;