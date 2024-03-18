-- NUMBERS GAME TASK (previously the DIGIT SPAN)
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "NAB",
    name = "Numbers Game (VERSION 1)",
    description = "The participant reads a sequence of numbers and enters them in the same or reverse order",
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
                        "en": "Welcome to the Number Game Part 1",
                        "fr": "Bienvenue au jeu des chiffres - Partie 1"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please read the instructions carefully",
                                "fr": "Lisez attentivement les instructions"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "This is a memory test",
                                "fr": "Ceci est un test de mémoire"
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
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "A sequence of numbers appear on the screen <b>one at a time</b>. (Ex: 3, 9, 2)",
                                "fr": "Une séquence de chiffres apparaîtra sur l''écran <b>un à la fois</b>. (Eg: 3, 9, 2)"

                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Using the keypad shown on the screen, you will need to enter those same numbers <b>in the same order (Ex: 3, 9, 2)</b>.",
                                "fr": "Vous devrez mémoriser cette séquence, et, en utilisant votre souris, vous devrez saisir ces mêmes chiffres <b>dans le même ordre (Ex: 3, 9, 2)</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You must click the \\"Submit\\" key to record your answer",
                                "fr": "Vous devez cliquer sur \\"SUBMIT\\" pour enregistrer votre réponse."
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
                        "en": "Practice round",
                        "fr": "Ronde de pratique"
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
                                "en": "Remember when the keypad is shown, you need to enter the numbers <b>in the same order</b> as they were shown and then click submit.",
                                "fr": "Rappelez-vous que lorsque le clavier est affiché, vous devez saisir les chiffres <b>dans le même ordre</b> que l’ordre dans lequel ils ont été présentés. Ensuite, cliquez sur SUBMIT."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you don''t remember, press skip",
                                "fr": "Si vous ne vous en souvenez pas, cliquez sur \\"SKIP\\" pour passer au prochain."
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
                "componentName": "DIGITSPANCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 50000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationDigitPresented": 1000,
                    "durationPauseBetweenDigits": 300,
                    "durationOfFeedback": 1000,
                    "delayToShowHelpMessage": 20000,
                    "durationHelpMessageShown": 3000,
                    "durationFixationPresented": 500,
                    "useForwardSequence": true,
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
                        "en": "Good job!",
                        "fr": "Bon travail!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will now play the actual game.",
                                "fr": "Vous allez maintenant commencer le jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember when the keypad is shown, you need to enter the numbers <b>in the same order</b> as they were shown and click the <b>submit</b> button.",
                                "fr": "Rappelez-vous que quand le clavier est affiché, vous devrez saisir les chiffres <b>dans le même ordre</b> que l’ordre dans lequel ils ont été présentés, et ensuite, cliquez sur <b>Submit</b> pour soumettre votre réponse."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you don''t remember the numbers, click skip for the next trial.",
                                "fr": "Si vous ne vous en souvenez pas, cliquez sur \\"Skip\\" pour passer au prochain tour."
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
                "componentName": "DIGITSPANCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 50000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": false,
                    "durationDigitPresented": 1000,
                    "durationPauseBetweenDigits": 300,
                    "durationOfFeedback": 1000,
                    "delayToShowHelpMessage": 20000,
                    "durationHelpMessageShown": 3000,
                    "durationFixationPresented": 500,
                    "useForwardSequence": true,
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
                        "en": "Welcome to the Number Game Part 2",
                        "fr": "Bienvenue au jeu des chiffres - Partie 2"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "A sequence of numbers appear on the screen <b>one at a time</b>. (Ex: 3, 9, 2)",
                                "fr": "Une séquence de chiffres apparaîtra sur l''écran <b>un à la fois</b>. (Ex: 3, 9, 2)"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Using the keypad shown on the screen, you will need to enter those same numbers <b>in REVERSE order (Ex: 2, 9, 3)</b> and then click the \\"Submit\\" key.",
                                "fr": "Vous devrez maintenant saisir ces mêmes chiffres <b>dans l''ordre INVERSE (Ex: 2, 9, 3)</b>. Ensuite, cliquez sur \\"Submit\\"."
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
                        "en": "Practice round pt. 2",
                        "fr": "Pratique 2"
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
                                "en": "Rememebr when the keypad is shown, you need to enter the numbers <b>in reverse order</b> as they were shown and click submit",
                                "fr": "Rappelez-vous: quand le clavier est affiché, vous devez saisir les chiffres <b>dans l''ordre inverse</b> que celui dans lequel ils ont été présentés. Ensuite, cliquez sur submit."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you don''t remember, press skip",
                                "fr": "Si vous ne vous en souvenez pas, cliquez sur \\"SKIP\\" pour passer au prochain."
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
                "componentName": "DIGITSPANCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 50000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "durationDigitPresented": 1000,
                    "durationPauseBetweenDigits": 300,
                    "durationOfFeedback": 1000,
                    "delayToShowHelpMessage": 20000,
                    "durationHelpMessageShown": 3000,
                    "durationFixationPresented": 1000,
                    "useForwardSequence": false,
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
                        "en": "Good job!",
                        "fr": "Bon travail!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will now play the actual game",
                                "fr": "Vous allez maintenant commencer le vrai tour"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember when the keypad is shown, you need to enter the numbers <b>in reverse order</b> as they were shown and click the <b>submit</b> button",
                                "fr": "Rappelez-vous que quand le clavier est affiché, vous devez saisir les chiffres <b>dans l''ordre inverse</b> que celui dans lequel ils ont été présentés. Ensuite, cliquez sur <b>Submit</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "If you don''t remember, press skip",
                                "fr": "Si vous ne vous en souvenez pas, cliquez sur \\"SKIP\\" pour passer au prochain."
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
                "componentName": "DIGITSPANCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 50000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": false,
                    "durationDigitPresented": 1000,
                    "durationPauseBetweenDigits": 300,
                    "durationOfFeedback": 1000,
                    "delayToShowHelpMessage": 20000,
                    "durationHelpMessageShown": 3000,
                    "durationFixationPresented": 1000,
                    "useForwardSequence": false,
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
                                "fr": "Vous avez terminé le jeu avec succès"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for your participation",
                                "fr": "Merci pour votre participation"
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
WHERE id = 1;