-- File used to update the DB for existing tasks

-- NUMBERS GAME TASK (previously the DIGIT SPAN)
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "NAB",
    name = "Numbers Game",
    description = "The participant reads a sequence of numbers and enters them in the same or reverse order",
    external_url = "",
    config = '{
        "taskConfig": {},
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
                    "title": "Practice round",
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
                    "maxResponseTime": 30000,
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
                    "maxResponseTime": 30000,
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
                    "maxResponseTime": 30000,
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
                    "maxResponseTime": 30000,
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
-- FINGER TAPPING TASK
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "NAB",
    name = "Finger Tapping Game",
    description = "The participant uses their dominant or non dominant hand to tap the \"P\" and \"Q\" characters as quickly as they can",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the Finger Tapping Game",
                        "fr": "Bienvenue au jeu des doigts"
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
                                "en": "This is a test of finger tapping speed",
                                "fr": "Ceci est un test de vitesse de des doigts"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                "componentName": "SELECTOPTIONCOMPONENT",
                "componentConfig": {
                    "question": {
                        "en": "Are you left handed or right handed?",
                        "fr": "Es-tu gaucher ou droitier?"
                    },
                    "cacheKey": "finger-tapping-handedness",
                    "options": [
                        {
                            "label": {
                                "en": "Left Handed",
                                "fr": "Gaucher"
                            },
                            "value": "LEFT"
                        },
                        {
                            "label": {
                                "en": "Right Handed",
                                "fr": "Droitier"
                            },
                            "value": "RIGHT"
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
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/fingertapping/index-finger-banner.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will have to <b>alternatively tap</b> the <b>P</b> and <b>Q</b> keys of the keyboard <b>as fast as you can</b>",
                                "fr": "Avec un de vos index, vous devrez taper les clés P et Q du clavier <b>en alternance et le plus vite possible</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will do 3 rounds of this.",
                                "fr": "Vous ferez 3 tours."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will tell you which hand to use right before each round",
                                "fr": "Avant chaque tour, nous indiquerons si vous devez utiliser l’index droit ou gauche"
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
                                "en": "The keys you will be tapping on the keyboard are the \\"Q\\" and the \\"P\\" keys",
                                "fr": "Les touches sur lesquelles vous allez taper en alternance sont \\"Q\\" et \\"P\\""
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please go ahead and find these keys now",
                                "fr": "Prenez un moment pour localiser ces touches sur le clavier."
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
                                "en": "First, let''s practice",
                                "fr": "Commençons par un tour d’entraînement!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "For the practice, please use your <b>RIGHT</b> index finger",
                                "fr": "Veuillez utiliser votre index <b>DROIT</b>"
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
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Remember, you must use a SINGLE hand, and tap as fast as you can",
                        "fr": "N''oubliez pas que vous devez utiliser une SEULE main et taper aussi vite que vous le pouvez"
                    },
                    "timerConfig": {
                        "timer": 5000,
                        "showTimer": true,
                        "canSkipTimer": false,
                        "countDown": true
                    },
                    "sections": []
                }
            },
            {
                "componentName": "FINGERTAPPINGCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 10000,
                    "durationFixationPresented": 50,
                    "useHand": "RIGHT"
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
                                "en": "Good job! Now you will complete the main test.",
                                "fr": "Bon travail! Vous êtes maintenant prêt à commencer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will be doing 3 rounds",
                                "fr": "Vous ferez 3 tours."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You’ll get a break between each round and we will tell you which hand to use just before you begin.",
                                "fr": "Nous indiquerons si vous devez utiliser l’index droit ou gauche avant chaque tour et vous aurez une pause après chaque tour."
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
                                "en": "In the <b>first two rounds</b>, you have to tap <b>as fast as you can</b> with a <b>SINGLE</b> index finger for 1 full minute",
                                "fr": "Pour <b>les deux premiers tours</b>, vous devrez taper le \\"P\\" et \\"Q\\" en alternance avec <b>UN SEUL</b> index pendant 1 minute, <b>le plus vite possible</b>, comme pendant l’entraînement."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will tell you which hand to use before each round",
                                "fr": "Nous vous dirons quelle main utiliser avant chaque tour."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In the <b>third round</b>, you have to use <b>BOTH</b> index fingers, one for each key, and keep tapping <b>as fast as you can</b> for 20 seconds",
                                "fr": "Pour <b>le troisième tour</b>, vous devrez utiliser les <b>DEUX</b> index, un pour \\"Q\\" et un pour \\"P\\", et taper les touches en alternance <b>aussi vite que possible</b> pendant 20 secondes."
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
                        "en": "First Round",
                        "fr": "Premier tour"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please use the index finger of your <b>DOMINANT HAND</b> for this round",
                                "fr": "Veuillez utiliser l''index de votre <b>MAIN DOMINANTE</b> pour ce tour."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "(if you are right-handed, that is your right hand)",
                                "fr": "(si vous utilisez principalement votre main droite pour écrire, votre main dominante est la droite)"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "REMEMBER:",
                                "fr": "N''oubliez pas:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Tap the \\"P\\" and \\"Q\\" keys as fast as you can",
                                "fr": "Tapez les clés \\"P\\" et \\"Q\\" en alternance aussi vite que possible"
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
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Remember, you must use a SINGLE hand and tap as fast as you can",
                        "fr": "N''oubliez pas que vous devez utiliser une SEULE main et taper aussi vite que vous le pouvez"
                    },
                    "timerConfig": {
                        "timer": 5000,
                        "showTimer": true,
                        "canSkipTimer": false,
                        "countDown": true
                    },
                    "sections": []
                }
            },
            {
                "componentName": "FINGERTAPPINGCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 60000,
                    "durationFixationPresented": 50,
                    "useHand": "DOMINANT"
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "It''s break time",
                        "fr": "C''est la pause"
                    },
                    "timerConfig": {
                        "timer": 120000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 30,
                        "countDown": false
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Second Round:</b> Please use your <b>NON-DOMINANT</b> hand for this round.",
                                "fr": "<b>Deuxième tour</b>: Veuillez utiliser votre <b>MAIN NON DOMINANTE</b> pour ce tour."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "(so if you are right-handed, that is your left hand)",
                                "fr": "(si vous êtes droitier, c''est votre main gauche)"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You have to wait for <b>at least 30 seconds</b> before being able to continue",
                                "fr": "Vous devrez attendre <b>au moins 30 secondes</b> avant de cliquer \\"Start\\" pour continuer"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The next round will automatically start in 2 minutes unless you choose to continue sooner",
                                "fr": "Le prochain tour commencera automatiquement dans 2 minutes à moins que vous ne choisissiez de continuer plus tôt."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round.",
                                "fr": "Le jeu se lancera en plein écran. Cliquez sur \\"Start\\" pour commencer l''entraînement."
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Remember, you must use a SINGLE hand and tap as fast as you can",
                        "fr": "N''oubliez pas que vous devez utiliser une SEULE main et taper aussi vite que vous le pouvez"
                    },
                    "timerConfig": {
                        "timer": 5000,
                        "showTimer": true,
                        "canSkipTimer": false,
                        "skipAvailableAfterXSeconds": 0,
                        "countDown": true
                    },
                    "sections": []
                }
            },
            {
                "componentName": "FINGERTAPPINGCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 60000,
                    "durationFixationPresented": 50,
                    "useHand": "NONDOMNANT"
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "It''s break time",
                        "fr": "C''est la pause"
                    },
                    "timerConfig": {
                        "timer": 120000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 30,
                        "countDown": false
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Third round:</b> Please use <b>BOTH INDEX FINGERS</b> for this round.",
                                "fr": "<b>Troisième tour:</b> Veuillez utiliser les <b>DEUX MAINS</b> pour ce tour."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "This means you must use your LEFT finger to tap \\"Q\\" and your RIGHT finger to tap \\"P\\", and alternate between the two",
                                "fr": "Vous devez utiliser l’index de la main GAUCHE pour appuyer sur \\"Q\\" et l’index de la main DROITE pour appuyer sur \\"P\\", et alterner entre les deux."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You have to wait <b> at least 30 seconds</b> before being able to continue",
                                "fr": "Vous devez attendre <b>au moins 30 secondes</b> avant de pouvoir continuer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The next round will automatically start in 2 minutes unless you choose to continue sooner",
                                "fr": "Le prochain tour commencera automatiquement dans 2 minutes à moins que vous ne choisissiez de continuer plus tôt."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round.",
                                "fr": "Le jeu se lancera en plein écran. Cliquez sur \\"Start\\" pour commencer l''entraînement."
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "You must use BOTH your index fingers, and tap as fast as you can",
                        "fr": "Vous devez utiliser les index des DEUX mains et taper en alternance aussi vite que possible."
                    },
                    "timerConfig": {
                        "timer": 5000,
                        "showTimer": true,
                        "canSkipTimer": false,
                        "skipAvailableAfterXSeconds": 0,
                        "countDown": true
                    },
                    "sections": []
                }
            },
            {
                "componentName": "FINGERTAPPINGCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 20000,
                    "durationFixationPresented": 50,
                    "useHand": "BOTH"
                }
            }
        ]
    }'
WHERE id = 2;
-- NBACK
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "NAB",
    name = "N-Back",
    description = "The participant sees a sequence of letters and presses the left or right arrow arrow key to indicate if they saw that letter 2 letters ago",
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
                        "en": "Welcome to the N-Back Task",
                        "fr": "Bienvenue au Jeu Des Lettres"
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
                                "en": "This is a memory task:",
                                "fr": "Ceci est un jeu de mémoire:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                                "en": "In this task, letters will be shown on the screen.",
                                "fr": "Dans ce jeu, des lettres vont apparaître à l''écran, une à la fois."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "For each letter, you have to decide if it is the <b>same letter</b> that was presented <b>2 letters ago</b>",
                                "fr": "Votre objectif est de déterminer si la lettre présentée à l’écran est <b>la même lettre</b> que celle qui a été affichée <b>2 lettres plus tôt</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You have to press:",
                                "fr": "Utilisant votre clavier, vous devez cliquez:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "⬅️ (Left arrow) for <b>not the same</b>, if the letter is <b>not the same</b> as the one that was presented 2 letters ago",
                                "fr": "⬅️ (clé pour flèche gauche) si <b>la lettre est différente</b> que celle qui a été présentée <b>il y a 2 lettres</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "➡️ (Right arrow) for <b>the same</b> if the letter is <b>the same</b> as the one that was presented 2 letters ago",
                                "fr": "➡️ (clé pour flèche droite) si <b>la lettre est pareille</b> que celle qui a été présentée <b>il y a 2 lettres</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                        "en": "Here is an example",
                        "fr": "Voici un exemple:"
                    },
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/nback/examplePart1.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Note that for the first two letters of the task, there is no letter to compare to, so you just press ⬅️ for these.",
                                "fr": "Pour les deux premières qui seront présentées (ex. F, K dans cet exemple), ce n’est pas possible de faire la comparaison (parce qu’il n’y avait pas de lettres précédentes) donc vous appuyez sur ⬅️ pour celles-là."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                        "en": "Here is an example (continued)",
                        "fr": "Voici un exemple cont."
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The next letter is K:",
                                "fr": "La lettre suivante est K:"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/nback/examplePart2.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now, you press ➡️ because a K was also <b>presented</b> two letters ago",
                                "fr": "Dans cet exemple, la 5ième lettre présentée (K) correspond à celle qui a été présentée 2 places plus tôt. Donc, vous appuyez sur ➡️."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                        "en": "Here is an example (continued)",
                        "fr": "Voici un exemple cont."
                    },
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/nback/examplePart3.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "But now you would press ⬅️ for this K because is it <b>NOT THE SAME</b> as the letter presented 2 letters ago.",
                                "fr": "La prochaine lettre présentée ne correspond pas à celle présentée deux places plus tôt, donc vous appuyez sur ⬅️."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                        "en": "Practice",
                        "fr": "Pratique"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Let''s practice! You will have very little time to respond, so be ready!",
                                "fr": "Vous aurez maintenant la chance de vous pratiquer. Les lettres se déroulent très vite, alors soyez prêts!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "(the game will launch in fullscreen)",
                                "fr": "(Le jeu se lancera en plein écran)"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, press:",
                                "fr": "Rappelez vous de cliquer les clés comme suit:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "⬅️ (left arrow) if the letter is <b>NOT THE SAME</b> as 2 letters ago",
                                "fr": "⬅️ (clé flèche gauche) si la lettre <b>n''est pas la même</b> que celle qui a été présentée <b>2 lettres plus tôt</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "➡️ (right arrow) if the letter is <b>THE SAME</b> as 2 letters ago",
                                "fr": "➡️ (clé flèche de droite) si la lettre <b>est la même</b> que celle qui a été présentée <b>2 lettres plus tôt</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" to proceed",
                                "fr": "Cliquez sur \\"START\\" pour continuer"
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
                "componentName": "NBACKCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "showScoreAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationFixationPresented": 1000,
                    "numTrials": 15,
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
                                "fr": "Vous allez maintenant commencer le jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will earn 10 points for every right answer",
                                "fr": "Vous gagnerez 10 points pour chaque bonne réponse."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, press:",
                                "fr": "Rappelez vous:"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "⬅️ (left arrow) if the letter is <b>NOT THE SAME</b> as 2 letters ago",
                                "fr": "⬅️ (clé flèche gauche) si la lettre <b>n''est pas la même</b> que celle qui a été présentée <b>2 lettres plus tôt</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "➡️ (right arrow) if the letter is <b>THE SAME</b> as 2 letters ago",
                                "fr": "➡️ (clé flèche de droite) si la lettre <b>est la même</b> que celle qui a été présentée <b>2 lettres plus tôt</b>."
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
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready for the actual game",
                                "fr": "Cliquez sur \\"START\\" pour commencer le jeu"
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
                "componentName": "NBACKCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": false,
                    "showScoreAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationFixationPresented": 1000,
                    "numTrials": 70,
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
                        "fr": "Félicitations!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Congratulations! You have finished the game successfully",
                                "fr": "Vous avez terminé le jeu avec succès."
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "nback-total-score",
                            "textContent": {
                                "en": "You scored ??? points",
                                "fr": "Vous marquez ??? points"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for your participation. Click \\"CONTINUE\\"",
                                "fr": "Merci de votre participation. Cliquez sur \\"CONTINUE\\""
                            }
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 3;
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
-- TRAIL MAKING
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "NAB",
    name = "Trail Making",
    description = "The participant clicks different buttons in sequential order as fast as possible",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to Connect the dots game - Part 1",
                        "fr": "Bienvenue au jeu ‘Relier Les Points’ - Partie 1"
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
                                "en": "In this task, you will be shown numbered circles on the screen",
                                "fr": "Des cercles numérotés seront affichés à l''écran."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You must start by clicking the number 1, then 2, and then continue in ascending order as fast as possible",
                                "fr": "Vous devez relier les cercles en cliquant dessus avec la souris, en suivant l’ordre croissant des numéros (1, 2, 3, etc.). Vous devez le faire le plus vite possible."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                        "en": "Practice round",
                        "fr": "Pratique"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Let''s practice",
                                "fr": "Vous aurez maintenant la chance de vous pratiquer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen",
                                "fr": "Le jeu se lancera en plein écran."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready for the practice round",
                                "fr": "Cliquez sur \\"START\\" pour commencer la pratique"
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
                "componentName": "TRAILMAKINGCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 120000,
                    "flashIncorrectDuration": 500,
                    "trialType": "NUMERIC",
                    "durationOutOfTimeMessageShown": 3000,
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
                        "en": "Practice round is now complete!",
                        "fr": "Bravo!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will now play the actual game",
                                "fr": "Vous allez maintenant commencer le jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You must start by clicking the number 1, then 2, and then continue in ascending order as fast as possible",
                                "fr": "Rappel: vous devez relier les chiffres en ordre croissant le plus vite possible."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready",
                                "fr": "Cliquez sur \\"START\\" quand vous êtes prêt"
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
                "componentName": "TRAILMAKINGCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 120000,
                    "flashIncorrectDuration": 500,
                    "trialType": "NUMERIC",
                    "durationOutOfTimeMessageShown": 3000,
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
                        "en": "Welcome to the Connect the dots game - Part 2",
                        "fr": "Jeu ‘Relier Les Points’ - Partie 2"
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
                                "en": "In this task, you will be shown circles with numbers and letters",
                                "fr": "Il y aura maintenant des numéros ET des lettres."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Starting with number 1, you must click the circles ALTERNATING between numbers and letters in increasing order as fast as possible.",
                                "fr": "Commençant par le numéro 1, vous devez cliquer sur les cercles EN ALTERNANT entre les numéros et les lettres, en suivant l''ordre croissant, le plus vite possible."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Like this:",
                                "fr": "Comme ceci:"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/trailmaking/connect-the-dots-2-example.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to proceed",
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
                        "en": "Practice round",
                        "fr": "Pratique"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Let''s practice",
                                "fr": "Vous aurez maintenant la chance de vous pratiquer."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/trailmaking/connect-the-dots-2-example.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen",
                                "fr": "Le jeu se lancera en plein écran"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready for the practice round",
                                "fr": "Cliquez sur \\"START\\" pour commencer la pratique"
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
                "componentName": "TRAILMAKINGCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 240000,
                    "flashIncorrectDuration": 500,
                    "trialType": "ALPHANUMERIC",
                    "durationOutOfTimeMessageShown": 3000,
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
                        "en": "Practice round is now complete!",
                        "fr": "Bon travail!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will now play the actual game",
                                "fr": "Vous allez maintenant commencer le jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Starting with number 1, you must click the circles ALTERNATING between numbers and letters in ascending order as fast as possible",
                                "fr": "Rappel: vous devez cliquer les cercles en suivant cet ordre et vous devez le faire le plus vite possible."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/trailmaking/connect-the-dots-2-example.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready",
                                "fr": "Cliquez sur \\"START\\" quand vous êtes prêt"
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
                "componentName": "TRAILMAKINGCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 240000,
                    "flashIncorrectDuration": 500,
                    "trialType": "ALPHANUMERIC",
                    "durationOutOfTimeMessageShown": 3000,
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
                                "en": "Thank you for your participation",
                                "fr": "Merci pour votre participation."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\"",
                                "fr": "Cliquez sur \\"NEXT\\""
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
WHERE id = 5;
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
                    "title": "Welcome",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "There are two parts to this game."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "PART 1: Number game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "First we will go through the instructions and then you will have some opportunity to practice."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                            "textContent": "Read the instructions carefully."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will see a number on the screen. That number will either be <b>ORANGE</b> or <b>BLUE</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The color is important: It will tell you what you must identify about that number."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Instructions continued",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "<b>ORANGE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Determine if the number is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Lesser than (<) 5: Press the left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Greater than (>) 5: Press the right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>BLUE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If the number is odd: Press the left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If the number is even: Press the right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Examples",
                    "sections": [
                        {
                            "sectionType": "image-small",
                            "imageAlignment": "left",
                            "imagePath": "/assets/images/instructions/taskswitching/orange3.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Hint: The number is <b>ORANGE</b> so you must decide if it is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You should choose <b>LEFT</b> arrow to indicate that it''s less than (<) 5"
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
                            "textContent": "Hint: The number is <b>BLUE</b> so you must decide if it is an odd or even number"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You should choose <b>RIGHT</b> arrow to indicate that it''s even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Examples",
                    "sections": [
                        {
                            "sectionType": "image-small",
                            "imageAlignment": "left",
                            "imagePath": "/assets/images/instructions/taskswitching/orange7.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Hint: The number is <b>ORANGE</b> so you must decide if it is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You should choose the <b>RIGHT</b> arrow to indicate that it''s greater than (>) 5"
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
                            "textContent": "Hint: The number is <b>BLUE</b> so you must decide if it is an odd or even number"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You should choose the <b>LEFT</b> arrow to indicate that it''s odd"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Practice round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Don''t worry, this is just to help you learn which keys to press. We will continue to give you hints."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "(The game will launch in fullscreen)"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                            "textContent": "<b>BLUE NUMBER</b>: is number odd or even?"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Odd: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Even: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>ORANGE NUMBER</b>: is number odd or even?"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Less than 5: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Greater than 5: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" to start the practice"
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
                    "title": "1st Practice round is now complete",
                    "sections": [
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "task-switching-num-correct",
                            "textContent": "You got ??? out of 5 trials correct"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" when you are ready for the next stage"
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
                    "title": "Practice round 2",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Remember, the number''s color tells you what you must identify about the number"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>ORANGE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Less than 5: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Greater than 5: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>BLUE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Odd: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Even: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the practice round"
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
                            "textContent": "You got ??? out of 20 trials correct"
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
                            "textContent": "We will repeat this round so you can get more practice"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" when you are ready for the next stage"
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
                    "title": "Practice round 2",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Remember, the number''s color tells you what you must identify about the number"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>ORANGE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Less than 5: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Greater than 5: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>BLUE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Odd: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Even: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the practice round"
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
                    "title": "Practice round 3",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Last practice"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "This time we won''t give you feedback after each answer"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Do your best!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Practice round 3",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Remember, the number''s color tells you what you must identify about the number"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>ORANGE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Less than 5: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Greater than 5: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>BLUE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Odd: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Even: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the practice round"
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
                    "title": "Main round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Great! All practices are complete."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Now you will play the real game."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Recap instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Remember, the number''s color tells you what you must identify about the number"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>ORANGE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Less than 5: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Greater than 5: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>BLUE NUMBER</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Odd: Left arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Even: Right arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the practice round"
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
                    "title": "Congratulations!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You finished the game successfully"
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "task-switching-num-correct",
                            "textContent": "You scored ??? points"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Part 2: Patch Game",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Read the instructions carefully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Now you will be playing a slightly different game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will see two colored patches on the screen and will have to pick one. Each patch is hiding a colored number."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Once the number appears, as before, you will have to make a decision about that number based on its color: ORANGE or BLUE"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "More instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "There are differences between the patches:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "One patch is hiding numbers that change color <b>less</b> often"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The other patch is hiding numbers that change color <b>more</b> often"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "More instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "If you develop a preference for one of the patches, feel free to continue to choose it"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "However, we recommend that you <b>try both patches at the beginning</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Try to avoid choosing the patch solely based on its deisgn or its location"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "More instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Steps to select a patch:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "1. Move the cursor to the bullseye in the middle of the screen. This will make the patches appear"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "2. To select a patch, move the cursor to its location. The number will then appear"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "3. Then use the arrow keys as before to give us your answer"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "More instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Determine if the number is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than (<) 5 : Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than (>) 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "First, a practice round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "(The game will launch in fullscreen)"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the practice round"
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
                    "title": "Practice round is now complete",
                    "sections": [
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "demandselection-num-correct",
                            "textContent": "You got ??? out of 10 correct"
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
                            "textContent": "We will repeat this round so you can get more practice."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" when you are ready for the next stage"
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
                    "title": "More instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Determine if the number is less or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than (<) 5 : Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than (>) 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                            "textContent": "You got ??? out of 10 correct"
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Instructions Recap",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number: Determine if the number is less or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than 5: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number: Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" to launch the practice"
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
                    "title": "Main Round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Good job! Now we will start the real game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "There are six short parts to the game, each lasting a few minutes. You can take short breaks in between each."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                            "textContent": "This is part ??? of the game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Recap Instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Remember, first pick a patch then make a decision based on the color of the number, ORANGE or BLUE"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The patches are different:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The numbers hiding behind each patch change color <b>more</b> or <b>less</b> often depending on the patch"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Recap Instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "If you develop a preference for one of the patches, feel free to continue to choose it"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "However, we recommend that <b>you try both patches at the beginning</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Try to avoid choosing the patch solely based on how they look or on their location"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Recap Instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number: Determine if the number is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than 5: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number: Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
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
                    "title": "Congrats, you have finished this part",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                            "textContent": "This is part ??? of the game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Recap Instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number: Determine if the number is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than 5: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number: Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
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
                    "title": "Congrats, you have finished this part",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                            "textContent": "This is part ??? of the game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                    "title": "Recap Instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number: Determine if the number is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than 5: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number: Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
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
                    "title": "Congrats, you have finished this part",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
                            "textContent": "This is part ??? of the game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Recap Instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number: Determine if the number is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than 5: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number: Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
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
                    "title": "Congrats, you have finished this part",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>Please pay attention. We will be asking you to do something different!!!</b>"
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
                            "textContent": "This is part ??? of the game."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Read these instructions."
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Find the <b>???</b> and pick that one on each trial"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Remember, once you have found and selected the <b>???</b>, your goal is still to make a decision about the number that appears based on its color: ORANGE or BLUE"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Recap Instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number: Determine if the number is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than 5: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number: Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
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
                    "title": "Congrats, you have finished this part",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "<b>Please pay attention. We will be asking you to do something different!!!</b>"
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
                            "textContent": "This is part ??? of the game."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Read these instructions."
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Find the <b>???</b> and pick that one on each trial"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Remember, once you have found and selected the <b>???</b>, your goal is still to make a decision about the number that appears based on its color: ORANGE or BLUE"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
                        }
                    ]
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Recap Instructions",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Orange number: Determine if the number is less than or greater than 5"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "LESS than 5: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "GREATER than 5: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Blue number: Determine if the number is odd or even"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is ODD: Press the LEFT arrow key ⬅️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If number is EVEN: Press the RIGHT arrow key ➡️"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
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
                    "title": "Congratulations!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You finished the game successfully."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to proceed"
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
-- SMILEY FACE
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Smiley Face",
    description = "The participant is presented with both long and short faces. They have to hit a key to show that they saw a shorter smile, compared to a different key for a longer smile",
    external_url = "",
    config = '{
        "taskConfig": {
            "counterBalanceGroups": {
                "1": "SHORTFACEREWARDEDMORE",
                "2": "LONGFACEREWARDEDMORE"
            }
        },
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the Smiley Face Game",
                        "fr": "BIENVENUE AU JEU DES LETTRES"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will be shown a smiley face.",
                                "fr": "Vous allez voir des visages souriants à l’écran."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Your job is to determine if the face has a <b>short</b> or a <b>long</b> mouth.",
                                "fr": "Votre objectif est de déterminer si le sourire est <b>COURT</b> ou <b>LONG</b>."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "This will be hard because they look very similar!",
                                "fr": "Regardez attentivement car le sourire n''apparaît que brièvement!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to practice",
                                "fr": "Cliquez \\"NEXT\\" pour continuer"
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
                        "en": "Practice Round",
                        "fr": "Pratique"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Let''s practice!",
                                "fr": "Vous aurez maintenant la chance de vous pratiquer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Put your index fingers in position.",
                                "fr": "Mettez vos index en position."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will not have much time - the smiley faces will flash on the screen very quickly!",
                                "fr": "Vous aurez très peu de temps pour répondre, alors soyez prêts!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You must press \\"Z\\" if it is a <b>short</b> mouth, or \\"M\\" if it is a <b>long</b> mouth",
                                "fr": "Vous devez appuyer sur \\"Z\\" si le sourire est <b>COURT</b>, ou \\"M\\" si le sourire est <b>LONG</b>."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this practice, you will be shown the type of face (short or long) as a guide",
                                "fr": "Dans cette pratique, le type de visage (court ou long) vous sera indiqué comme guide."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen",
                                "fr": "Le jeu se lancera en plein écran."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready to start the practice round",
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
                "componentName": "SMILEYFACECOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "showHint": true,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationNoFacePresented": 500,
                    "durationStimulusPresented": 100,
                    "numShortFaces": 5,
                    "facesMoreRewardedPercentage": 100,
                    "numLongFaces": 5,
                    "facesLessRewardedPercentage": 100,
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
                        "en": "Practice Round",
                        "fr": "Pratique"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Let''s practice one more time!",
                                "fr": "Pratiquons encore une fois!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Put your index fingers in position.",
                                "fr": "Mettez vos index en position."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will not have much time - the smiley faces will flash on the screen very quickly!",
                                "fr": "Vous aurez très peu de temps pour répondre, alors soyez prêts!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You must press \\"Z\\" if it is a <b>short</b> mouth, or \\"M\\" if it is a <b>long</b> mouth",
                                "fr": "Vous devez appuyer sur \\"Z\\" si le sourire est <b>COURT</b>, ou \\"M\\" si le sourire est <b>LONG</b>."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this practice, you will not be shown the type of face anymore",
                                "fr": "Dans cette pratique, le type de visage ne vous sera plus affiché."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen",
                                "fr": "Le jeu se lancera en plein écran."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready to start the practice round",
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
                "componentName": "SMILEYFACECOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationNoFacePresented": 500,
                    "durationStimulusPresented": 100,
                    "numShortFaces": 5,
                    "facesMoreRewardedPercentage": 100,
                    "numLongFaces": 5,
                    "facesLessRewardedPercentage": 100,
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
                        "fr": "Bravo!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now you are ready for the real game.",
                                "fr": "Maintenant vous êtes prêt pour le jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will get <b>50 points</b> for correct answers <b>but only some of your correct answers will be rewarded</b> with points.",
                                "fr": "Vous gagnerez <b>des points</b> pour des bonnes réponses, <b>mais seulement certaines de vos bonnes réponses seront récompensées</b>."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready to start the game.",
                                "fr": "Cliquez sur \\"START\\" lorsque vous êtes prêt à commencer"
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
                "componentName": "SMILEYFACECOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationStimulusPresented": 100,
                    "durationNoFacePresented": 500,
                    "numShortFaces": 50,
                    "facesMoreRewardedPercentage": 60,
                    "numLongFaces": 50,
                    "facesLessRewardedPercentage": 20,
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
                        "en": "Please take a break. We ask that you keep it under <b>2 minutes</b>.",
                        "fr": "Vous pouvez prendre une pause avant de continuer. Nous vous demandons de limiter la pause à <b>2 minutes</b>."
                    },
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
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
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Get ready!",
                        "fr": "Sois prêt!"
                    },
                    "timerConfig": {
                        "timer": 10000,
                        "showTimer": true,
                        "canSkipTimer": false,
                        "countDown": true
                    },
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        }
                    ]
                }
            },
            {
                "componentName": "SMILEYFACECOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationStimulusPresented": 100,
                    "durationNoFacePresented": 500,
                    "numShortFaces": 50,
                    "facesMoreRewardedPercentage": 60,
                    "numLongFaces": 50,
                    "facesLessRewardedPercentage": 20,
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
                        "en": "Please take a break. We ask that you keep it under <b>2 minutes</b>.",
                        "fr": "Vous pouvez prendre une pause avant de continuer. Nous vous demandons de limiter la pause à <b>2 minutes</b>."
                    },
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
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
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Get ready!",
                        "fr": "Sois prêt!"
                    },
                    "timerConfig": {
                        "timer": 10000,
                        "showTimer": true,
                        "canSkipTimer": false,
                        "countDown": true
                    },
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        }
                    ]
                }
            },
            {
                "componentName": "SMILEYFACECOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationStimulusPresented": 100,
                    "durationNoFacePresented": 500,
                    "numShortFaces": 50,
                    "facesMoreRewardedPercentage": 60,
                    "numLongFaces": 50,
                    "facesLessRewardedPercentage": 20,
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
                            "injection": "cached-string",
                            "cacheKey": "smiley-face-total-score",
                            "textContent": {
                                "en": "You won ??? points",
                                "fr": "Vous avez gagné ??? points"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for your participation.",
                                "fr": "Merci de votre participation."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\""
                            }
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 8;
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
                                "fr": "Votre but est d’identifier lorsque le triangle apparaît."
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
                    "title": "Welcome to the Everyday Activities Game",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "We are trying to understand how people fill their days with activities."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "In this task we will ask you about activities that you may do in your everyday life."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "There are two parts to the task: <br> 1) Answering questions about different activities <br> 2) Indicating your preference between different activities. <br> You will also complete some questionnaires at the end."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Please note that Part 1 is the longest and takes around 40 minutes. The rest is much shorter, and the entire experiment will last from 1 hour to 1 hour and 20 minutess."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click NEXT to continue"
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
                    "title": "COVID-19 Disclaimer",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "We recognize that what you currently do in your everyday life may be impacted by the COVID-19 pandemic."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "As a result, you may not currently be participating in some of the activities that we will ask you about."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "As much as possible, please try to picture yourself doing the activities under normal (pre-pandemic circumstances)."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click NEXT to continue"
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
                    "title": "Everyday Activities Game - Part 1",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Please read the following instructions carefully."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "We will ask you a series of questions about how you feel about different activities."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will have to provide your response using your mouse."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click NEXT to continue"
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
                    "title": "Let’s walk through an example",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Activity: Bring the car to the mechanic"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will be asked: How much you look forward to the outcome of it? How mentally effortful does this activity feel to you? "
                        },
                        {
                            "sectionType": "text",
                            "textContent": "We understand that this may or may not apply to you (perhaps you don’t currently own a car), but we ask that you try to picture yourself doing each activity so that you can answer the questions."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click START to practice"
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
                                "activity": "Bring the car to the mechanic",
                                "type": "DoSomething",
                                "questions": [
                                    {
                                        "question": "How much do you look forward to the outcome of this activity?",
                                        "legend": ["Not at all", "Very Much"]
                                    },
                                    {
                                        "question": "How mentally effortful does this activity feel to you?",
                                        "legend": ["Not at all", "Very effortful"]
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
                            "textContent": "Now you are ready to start."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "We will show you a total of 26 activities and ask you a series of questions about each activity."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Please take a moment to picture yourself doing each activity before answering the questions."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click START when you are ready"
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
                            "textContent": "Thank you for completing Part 1 of the game!"
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
                    "title": "Everyday Activities Game - Part 2",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Please read the following instructions carefully."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "For this part of the task, you will be asked to choose between two different activities."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Your job is to <b>imagine yourself faced with this choice in your everyday life, and to indicate which activity you would choose.</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click NEXT for an example"
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
                            "textContent": "For example:"
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/everydaychoice-new/choice-example.PNG"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "We ask that you try to picture the choice you would make in real life, even if some of the choices may not be ones you have ever been faced with."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Tell us: <b>which activity would you MOST LIKELY CHOOSE TO DO?</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click START to practice"
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
                                "firstActivity": "Bring the car to the mechanic",
                                "secondActivity": "Dust your bookshelves"
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
                            "textContent": "You finished the practice!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Now, please picture yourself doing the activity for each of the following activities, and rate which activity you would MOST LIKELY spend time doing."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click START when you are ready"
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
                            "textContent": "Hooray! You have finished the Everyday Activities Game. We appreciate your time and effort in helping with our research."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Before you go, you will complete some short questionnaires."
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
-- DEMOGRAPHICS QUESTIONNAIRE
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Demographics Questionnaire",
    description = "Demographics questionnaire without SES questions",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title":"Questionnaire",
                    "questions":[
                        {
                            "questionType":"input",
                            "title":"What is your age (in years)?",
                            "validation":{
                                "required":true,
                                "isNumeric":true,
                                "min":18
                            },
                            "key":"age"
                        },
                        {
                            "questionType":"multipleChoiceSelect",
                            "allowMultipleSelections": true,
                            "title":"What sex were you assigned at birth?",
                            "validation":{
                                "required":true
                            },
                            "key":"sex",
                            "multipleChoiceOptions":[
                                {
                                "label":"Female",
                                "value":"female"
                                },
                                {
                                "label":"Male",
                                "value":"male"
                                }
                            ]
                        },
                        {
                            "questionType":"multipleChoiceSelect",
                            "title":"How do you describe yourself?",
                            "key":"selfIdentification",
                            "multipleChoiceOptions":[
                                {
                                "label":"Female",
                                "value":"female"
                                },
                                {
                                "label":"Male",
                                "value":"male"
                                },
                                {
                                "label":"Transgender",
                                "value":"transgender"
                                },
                                {
                                "label":"Do not identify as female, male, or transgender",
                                "value":"none"
                                }
                            ],
                            "validation":{
                                "required":true
                            }
                        },
                        {
                            "questionType":"input",
                            "key":"yearsOfEducation",
                            "title":"How many years of education do you have (completing high school equals 12 years)?",
                            "validation":{
                                "isNumeric":true,
                                "required":true
                            }
                        },
                        {
                            "questionType":"multipleChoiceSelect",
                            "key":"hasNeuroConditions",
                            "title":"Do you have any of the following neurological conditions: neurodegenerative disorder (e.g. Parkinson''s or Alzheimer''s), seizures/epilepsy, brain tumor, stroke?",
                            "multipleChoiceOptions":[
                                {
                                "label":"Yes",
                                "value":"yes"
                                },
                                {
                                "label":"No",
                                "value":"no"
                                }
                            ],
                            "validation":{
                                "required":true
                            }
                        },
                        {
                            "questionType":"multipleChoiceSelect",
                            "key":"hasPsychConditions",
                            "title":"Do you have any of the following psychiatric conditions: currently active major depression, bipolar disorder, schizophrenia?",
                            "multipleChoiceOptions":[
                                {
                                "label":"Yes",
                                "value":"yes"
                                },
                                {
                                "label":"No",
                                "value":"no"
                                }
                            ],
                            "validation":{
                                "required":true
                            }
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 11;
-- CORSI
UPDATE tasks set
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Corsi",
    description = "This task is a 3-9 block corsi task with 2 trials per level. The task ends when a participant has responded inaccurately for an entire level.",
    external_url = "https://run.pavlovia.org/Sharp_lab/corsi/html",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/corsi/html"
                }
            }
        ]
    }'
WHERE id = 12;
-- STRESS CLINICAL
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "CONSENT",
    name = "Stress Clinical",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "CONSENT",
                "componentConfig": {
                    "imgPath": "../../../assets/images/consent/consentOrgs.png",
                    "title": {
                        "en": "BEFORE YOU CAN PROCEED YOU MUST READ THE FOLLOWING CONSENT FORM",
                        "fr": "AVANT DE PROCÉDER VOUS DEVEZ LIRE CE FORMULAIRE DE CONSENTEMENT"
                    },
                    "summary": [
                        {
                            "caption": {
                                "en": "Study title:",
                                "fr": "Nom de l''étude:"
                            },
                            "words": [
                                {
                                    "en": "A pilot study on mood and cognition in Parkinson''s disease",
                                    "fr": "La cognition et l''humeur dans la maladie de Parkinson : une étude pilote"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Principal investigator:",
                                "fr": "Chercheur responsable du projet de recherche:"
                            },
                            "words": [
                                {
                                    "en": "Madeleine Sharp MD MSc, Department of Neurology and Neurosurgery",
                                    "fr": "Madeleine Sharp MD MSc, Département de Neurologie et Neurochirurgie, Université McGill"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Sponsor:",
                                "fr": "Commanditaire"
                            },
                            "words": [
                                {
                                    "en": "internal",
                                    "fr": "interne"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Protocol:",
                                "fr": "Protocole"
                            },
                            "words": [
                                {
                                    "en": "2020-6116, version 3",
                                    "fr": "2020-6116, version 3"
                                }
                            ]
                        }
                    ],
                    "body": [
                        {
                            "caption": "",
                            "words": [
                                {
                                    "en": "We are inviting you to take part in this research study because you are either affected by Parkinson’s disease or are interested in participating as a healthy volunteer. Please take the time to read the following information.",
                                    "fr": "Nous vous invitons à prendre à cette recherche parce que vous êtes affecté par la maladie de Parkinson ou parce que vous avez exprimé un intérêt pour la recherche reliée au Parkinson et que vous aimeriez participer en tant que sujet de contrôle. Veuillez prendre le temps de lire l''information suivante."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "STUDY PURPOSE",
                                "fr": "OBJECTIF DU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "Strong emotions are known to influence our cognitive processes, i.e. how we think, how well we concentrate, etc. In Parkinson’s disease, there is some evidence that emotions are processed differently, and that the way the body reacts may also be different. The purpose of this study is to examine the impact of Parkinson’s disease on emotional processing and cognition. For this research study, we will recruit 60 participants with Parkinson’s disease, men and women, aged between 45 and 75, as well as 60 aged matched participants without Parkinson’s disease, and 60 men and women, above age 18 to help develop the testing procedures.",
                                    "fr": "Les émotions fortes au cours d''une vie influencent nos processus cognitifs : la manière dont nous pensons, notre concentration, etc. Il est possible qu''avec la maladie de Parkinson, la façon que le cerveau gère les émotions, et la manière dont le corps réagit à ces expériences pourraient être différentes. Le but de cette étude est d''examiner l''impact de la maladie de Parkinson sur les processus émotifs et la réponse corporelle aux émotions. Pour cette étude, nous recruterons 60 participants avec la maladie de Parkinson, hommes et femmes, âgés entre 45-75 ans, et 60 participants du même âge sans la maladie de Parkinson. De plus, nous recruterons 60 hommes et femmes âgés de plus de 18 ans pour nous aider à développer les procédures de test.."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "WHAT WILL YOU BE ASKED TO DO?",
                                "fr": "QU''AUREZ-VOUS À FAIRE?"
                            },
                            "words": [
                                {
                                    "en": "If you choose to participate you will be asked to:",
                                    "fr": "Si vous choisissez de participer, nous allons vous demander de:"
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "1. &nbsp;&nbsp;&nbsp;&nbsp; Provide basic information about your demographics and your health (age, sex, education, medication use, history of neurological and psychiatric disorders).",
                                    "fr": "1. &nbsp;&nbsp;&nbsp;&nbsp; Nous fournir des informations démographiques et sur votre santé (âge, sexe, éducation, médicaments, antécédents de troubles psychiatriques et neurologiques), et, le cas échéant, sur votre maladie de Parkinson (durée, principaux symptômes moteurs et cognitifs)."
                                },
                                {
                                    "en": "2. &nbsp;&nbsp;&nbsp;&nbsp; Complete a combination of short ‘brain games’ and questionnaires, designed to examine different aspects of cognition, where you will be required to use the keys of your keyboard to provide responses.",
                                    "fr": "2. &nbsp;&nbsp;&nbsp;&nbsp; Compléter des questionnaires à propos de votre humeur et votre cognition et jouer à deux jeux conçus pour investiguer les différents aspects de la cognition."
                                },
                                {
                                    "en": "This will take under 2 hours",
                                    "indent": 2,
                                    "fr": "Ceci prendra moins de 2 heures."
                                },
                                {
                                    "en": "3. &nbsp;&nbsp;&nbsp;&nbsp; In some cases, we will also measure your motor function by performing standard neurological assessments of tremor. These assessments will be videotaped in order to be reviewed by the study doctor.",
                                    "fr": "3. &nbsp;&nbsp;&nbsp;&nbsp; Dans certains cas, nous mesurerons votre fonction motrice en performant des tests neurologiques standards pour évaluer le tremblement. Cette évaluation sera enregistrée par vidéo pour être évaluée par le médecin responsable."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "In addition, we will ask you whether you are interested in receiving offers to participate in other online research. If you are, you can check the appropriate box at the end of this consent form.",
                                    "fr": "De plus, nous vous demanderons si vous êtes intéressé à recevoir des offres pour participer à d''autre études de recherche. Si vous l''êtes, vous n''avez qu''à cocher la boîte à la fin de ce formulaire."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "You can choose to terminate your participation at any time.",
                                    "fr": "Vous pouvez choisir de mettre fin à votre participation à n''importe quel moment."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "POTENTIAL RISKS AND CONFIDENTIALITY",
                                "fr": "CONFIDENTIALITÉ"
                            },
                            "words": [
                                {
                                    "en": "This study involves collecting and storing personal, identifiable information about you, so there is a potential for invasion of privacy or breach in confidentiality. To minimize these risks, your email will be stored in a password-protected file separately from your responses on the questionnaires and brain games. Your information will be assigned a unique code number and stored in a secure manner on a McGill University server, protected by standard physical and digital security measures, and will be stored for 20 years. No personal, identifiable information will be shared outside the study team. For monitoring, control, and security your study file may be examined by representatives of the institution or the Research Ethics Board. All these individuals and organizations adhere to policies on confidentiality.",
                                    "fr": "Cette étude implique la collection et le stockage de données personnelles et identifiables, il existe donc un risque d''atteinte à la vie privée ou un bris de confidentialité.  Pour minimiser ces risques, votre adresse courriel sera sauvegardée séparément de vos réponses aux questionnaires et aux jeux, dans un fichier protégé par un mot de passe. Vos données de recherche seront identifiées par un code unique et seront sauvegardées de manière sécuritaire sur le serveur de l''Université McGill, protégées par les mesures de sécurité physique et numérique standards, et seront sauvegardées pendant 20 ans. Aucune information personnelle ou identifiable ne sera partagée en dehors de l''équipe du Dr. Sharp. À des fins de surveillance, de contrôle, de protection et de sécurité, votre dossier de recherche pourrait être consulté par des représentants de l''établissement ou du comité d''éthique de la recherche. Ces personnes et ces organismes adhèrent à une politique de confidentialité."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "Your email address will be kept for the duration of the study so that we may enter it in the draw. It will be kept separate from all other information collected from you. If you choose to agree below, we will also use your email address to contact you about similar research opportunities, in which case it will be saved securely for 10 years. Your email address will not be used for any other purposes nor shared with anyone.",
                                    "fr": "Votre adresse courriel sera conservée pendant toute la durée de l''étude afin que nous puissions vous inclure dans le concours, puis sera supprimée. Elle sera conservée séparément de toutes les autres informations recueillies auprès de vous. Si vous choisissez d''accepter ci-dessous, nous utiliserons également votre adresse courriel pour vous contacter au sujet d''opportunités de recherche similaires ; dans ce cas elle sera sauvegardée en toute sécurité pendant 10 ans. Votre courriel ne sera pas utilisé à d''autres fins, ni partagé avec quiconque."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "BENEFITS",
                                "fr": "AVANTAGES ASSOCIÉS AU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "There is no direct benefit to you for participating in this research.  However, we hope that the study results will contribute to the advancement of scientific knowledge in this field.",
                                    "fr": "Vous ne retirerez pas de bénéfices de votre participation à ce projet de recherche. Nous espérons que les résultats obtenus contribueront à l''avancement des connaissances scientifiques dans ce domaine."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "POTENTIAL RISKS",
                                "fr": "RISQUES ASSOCIÉS AU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "Despite removal of identifying information and the use of standard security measures to collect and store data, in some circumstances it may be possible to re-identify individuals, however we believe this risk to be very low. There are no anticipated physical risks of participating in this research. You may find the tasks dull or tiring.",
                                    "fr": "Malgré la suppression des informations d''identification et l''utilisation de mesures de sécurité standard pour collecter et sauvegarder les données, il peut être possible, dans certaines circonstances, de réidentifier les individus, mais nous pensons que ce risque est très faible. Nous n''anticipons aucun risque physique associé à votre participation. Vous pourriez trouver les tâches ennuyeuses ou fatigantes."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "VOLUNTARY PARTICIPATION AND THE RIGHT TO WITHDRAW",
                                "fr": "PARTICIPATION VOLONTAIRE ET DROIT DE RETRAIT"
                            },
                            "words": [
                                {
                                    "en": "Your participation in this research project is voluntary. Therefore, you may refuse to participate. You may also withdraw from the project at any time, without giving any reason, though you may also email <a href=\\"#\\">sharplab.neuro@mcgill.ca</a> to discuss this with us. Your decision will not result in any penalty.",
                                    "fr": "Votre participation à ce projet est volontaire. Vous êtes donc libre de refuser d''y participer.  Vous pouvez également vous retirer de ce projet à n''importe quel moment, sans avoir à donner de raisons, mais vous pouvez également envoyer un courriel à <a href=\\"#\\">sharplab.neuro@mcgill.ca</a> pour en discuter avec nous. Votre décision n''entraînera aucune pénalité."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "If you withdraw from the study, the information already collected for the study will be stored, analyzed and used to ensure the integrity of the study.",
                                    "fr": "Si vous décidez de vous retirer de l''étude, l''information déjà recueillie dans le cadre de ce projet sera néanmoins conservée, analysée ou utilisée pour assurer l''intégrité du projet."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "WILL YOU BE PAID?",
                                "fr": "ALLEZ VOUS ÊTRE PAYÉ?"
                            },
                            "words": [
                                {
                                    "en": "You will receive an amount of $10 per hour for a maximum of $30 per study visit for costs and inconveniences incurred during this research study. If you withdraw from the study or are withdrawn before it is completed, you will receive compensation proportional to the number of visits you have completed.",
                                    "fr": "En guise de compensation pour les frais encourus en raison de votre participation au projet de recherche vous recevrez un montant de 10$ par visite prévue au protocole, pour un montant total de 30$ par visite. Si vous vous retirez du projet (ou s’il est mis fin à votre participation) avant qu’il ne soit complété, la compensation sera proportionnelle à la durée de votre participation."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "CONTACT INFORMATION",
                                "fr": "IDENTIFICATION DES PERSONNES-RESSOURCES"
                            },
                            "words": [
                                {
                                    "en": "If you have questions or if you have a problem you think may be related to your participation in this research study, or if you would like to withdraw, you may communicate with the study researcher, Dr. Madeleine Sharp, or with someone on the research team at the following number Monday to Friday 9h00 to 17h00 EST: (514) 398-5174. You may also reach the study team at <a href=\\"#\\">sharplab.neuro@mcgill.ca</a>.",
                                    "fr": "Si vous avez des questions ou éprouvez des problèmes en lien avec le projet de recherche, ou si vous souhaitez vous en retirer, vous pouvez communiquer avec le médecin responsable ou avec une personne de l''équipe de recherche au numéro suivant du lundi au vendredi de 9h00 à 17h00 : (514) 398-5174. Vous pouvez aussi rejoindre l''équipe de recherche en envoyant un courriel à <a href=\\"#\\">sharplab.neuro@mcgill.ca</a>."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "For any question concerning your rights as a research participant taking part in this study, or if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223.",
                                    "fr": "Pour toute question concernant vos droits en tant que participant à ce projet de recherche ou si vous avez des plaintes ou des commentaires à formuler, vous pouvez communiquer avec Le Commissaire local aux plaintes et à la qualité des services de l''Hôpital Neurologique de Montréal au numéro suivant: (514) 934-1934 ext. 22223."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "OVERVIEW OF ETHICAL ASPECTS OF THE RESEARCH",
                                "fr": "SURVEILLANCE DES ASPECTS ETHIQUES DU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "The McGill University Health Centre Research Ethics Board reviewed this research and is responsible for monitoring the study.",
                                    "fr": "Le comité d''éthique de la recherche du Centre Universitaire de santé McGill a approuvé le projet et en assurera le suivi."
                                }
                            ]
                        }
                    ],
                    "endMessage": {
                        "en": "By clicking \\"Accept\\", you are confirming that you reviewed the information and consent form and that you agree to participate in the study in accordance with the conditions stated above.",
                        "fr": "En cliquant \\"ACCEPTER\\" ci-dessous vous confirmez que vous avez pris connaissance de l''information dans le formulaire de consentement et que vous acceptez de participer aux conditions qui y sont énoncées"
                    },
                    "buttons": {
                        "reject": {
                            "show": true,
                            "text": {
                                "en": "DECLINE",
                                "fr": "DÉCLINER"
                            }
                        },
                        "accept": {
                            "show": true,
                            "text": {
                                "en": "ACCEPT",
                                "fr": "ACCEPTER"
                            }
                        }
                    }
                }
            }
        ]
    }'
WHERE id = 14;
-- STRESS PILOT
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "CONSENT",
    name = "Stress Pilot",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "CONSENT",
                "componentConfig": {
                    "imgPath": "../../../assets/images/consent/consentOrgs.png",
                    "title": "BEFORE YOU CAN PROCEED YOU MUST READ THE FOLLOWING CONSENT FORM",
                    "summary": [
                        {
                            "caption": "Study title:",
                            "words": ["Stress in Parkinson’s disease and its effects on cognition and mood: A pilot study"]
                        },
                        {
                            "caption": "Principal investigator:",
                            "words": ["Madeleine Sharp MD MSc, Department of Neurology and Neurosurgery"]
                        },
                        {
                            "caption": "Sponsor:",
                            "words": ["internal"]
                        },
                        {
                            "caption": "Protocol:",
                            "words": ["2020-6116, version 3"]
                        }
                    ],
                    "secondTitle": ["** You must be over the age of 18 to participate in the following research study. **"],
                    "body": [
                        {
                            "caption": "STUDY PURPOSE",
                            "words": [
                                "In Parkinson’s disease, there is some evidence that emotions are processed differently, and that the way the body reacts may also be different. The purpose of this study is to examine the impact of Parkinson’s disease on emotional processing and the body’s response to emotions. You are being asked to participate in the development phase of this research. We are recruiting a total of 400 men and women over the age of 18 for this phase of the research study."
                            ]
                        },
                        {
                            "caption": "PROCEDURES",
                            "words": [
                                "If you choose to participate you will be asked to:<br><br>",
                                "1. &nbsp;&nbsp; Provide basic information about your demographics (age, sex, education).",
                                "2. &nbsp;&nbsp; Complete questionnaires and two ‘brain games’, designed to examine different aspects of cognition, where you will be required to use the keys of your keyboard to provide responses.",
                                " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This will take under 60 minutes. <br><br>"
                            ]
                        },
                        {
                            "caption": "CONFIDENTIALITY",
                            "words": [
                                "This study does not involve the collection of any personal or identifiable information about you. Nonetheless, your research data will be assigned a unique code number and stored in a secure manner on a McGill University server, protected by standard physical and digital security measures, and will be stored for 20 years. For monitoring, control, and security your study file may be examined by representatives of the institution or the Research Ethics Board. All these individuals and organizations adhere to policies on confidentiality."
                            ]
                        },
                        {
                            "caption": "BENEFITS",
                            "words": ["There is no direct benefit to you for participating in this research."]
                        },
                        {
                            "caption": "POTENTIAL RISKS",
                            "words": [
                                "Despite removal of identifying information and the use of standard security measures to collect and store data, in some circumstances it may be possible to re-identify individuals, however we believe this risk to be very low. There are no anticipated physical risks of participating in this research. You may find the tasks dull or tiring."
                            ]
                        },
                        {
                            "caption": "VOLUNTARY PARTICIPATION AND THE RIGHT TO WITHDRAW",
                            "words": [
                                "Your participation in this research project is voluntary. Therefore, you may refuse to participate or withdraw at any time, and you can do so by simply closing the webpage. If you withdraw from the study, the information already collected for the study will be stored, analyzed and used to ensure the integrity of the study."
                            ]
                        },
                        {
                            "caption": "COMPENSATION",
                            "words": [
                                "If you complete the study, you will be compensated based on a 4$ per 30 minutes of task duration."
                            ]
                        },
                        {
                            "caption": "CONTACT INFORMATION",
                            "words": [
                                "If you have questions or if you have a problem you think may be related to your participation in this research study, or if you would like to withdraw, you may communicate with the study researcher, Dr. Madeleine Sharp, or with someone on the research team at the following number Monday to Friday 9h00 to 17h00 EST: (514) 398-5174. You may also reach the study team at <a href=\\"#\\">sharplab.neuro@mcgill.ca</a>.<br><br>",
                                "For any question concerning your rights as a research participant taking part in this study, or if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223."
                            ]
                        },
                        {
                            "caption": "OVERVIEW OF ETHICAL ASPECTS OF THE RESEARCH",
                            "words": [
                                "The McGill University Health Centre Research Ethics Board reviewed this research and is responsible for monitoring the study."
                            ]
                        }
                    ],
                    "endMessage": "By clicking \\"Accept\\", you are confirming that you reviewed the information and consent form and that you agree to participate in the study in accordance with the conditions stated above.",
                    "buttons": {
                        "reject": {
                            "show": true,
                            "text": "DECLINE"
                        },
                        "accept": {
                            "show": true,
                            "text": "ACCEPT"
                        }
                    }
                }
            }
        ]
    }'
WHERE id = 15;
-- STRESS CLINICAL DEBRIEF
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "CONSENT",
    name = "Stress Clinical Debrief",
    description = "Note: May want to review deleting this and changing it to an info display slide",
    external_url = "",
    config = '{
        "taskconfig": {},
        "metadata": [
            {
                "componentName": "CONSENT",
                "componentConfig": {
                    "imgPath": "../../../assets/images/consent/consentOrgs.png",
                    "title": "DEBRIEFING ABOUT THE DECEPTION USED IN THE STUDY",
                    "body": [
                        {
                            "caption": "Thank you for participating!",
                            "words": [
                                "Earlier, we informed you that our study was about measuring aspect of cognition. While this is true, we were specifically interested in <b>the effects of stress on cognition</b>. As a result, half of the participants in the study saw unpleasant videos and completed a very stressful math game in order to create a short-term stressful experience."
                            ]
                        },
                        {
                            "caption": "",
                            "words": [
                                "In order to properly study this, <b>it was required that we deceive you about the actual nature of the study</b>. We could not warn you that you would experience stress because knowing this in advance would have minimized the experience of the stress."
                            ]
                        },
                        {
                            "caption": "",
                            "words": [
                                "The specific deception elements in this study included:",
                                "&nbsp;&nbsp;&nbsp;&nbsp 1) Not telling you in the consent form that this study was about the effects of stress on cognition.",
                                "&nbsp;&nbsp;&nbsp;&nbsp 2) If you were part of the stress group:",
                                "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a. Telling you you were doing badly on the math game no matter your actual performance.",
                                "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b. Telling you you had to maintain a certain performance level which was not true. In fact, we are not at all interested in performance on this game. This was only to cause stress.",
                                "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c. Watching unpleasant videos without warning."
                            ]
                        },
                        {
                            "caption": "",
                            "words": [
                                "Given the ubiquitous nature of stress, it is critical that we study it in order to understand the range of consequences it can hold for brain health."
                            ]
                        },
                        {
                            "caption": "",
                            "words": [
                                "We followed standard research procedures commonly used to cause stress in the research setting. <b>The stress was meant to be relatively mild and very short-term</b>. If you still feel lingering effects of this stress, or have any questions about the study or your rights as a participant, please contact us: <b>Madeleine Sharp, Department of Neurology and Neurosurgery, Montréal Neurological Institute, McGill University</b> <a href=\\"#\\">madeleine.sharp@mcgill.ca</a> or <a href=\\"#\\">sharplab.neuro@mcgill.ca</a>"
                            ]
                        },
                        {
                            "caption": "",
                            "words": [
                                "Please also consider the following mental health resource:",
                                "Mental Health Services Locator http://store.samhsa.gov/mhlocator"
                            ]
                        },
                        {
                            "caption": "",
                            "words": [
                                "Finally, if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223."
                            ]
                        }
                    ],
                    "endMessage": "Thank you again for your participation!",
                    "buttons": {
                        "reject": {
                            "show": false,
                            "text": "DECLINE"
                        },
                        "accept": {
                            "show": true,
                            "text": "ACKNOWLEDGE"
                        }
                    }
                }
            }
        ]
    }'
WHERE id = 16;
-- WEB PHENO CLINICAL
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "CONSENT",
    name = "Web Pheno Clinical",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "CONSENT",
                "componentConfig": {
                    "imgPath": "../../../assets/images/consent/consentOrgs.png",
                    "title": {
                        "en": "BEFORE YOU CAN PROCEED YOU MUST READ THE FOLLOWING CONSENT FORM",
                        "fr": "AVANT DE PROCÉDER VOUS DEVEZ LIRE CE FORMULAIRE DE CONSENTEMENT"
                    },
                    "summary": [
                        {
                            "caption": {
                                "en": "Study title:",
                                "fr": "Nom de l''étude:"
                            },
                            "words": [
                                {
                                    "en": "Deep cognitive endophenotyping of Parkinson’s disease: A platform development and pilot study",
                                    "fr": "Endophénotypage cognitif de la maladie de Parkinson: développement d''une plateforme et étude pilote"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Principal investigator:",
                                "fr": "Chercheur responsable du projet de recherche:"
                            },
                            "words": [
                                {
                                    "en": "Madeleine Sharp MD MSc, Department of Neurology and Neurosurgery",
                                    "fr": "Madeleine Sharp MD MSc, Département de Neurologie et Neurochirurgie, Université McGill"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Sponsor:",
                                "fr": "Commanditaire:"
                            },
                            "words": [
                                {
                                    "en": "Parkinson Foundation",
                                    "fr": "Parkinson Foundation"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Protocol:",
                                "fr": "Protocole:"
                            },
                            "words": [
                                {
                                    "en": "2020-6045, version 2",
                                    "fr": "2020-6045, version 2"
                                }
                            ]
                        }
                    ],
                    "body": [
                        {
                            "caption": "",
                            "words": [
                                {
                                    "en": "We are inviting you to take part in this research study because you are either affected by Parkinson’s disease, have REM-sleep behaviour disorder, or are interested in participating as a healthy volunteer. Please take the time to read the following information.",
                                    "fr": "Nous vous invitons à prendre à cette recherche parce que vous êtes affecté par la maladie de Parkinson, vous avez un trouble comportemental en sommeil paradoxal, ou parce que vous avez exprimé un intérêt pour la recherche reliée au Parkinson et que vous aimeriez participer en tant que sujet de contrôle. Veuillez prendre le temps de lire l''information suivante."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "STUDY PURPOSE",
                                "fr": "OBJECTIF DU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "Cognitive symptoms in Parkinson’s disease vary immensely. Some patients develop significant apathy or difficulty multi-tasking, others take up boxing or plan local support groups. Current tools used to identify symptoms fall short of being able to help us understand this variability because they don’t provide clues about the underlying brain mechanisms. The purpose of this study is to use computer tests of cognitive function, inspired by the tests used in laboratory animals, to arrive at a better understanding of the mechanisms underlying cognitive symptoms in Parkinson’s disease. For this research study, we will recruit a total of 1000 participants, men and women, aged between 50 and 90.",
                                    "fr": "Les symptômes cognitifs associés à la maladie de Parkinson varient énormément. Certains patients développent une apathie significative ou des problèmes de concentration tandis que d''autres s''adonnent à la boxe ou planifient des groupes de soutien locaux. Présentement, les outils disponibles pour identifier ces symptômes ne permettent pas de comprendre leur mécanisme au niveau du cerveau. Cette étude vise à utiliser des tests informatiques de la fonction cognitive pour mieux comprendre les mécanismes de dysfonctionnement cognitif chez les patients atteints de la maladie de Parkinson. Pour cette étude, nous recrutons un total de 1000 participants, hommes et femmes, âgés entre 50 et 90 ans."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "WHAT WILL YOU BE ASKED TO DO?",
                                "fr": "QU''AUREZ-VOUS À FAIRE?"
                            },
                            "words": [
                                {
                                    "en": "If you choose to participate you will be asked to:",
                                    "fr": "Si vous choisissez de participer, nous allons vous demander de:"
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "1. &nbsp;&nbsp;&nbsp;&nbsp; Create a username (your email address) and password of your choice",
                                    "fr": "1. &nbsp;&nbsp;&nbsp;&nbsp; Créer un nom d''utilisateur (votre adresse courriel) et un mot de passe de votre choix."
                                },
                                {
                                    "en": "2. &nbsp;&nbsp;&nbsp;&nbsp; Provide basic information about your demographics and your health (age, sex, education, medication use, history of neurological and psychiatric disorders), and, if applicable, about your Parkinson’s disease (duration, main motor and cognitive symptoms).",
                                    "fr": "2. &nbsp;&nbsp;&nbsp;&nbsp; Nous fournir des informations démographiques et sur votre santé (âge, sexe, éducation, médicaments, antécédents de troubles psychiatriques et neurologiques), et, le cas échéant, sur votre maladie de Parkinson (durée, principaux symptômes moteurs et cognitifs)."
                                },
                                {
                                    "en": "3. &nbsp;&nbsp;&nbsp;&nbsp; Complete seven questionnaires about your mood and cognition, and play four ‘brain games’, designed to examine different aspects of cognition.",
                                    "fr": "3. &nbsp;&nbsp;&nbsp;&nbsp; Compléter sept questionnaires à propos de votre humeur et votre cognition et jouer à quatre jeux conçus pour investiguer les différents aspects de la cognition."
                                },
                                {
                                    "en": "This will take under 2 hours and you will have the opportunity to pause part-way through and to return to it later.",
                                    "indent": 2,
                                    "fr": "Ceci prendra moins de 2 heures et vous aurez l''opportunité de prendre une pause et d''y revenir plus tard."
                                },
                                {
                                    "en": "4. &nbsp;&nbsp;&nbsp;&nbsp; Every year, for a maximum of 5 years, you will receive an email from the study website asking you to participate again. At these follow-up sessions, testing will be similar but not identical to the first session.",
                                    "fr": "4. &nbsp;&nbsp;&nbsp;&nbsp; Chaque année, pour un maximum de 5 ans, vous recevrez un courriel du site web de l''étude vous demandant de participer à nouveau. Lors de ces suivis, les tests seront similaires mais pas identiques à la première session."
                                },
                                {
                                    "en": "In addition, we will ask you whether you are interested in receiving offers to participate in other online research. If you are, you can check the appropriate box at the end of this consent form.",
                                    "indent": 2,
                                    "fr": "De plus, nous vous demanderons si vous êtes intéressés à recevoir des offres pour participer à d''autre études de recherche. Si vous l''êtes, vous n''avez qu''à cocher la boîte à la fin de ce formulaire."
                                },
                                {
                                    "en": "You can choose to terminate your participation at any time and after any number of visits.",
                                    "indent": 2,
                                    "fr": "Vous pouvez choisir de mettre fin à votre participation à n''importe quel moment et après n''importe quel nombre de visites."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "POTENTIAL RISKS AND CONFIDENTIALITY",
                                "fr": "CONFIDENTIALITÉ"
                            },
                            "words": [
                                {
                                    "en": "This study involves collecting and storing personal, identifiable information about you, so there is a potential for invasion of privacy or breach in confidentiality. To minimize these risks, your email will be stored in a password-protected file separately from your responses on the questionnaires and brain games. Your information will be assigned a unique code number and stored in a secure manner on a McGill University server, protected by standard physical and digital security measures, and will be stored for 20 years. No personal, identifiable information will be shared outside the study team. For monitoring, control, and security your study file may be examined by representatives of the institution or the Research Ethics Board. All these individuals and organizations adhere to policies on confidentiality.",
                                    "fr": "Cette étude implique la collection et le stockage de données personnelles et identifiables, il existe donc un risque d''atteinte à la vie privée ou un bris de confidentialité.  Pour minimiser ces risques, votre adresse courriel sera sauvegardée séparément de vos réponses aux questionnaires et aux jeux, dans un fichier protégé par un mot de passe. Vos données de recherche seront identifiées par un code unique et seront sauvegardées de manière sécuritaire sur le serveur de l''Université McGill, protégées par les mesures de sécurité physique et numérique standards, et seront sauvegardées pendant 20 ans. Aucune information personnelle ou identifiable ne sera partagée en dehors de l''équipe du Dr. Sharp. À des fins de surveillance, de contrôle, de protection et de sécurité, votre dossier de recherche pourrait être consulté par des représentants de l''établissement ou du comité d''éthique de la recherche. Ces personnes et ces organismes adhèrent à une politique de confidentialité."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "Your email address will be kept for the duration of the study so that we may contact you for the follow-up visits, and will then be deleted. It will be kept separate from all other information collected from you. If you choose to agree below, we will also use your email address to provide updates about the study findings (no more than twice per year) and to contact you about similar research opportunities, in which case it will be saved securely for 10 years. Your email address will not be used for any other purposes or nor shared with anyone.",
                                    "fr": "Votre adresse courriel sera conservée pendant toute la durée de l''étude afin que nous puissions vous contacter pour les visites de suivi, puis sera supprimée. Elle sera conservée séparément de toutes les autres informations recueillies auprès de vous. So vous choisissez d''accepter ci-dessous, nous utiliserons également votre adresse courriel pour fournir des mises à jour (pas plus de deux fois par an) et pour vous contacter au sujet d''opportunités de recherche similaires, auquel cas elle sera sauvegardée en toute sécurité pendant 10 ans. Votre courriel ne sera pas utilisé à d''autres fins, ni partagé avec quiconque."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "BENEFITS",
                                "fr": "AVANTAGES ASSOCIÉS AU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "There is no direct benefit to you for participating in this research. However, we hope that the study results will contribute to the advancement of scientific knowledge in this field and help us find better treatments for cognitive changes experienced by Parkinson’s patients.",
                                    "fr": "Vous ne retirerez pas de bénéfices de votre participation à ce projet de recherche. Nous espérons que les résultats obtenus contribueront à l''avancement des connaissances scientifiques dans ce domaine et au développement de meilleurs traitements pour les patients."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "POTENTIAL RISKS",
                                "fr": "RISQUES ASSOCIÉS AU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "Despite removal of identifying information and the use of standard security measures to collect and store data, in some circumstances it may be possible to re-identify individuals, however we believe this risk to be very low. There are no anticipated physical risks of participating in this research. You may find the tasks dull or tiring.",
                                    "fr": "Malgré la suppression des informations d''identification et l''utilisation de mesures de sécurité standard pour collecter et sauvegarder les données, il peut être possible, dans certaines circonstances, de réidentifier les individus, mais nous pensons que ce risque est très faible. Nous n''anticipons aucun risque physique associé à votre participation. Vous pourriez trouver les tâches ennuyeuses ou fatigantes."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "VOLUNTARY PARTICIPATION AND THE RIGHT TO WITHDRAW",
                                "fr": "PARTICIPATION VOLONTAIRE ET DROIT DE RETRAIT"
                            },
                            "words": [
                                {
                                    "en": "Your participation in this research project is voluntary. Therefore, you may refuse to participate. You may also withdraw from the project at any time, without giving any reason, though you may also email sharplab.neuro@mcgill.ca to discuss this with us. Your decision will not result in any penalty.",
                                    "fr": "Votre participation à ce projet est volontaire. Vous êtes donc libre de refuser d''y participer.  Vous pouvez également vous retirer de ce projet à n''importe quel moment, sans avoir à donner de raisons, mais vous pouvez également envoyer un courriel à sharplab.neuro@mcgill.ca pour en discuter avec nous. Votre décision n''entraînera aucune pénalité."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "If you withdraw from the study, the information already collected for the study will be stored, analyzed and used to ensure the integrity of the study.",
                                    "fr": "Si vous décidez de vous retirer de l''étude, l''information déjà recueillie dans le cadre de ce projet sera néanmoins conservée, analysée ou utilisée pour assurer l''intégrité du projet."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "WILL YOU BE PAID?",
                                "fr": "ALLEZ VOUS ÊTRE PAYÉ?"
                            },
                            "words": [
                                {
                                    "en": "You will be entered to win one of ten $100 Amazon e-gift cards.",
                                    "fr": "En participant vous courrez la chance de gagner l''une des dix cartes-cadeaux électroniques Amazon de $100."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "CONTACT INFORMATION",
                                "fr": "SURVEILLANCE DES ASPECTS ETHIQUES DU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "If you have questions or if you have a problem you think may be related to your participation in this research study, or if you would like to withdraw, you may communicate with the study researcher, Dr. Madeleine Sharp, or with someone on the research team at the following number Monday to Friday 9h00 to 17h00 EST: (514) 398-5174. You may also reach the study team at sharplab.neuro@mcgill.ca.",
                                    "fr": "Si vous avez des questions ou éprouvez des problèmes en lien avec le projet de recherche, ou si vous souhaitez vous en retirer, vous pouvez communiquer avec le médecin responsable ou avec une personne de l''équipe de recherche au numéro suivant du lundi au vendredi de 9h00 à 17h00 : (514) 398-5174. Vous pouvez aussi rejoindre l''équipe de recherche en envoyant un courriel à sharplab.neuro@mcgill.ca."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "For any question concerning your rights as a research participant taking part in this study, or if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223.",
                                    "fr": "Pour toute question concernant vos droits en tant que participant à ce projet de recherche ou si vous avez des plaintes ou des commentaires à formuler, vous pouvez communiquer avec Le Commissaire local aux plaintes et à la qualité des services de l''Hôpital Neurologique de Montréal au numéro suivant : (514) 934-1934 ext. 22223."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "OVERVIEW OF ETHICAL ASPECTS OF THE RESEARCH",
                                "fr": "SURVEILLANCE DES ASPECTS ETHIQUES DU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "The McGill University Health Centre Research Ethics Board reviewed this research and is responsible for monitoring the study.",
                                    "fr": "Le comité d''éthique de la recherche du Centre Universitaire de santé McGill a approuvé le projet et en assurera le suivi."
                                }
                            ]
                        }
                    ],
                    "endMessage": {
                        "en": "By clicking \\"Accept\\", you are confirming that you reviewed the information and consent form and that you agree to participate in the study in accordance with the conditions stated above.",
                        "fr": "En cochant la boîte \\"Accepter\\" ci-dessous vous confirmez que vous avez pris connaissance de l''information dans le formulaire de consentement et que vous acceptez de participer aux conditions qui y sont énoncées."
                    },
                    "buttons": {
                        "reject": {
                            "show": true,
                            "text": {
                                "en": "DECLINE",
                                "fr": "DÉCLINER"
                            }
                        },
                        "accept": {
                            "show": true,
                            "text": {
                                "en": "ACCEPT",
                                "fr": "ACCEPTER"
                            }
                        }
                    }
                }
            }
        ]
    }' 
WHERE id = 18;
-- WEB PHENO PILOT
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "CONSENT",
    name = "Web Pheno Pilot",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "CONSENT",
                "componentConfig": {
                    "imgPath": "../../../assets/images/consent/consentOrgs.png",
                    "title": "BEFORE YOU CAN PROCEED YOU MUST READ THE FOLLOWING CONSENT FORM",
                    "summary": [
                        {
                            "caption": "Study title:",
                            "words": ["Deep cognitive endophenotyping of Parkinson’s disease: A platform development and pilot study"]
                        },
                        {
                            "caption": "Principal investigator:",
                            "words": ["Madeleine Sharp MD MSc, Department of Neurology and Neurosurgery"]
                        },
                        {
                            "caption": "Sponsor:",
                            "words": ["Parkinson Foundation"]
                        },
                        {
                            "caption": "Protocol:",
                            "words": ["2020-6045, version 2"]
                        }
                    ],
                    "secondTitle": ["** You must be over the age of 18 to participate in the following research study. **"],
                    "body": [
                        {
                            "caption": "STUDY PURPOSE",
                            "words": [
                                "This study aims to use computer tests of cognitive function to identify mechanisms of cognitive dysfunction in patients with Parkinson’s disease. You are being asked to participate in the development phase of this research. We are recruiting a total of 2000 men and women over the age of 18 for this phase of the research study."
                            ]
                        },
                        {
                            "caption": "PROCEDURES",
                            "words": [
                                "If you choose to participate you will be asked to:<br><br>",
                                "1. Provide basic information about your demographics and your health (age, sex, education, medication use, history of neurological and psychiatric disorders).",
                                "2. Complete a combination of short ‘brain games’ and questionnaires, designed to examine different aspects of cognition, where you will be required to use the keys of your keyboard to provide responses.",
                                "This will take under 60 minutes"
                            ]
                        },
                        {
                            "caption": "CONFIDENTIALITY",
                            "words": [
                                "This study does not involve the collection of any personal or identifiable information about you. Nonetheless, your research data will be assigned a unique code number and stored in a secure manner on a McGill University server, protected by standard physical and digital security measures, and will be stored for 20 years. For monitoring, control, and security your study file may be examined by representatives of the institution or the Research Ethics Board. All these individuals and organizations adhere to policies on confidentiality."
                            ]
                        },
                        {
                            "caption": "BENEFITS",
                            "words": ["There is no direct benefit to you for participating in this research."]
                        },
                        {
                            "caption": "POTENTIAL RISKS",
                            "words": [
                                "Despite removal of identifying information and the use of standard security measures to collect and store data, in some circumstances it may be possible to re-identify individuals, however we believe this risk to be very low. There are no anticipated physical risks of participating in this research. You may find the tasks dull or tiring."
                            ]
                        },
                        {
                            "caption": "VOLUNTARY PARTICIPATION AND THE RIGHT TO WITHDRAW",
                            "words": [
                                "Your participation in this research project is voluntary. Therefore, you may refuse to participate or withdraw at any time, and you can do so by simply closing the webpage. If you withdraw from the study, the information already collected for the study will be stored, analyzed and used to ensure the integrity of the study."
                            ]
                        },
                        {
                            "caption": "COMPENSATION",
                            "words": [
                                "If you complete the study, you will be compensated based on a 4$ per 30 minutes of task duration."
                            ]
                        },
                        {
                            "caption": "CONTACT INFORMATION",
                            "words": [
                                "If you have questions or if you have a problem you think may be related to your participation in this research study, or if you would like to withdraw, you may communicate with the study researcher, Dr. Madeleine Sharp, or with someone on the research team at the following number Monday to Friday 9h00 to 17h00 EST: (514) 398-5174. You may also reach the study team at sharplab.neuro@mcgill.ca.",
                                "For any question concerning your rights as a research participant taking part in this study, or if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223."
                            ]
                        },
                        {
                            "caption": "OVERVIEW OF ETHICAL ASPECTS OF THE RESEARCH",
                            "words": [
                                "The McGill University Health Centre Research Ethics Board reviewed this research and is responsible for monitoring the study."
                            ]
                        }
                    ],
                    "endMessage": "By clicking \\"Accept\\", you are confirming that you reviewed the information and consent form and that you agree to participate in the study in accordance with the conditions stated above.",
                    "buttons": {
                        "reject": {
                            "show": true,
                            "text": "DECLINE"
                        },
                        "accept": {
                            "show": true,
                            "text": "ACCEPT"
                        }
                    }
                }
            }
        ]
    }'
WHERE id = 19;
-- APATHY AES
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Apathy AES",
    description = "Apathy Evaluation Scale",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Questionnaire"
                    },
                    "questions":[
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "Instructions: For each statement, select the answer that best describes your thoughts, feelings, and activity in the past 4 weeks.",
                                "fr": "Instructions: Pour chacun des énoncés suivants mettez un X dans la case qui décrit le mieux vos pensées, sentiments et activités au cours des 4 dernières semaines."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am interested in things.",
                                "fr": "Je m’intéresse à des choses."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I am interested in things",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I get things done during the day.",
                                "fr": "J’accompli des choses durant la journée."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I get things done during the day",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Getting things started on my own is important to me.",
                                "fr": "Démarrer les choses par moi-même est important pour moi."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Getting things started on my own is important to me",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am interested in having new experiences.",
                                "fr": "Avoir de nouvelles expériences m’intéresse."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am interested in having new experiences",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am interested in learning new things.",
                                "fr": "Apprendre de nouvelles choses m’intéresse."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am interested in learning new things",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I put little effort into anything.",
                                "fr": "Je mets peu d’effort dans tout."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I put little effort into anything",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I approach life with intensity.",
                                "fr": "J’approche la vie avec intensité."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I approach life with intensity",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Seeing a job through to the end is important to me.",
                                "fr": "C’est important pour moi de voir une tâche jusqu’à sa fin."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Seeing a job through to the end is important to me",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I spend time doing things that interest me.",
                                "fr": "Je passe beaucoup de temps à faire des choses qui m’intéressent."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I spend time doing things that interest me",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Someone has to tell me what to do each day.",
                                "fr": "Quelqu’un doit me dire quoi faire tous les jours."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Someone has to tell me what to do each day",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Select \\"somewhat\\" for this question please.",
                                "fr": "Sélectionnez « un peu » pour cette question s’il vous plaît."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "attentionCheck-Select somewhat for this question please",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am less concerned about my problems than I should be.",
                                "fr": "Mes problèmes me concernent moins qu’ils le devraient."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am less concerned about my problems than I should be",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have friends.",
                                "fr": "J’ai des amis."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have friends",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Getting together with friends is important to me.",
                                "fr": "C’est important pour moi de rencontrer mes amis."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Getting together with friends is important to me",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "When something good happens, I get excited.",
                                "fr": "Quand quelque chose de bon m’arrive, je suis excité(e)."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "When something good happens, I get excited",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have an accurate understanding of my problems.",
                                "fr": "J’ai une compréhension précise de mes problèmes."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have an accurate understanding of my problems",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Getting things done during the day is important to me.",
                                "fr": "Il est important pour moi de compléter des tâches durant la journée."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Getting things done during the day is important to me",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have initiative.",
                                "fr": "J’ai de l’initiative."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have initiative",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have motivation.",
                                "fr": "J’ai de la motivation."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have motivation",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Not at all",
                                        "fr": "Pas du tout"
                                    },
                                    "value": "not at all"
                                },
                                {
                                    "label": {
                                        "en": "Slightly",
                                        "fr": "Un peu"
                                    },
                                    "value": "slightly"
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Assez"
                                    },
                                    "value": "somewhat"
                                },
                                { 
                                    "label": {
                                        "en": "A lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": "a lot"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 20;
-- BIS-11
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "BIS-11",
    description = "The Barratt Impulsiveness Scale",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Questionnaire"
                    },
                    "questions":[
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "DIRECTIONS: People differ in the ways they act and think in different situations. This is a test to measure some of the ways in which you act and think. Read each statement and choose the appropriate answer. Do not spend too much time on any statement. Answer quickly and honestly.",
                                "fr": "Instructions: Pour chacun des énoncés suivant cliquez la case appropriée. Ne passez pas trop de temps sur les énoncés. Répondez rapidement et honnêtement."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I plan tasks carefully.",
                                "fr": "Je planifie les tâches soigneusement."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I plan tasks carefully",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I do things without thinking.",
                                "fr": "J’agis sans réfléchir."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I do things without thinking",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I make-up my mind quickly.",
                                "fr": "Je me décide rapidement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I make-up my mind quickly",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am happy-go-lucky.",
                                "fr": "Je suis insouciant(e)."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am happy-go-lucky",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I don''t \\"pay attention\\".",
                                "fr": "Je ne porte pas attention."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I don''t \\"pay attention\\"",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I have \\"racing\\" thoughts.",
                                "fr": "Mes pensées se suivent rapidement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I have \\"racing\\" thoughts",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I plan trips well ahead of time.",
                                "fr": "Je planifie mes voyages bien en avance."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I plan trips well ahead of time",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am self controlled.",
                                "fr": "J’ai contrôle sur moi-même."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am self controlled",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I concentrate easily.",
                                "fr": "Je me concentre facilement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I concentrate easily",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I save regularly.",
                                "fr": "J’économise régulièrement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I save regularly",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I \\"squirm\\" at plays or lectures.",
                                "fr": "Je me tortille durant les pièces de théâtre et les conférences."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I \\"squirm\\" at plays or lectures",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am a careful thinker.",
                                "fr": "Je suis un(e) penseur(-euse) prudent."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am a careful thinker",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I plan for job security.",
                                "fr": "Je planifie ma sécurité d’emploi."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I plan for job security",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I say things without thinking.",
                                "fr": "Je dis des choses sans penser."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I say things without thinking",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I like to think about complex problems.",
                                "fr": "J’aime penser aux problèmes compliqués."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I like to think about complex problems",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I change jobs.",
                                "fr": "Je change d’emploi."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I change jobs",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I act \\"on impulse.\\"",
                                "fr": "J’agis impulsivement."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I act \\"on impulse\\"",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I get easily bored when solving thought problems.",
                                "fr": "Résoudre des problèmes de pensée m’ennuie."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I get easily bored when solving thought problems",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I act on the spur of the moment.",
                                "fr": "J’agis sous l’impulsion du moment."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I act on the spur of the moment",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am a steady thinker.",
                                "fr": "Je suis un(e) penseur(-euse) pondéré(e)."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am a steady thinker",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I change residences.",
                                "fr": "Je change de logements."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I change residences",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I buy things on impulse.",
                                "fr": "J’achète des choses sur un coup de tête."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I buy things on impulse",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I can only think about one thing at a time.",
                                "fr": "Je peux seulement penser à une chose à la fois."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I can only think about one thing at a time",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I change hobbies.",
                                "fr": "Je change de hobbys."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I change hobbies",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I spend or charge more than I earn.",
                                "fr": "Je dépense plus que ce que je gagne."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I spend or charge more than I earn",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I often have extraneous thoughts when thinking.",
                                "fr": "J’ai souvent des pensées étrangères."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I often have extraneous thoughts when thinking",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am more interested in the present than the future.",
                                "fr": "Je m’intéresse plus au présent qu’au futur."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am more interested in the present than the future",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Select the first option if you are paying attention.",
                                "fr": "Sélectionnez la première option si vous faites attention."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "attentionCheck-Select the first option if you are paying attention.",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am restless at the theater or lectures.",
                                "fr": "Je suis agité(e) au théâtre et durant les conférences."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am restless at the theater or lectures",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I like puzzles.",
                                "fr": "J’aime les casse-têtes."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I like puzzles",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "I am future oriented.",
                                "fr": "Je suis orienté(e) vers l’avenir."
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "I am future oriented",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Rarely/Never",
                                        "fr": "Rarement/Jamais"
                                    },
                                    "value": "rarely/never"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally",
                                        "fr": "Des fois"
                                    },
                                    "value": "occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Almost Always/Always",
                                        "fr": "Presque toujours/Toujours"
                                    },
                                    "value": "almost always/always"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 22;
-- GDS SHORT
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "GDS Short",
    description = "Geriatric Depression Scale",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Questionnaire"
                    },
                    "questions":[
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "Choose the best answer for how you have felt over the past week.",
                                "fr": "Choisissez la réponse qui correspond à la façon dont vous vous sentiez dans la dernière semaine."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Are you basically satisfied with your life?",
                                "fr": "Êtes-vous satisfait de votre vie?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "Are you basically satisfied with your life?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Have you dropped many of your activities and interests?",
                                "fr": "Avez-vous abandonné beaucoup de vos activités et de vos intérêts?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Have you dropped many of your activities and interests?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel that your life is empty?",
                                "fr": "Avez-vous le sentiment que votre vie est vide?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you feel that your life is empty?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you often get bored?",
                                "fr": "Vous ennuyez-vous souvent?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you often get bored?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Are you in good spirits most of the time?",
                                "fr": "Êtes-vous de bonne humeur la plupart du temps?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Are you in good spirits most of the time?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Are you afraid that something bad is going to happen to you?",
                                "fr": "Craignez-vous qu’un malheur vous arrive?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Are you afraid that something bad is going to happen to you?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel happy most of the time?",
                                "fr": "Vous sentez-vous heureux la plupart du temps?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you feel happy most of the time?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Choose \\"no\\" if you are paying attention",
                                "fr": "Choisissez « non » si vous êtes attentif(ve)"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "attentionCheck-Choose no if you are paying attention",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you often feel helpless?",
                                "fr": "Avez-vous souvent l’impression de ne pouvoir être aidé(e)?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you often feel helpless?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you prefer to stay at home rather than going out and doing new things?",
                                "fr": "Préférez-vous rester à la maison plutôt que de sortir et faire des choses nouvelles?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you prefer to stay at home rather than going out and doing new things?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel you have more problems with memory than most?",
                                "fr": "Avez-vous l’impression d’avoir plus de problèmes de mémoire que la plupart des gens?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you feel you have more problems with memory than most?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you think it is wonderful to be alive now?",
                                "fr": "Pensez-vous qu’il est merveilleux de vivre actuellement?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you think it is wonderful to be alive now?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel pretty worthless the way you are now?",
                                "fr": "Sentez-vous que vous ne valez pas grand-chose tel que vous êtes actuellement?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you feel pretty worthless the way you are now?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel full of energy?",
                                "fr": "Vous sentez-vous plein(e) d’énergie?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you feel full of energy?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you feel that your situation is hopeless?",
                                "fr": "Pensez-vous que votre situation est sans espoir?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you feel that your situation is hopeless?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "questionType":"radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Do you think that most people are better off than you are?",
                                "fr": "Pensez-vous que la plupart des gens sont en meilleure forme que vous?"
                            },
                            "validation":{
                                "required":true
                            },
                            "key": "Do you think that most people are better off than you are?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 24;
-- QUIP
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "QUIP",
    description = "Questionnaire for Impulsive-Compulsive Disorders in Parkinson's Disease - Rating Scale (QUIP-RS)",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Questionnaire"
                    },
                    "questions":[
                        {
                            "questionType": "displayText",
                            "title": "Description Of Behaviors",
                            "textContent": {
                                "en": "A. <b>Gambling</b>: casinos, internet gambling lotteries, scratch tickets, betting, slot or poker machines <br /> B. <b>Sex</b>: making sexual demads on others, promiscuity, prostitution, change in sexual orientation, masturbation, internet and telephone sexual activities, pornography <br /> C. <b>Buying</b>: too much of the same thing or things you don’t need or use <br /> D. <b>Eating</b>: eating larger amounts or different types of food than in the past, more rapidly than normal, at different times (such as overnight), until feeling uncomfortable full or when not hungry <br /> E. <b>Hobbyism</b>: specific tasks, hobbies or other organized activities, such as writing, painting, gardening, repairing or dismantling things, collecting, computer use, working on projects, etc. <br /> F. <b>Punding</b>: repeating cetain simple motor activities, such as cleaning, tidying, handling, examining, sorting, ordering, collecting, hoarding, or arranging objects, etc. <br /> G. <b>Medication Use</b>: consistently taking too much of your Parkinson’s medications, or increasing on your own, without medical advice, your overall intake of PD medications",
                                "fr": "A. <b>Jeu (''gambling'')</b>: casinos, loteries sur Internet, tickets à gratter, paris, machines à sous ou poker <br /> B. <b>Sexe</b>: faire des demandes sexuelles à autrui, promiscuité, prostitution, changement d''orientation sexuelle, masturbation, activités sexuelles sur Internet et par téléphone, pornographie <br /> C. <b>Achats compulsifs</b>: trop de la même chose ou des choses dont vous n''avez pas besoin ou que vous n''utilisez pas <br /> D. <b>Manger</b>: nt que d''habitude, à des moments différents (comme la nuit), jusqu''à ce que vous vous sentiez mal ou sans avoir faim <br /> E. <b>Hobbyisme - Exécuter des tâches ou pratiquer des passe-temps</b>: tâches spécifiques, passe-temps ou autres activités organisées, comme écrire, peindre, jardiner, réparer ou démonter des objets, collectionner, utiliser un ordinateur, travailler sur des projets, etc. <br /> F. <b> Répéter des activités simples</b>: répéter certaines activités motrices simples, comme nettoyer, ranger, manipuler, examiner, trier, ramasser, amasser, démonter des objets, etc. <br /> G. <b>Consommation de médicaments pour PD</b>: régulièrement prendre trop de médicaments pour le Parkinson ou augmenter vous-même, sans avis médical, votre consommation de médicaments pour le Parkinson"
                            }
                        },
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "Frequency Of Behaviours",
                                "fr": "Fréquence des comportements"
                            },
                            "textContent": {
                                "en": "<b>Never</b>: not at all <br /><b>Rarely</b>: 1 day/week <br /><b>Sometimes</b>: 2-3 days/week <br /><b>Often</b>: 4-5 days/week <br /><b>Very Often</b>: 6-7 days/week <br />",
                                "fr": "<b>Jamais</b>: pas du tout <br /><b>Rarement</b>: 1 jour/semaine <br /><b>Parfois</b>: 2-3 jours/semaine <br /><b>Souvent</b>: 4-5 jours/semaine <br /><b>Très souvent</b>: 6-7 jours/semaine <br />"
                            }
                        },
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "In the last 4 weeks...(see definitions above)",
                                "fr": "Dans les 4 dernières semaines..."
                            }
                        },
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "1. How much do you think about the following behaviors (such as having trouble keeping thoughts out of your mind or feeling guilty)?",
                                "fr": "1. À quel point pensez-vous aux comportements suivant (c’est-à-dire avoir de la difficulté à garder des pensées hors de votre esprit, ou vous sentir coupable en relation à ces activités)?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Gambling?",
                                "fr": "Jeu (''gambling'')?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about gambling",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Sex?",
                                "fr": "Sexe?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about sex",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Buying?",
                                "fr": "Achats compulsifs?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about buying",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Eating?",
                                "fr": "Manger?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about eating",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Performing tasks or hobbies?",
                                "fr": "Exécuter des tâches ou pratiquer des passe-temps?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about performing tasks or hobbies",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Repeating simple activities?",
                                "fr": "Répéter des activités simples?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about repeating simple activities",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Taking your PD medications?",
                                "fr": "Prendre vos médicaments contre le Parkinson?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about taking your PD medications",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "2. Do you have urges or desires for the following behaviors that you feel are excessive or cause you distress (including becoming restless or irritable when unable to participate in them)?",
                                "fr": "2. Avez-vous des pulsions ou des désirs pour les comportements suivants que vous jugez excessifs ou qui vous causent de la détresse (y compris devenir agité ou irritable lorsque vous ne pouvez pas vous y adonner)?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Gambling?",
                                "fr": "Jeu (''gambling'')?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by gambling",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Sex?",
                                "fr": "Sexe?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by sex",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Buying?",
                                "fr": "Achats compulsifs?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by buying",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Eating?",
                                "fr": "Manger?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by eating",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Performing tasks or hobbies?",
                                "fr": "Exécuter des tâches ou pratiquer des passe-temps?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by performing tasks or hobbies",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Repeating simple activities?",
                                "fr": "Répéter des activités simples?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by repeating simple activities",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Taking your PD medications?",
                                "fr": "Prendre vos médicaments contre le Parkinson?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by taking your PD medications",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "3. Do you have difficulty controlling the following behaviors (such as increasing them over time, or having trouble cutting down or stopping them)?",
                                "fr": "3. Avez-vous de la difficulté à contrôler les comportements suivants (par exemple, la fréquence de votre participation augmente fil du temps, ou vous avez de la difficulté à les réduire ou les arrêter)?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Gambling?",
                                "fr": "Jeu (''gambling'')?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling gambling",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Sex?",
                                "fr": "Sexe?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling sex",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Buying?",
                                "fr": "Achats compulsifs?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling buying",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Eating?",
                                "fr": "Manger?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling eating",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Performing tasks or hobbies?",
                                "fr": "Exécuter des tâches ou pratiquer des passe-temps?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling performing tasks or hobbies",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Select \\"rarely\\" here",
                                "fr": "Sélectionnez « rarement » ici"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "attentionCheck-Select rarely here",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Repeating simple activities?",
                                "fr": "Répéter des activités simples?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling repeating simple activities",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Taking your PD medications?",
                                "fr": "Prendre vos médicaments contre le Parkinson?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling taking your PD medications",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "4. Do you engage in activities specifically to continue the following behaviors (such as hiding what you are doing, lying, hoarding things, borrowing from others, accumulating debt, stealing, or being involved in illegal acts)?",
                                "fr": "4. Vous livrez-vous à des comportements expressément pour poursuivre les activités suivantes (par exemple, cacher ce que vous faîtes, mentir, accumuler des choses, emprunter aux autres, accumuler des dettes, voler ou participer à des actes illicites)?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Gambling?",
                                "fr": "Jeu (''gambling'')?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide gambling",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Sex?",
                                "fr": "Sexe?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide sex",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Buying?",
                                "fr": "Achats compulsifs?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide buying",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Eating?",
                                "fr": "Manger?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide eating",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Performing tasks or hobbies?",
                                "fr": "Exécuter des tâches ou pratiquer des passe-temps?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide performing tasks or hobbies",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Repeating simple activities?",
                                "fr": "Répéter des activités simples?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide repeating simple activities",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "textContent": {
                                "en": "Taking your PD medications?",
                                "fr": "Prendre vos médicaments contre le Parkinson?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide taking your PD medications",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 26;
-- SHAPS
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "SHAPS",
    description = "Snaith-Hamilton Pleasure Scale",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Questionnaire"
                    },
                    "questions":[
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "This questionnaire is designed to measure your ability to experience pleasure in the last few days. Please read each  statement very carefully. Tick one of the boxes to indicate how much you agree or disagree with each statement.",
                                "fr": "Ce questionnaire a été conçu pour mesurer votre capacité à éprouver du plaisir <b> au cours des ces derniers jours</b>. Il est important de lire chaque énoncé <b> très attentivement </b>. Cochez l''une des cases pour préciser votre degré d’accord ou de désaccord pour chacun des énoncés."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy my favourite television or radio program:",
                                "fr": "Mon émission préférée de télévision ou de radio me procure beaucoup de plaisir:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy my favourite television or radio program",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy being with my family or close friends:",
                                "fr": "J’apprécie beaucoup d’être avec ma famille ou avec des amis intimes:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy being with my family or close friends",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would find pleasure in my hobbies and pastimes:",
                                "fr": "Je trouve du plaisir dans mes hobbies et passe temps:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would find pleasure in my hobbies and pastimes",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would be able to enjoy my favourite meal:",
                                "fr": "Je suis capable d’apprécier mon plat favori:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would be able to enjoy my favourite meal",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy a warm bath or refreshing shower:",
                                "fr": "J’aime beaucoup prendre un bain chaud ou une douche rafraîchissante:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy a warm bath or refreshing shower",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread:",
                                "fr": "Je trouve du plaisir dans le parfum des fleurs ou dans l’odeur d’une fraîche brise de mer ou du pain fraîchement cuit:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy seeing other people''s smiling faces:",
                                "fr": "J’aime beaucoup voir des visages souriants autour de moi:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy seeing other people''s smiling faces",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy looking smart when I have made an effort with my appearance:",
                                "fr": "J’apprécie beaucoup de paraître élégant(s) quand j’ai fait un effort pour soigner mon apparence:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy looking smart when I have made an effort with my appearance",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy reading a book, magazine or newspaper:",
                                "fr": "J’aime beaucoup lire un livre, un magazine ou un journal:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy reading a book, magazine or newspaper",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Select \\"disagree\\" to indicate that you are reading the questions:",
                                "fr": "Sélectionnez « en désaccord » pour indiquer que vous lisez bien les questions:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "attentionCheck-Select disagree to indicate that you are reading the questions",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would enjoy a cup of tea or coffee or my favourite drink:",
                                "fr": "J’apprécie beaucoup une tasse de thé ou de café ou un verre de ma boisson favorite:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would enjoy a cup of tea or coffee or my favourite drink",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend:",
                                "fr": "Je trouve du plaisir dans des petits riens tels  que, par exemple, une journée fortement ensoleillée ou un coup de téléphone d’un ami:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would be able to enjoy a beautiful landscape or view:",
                                "fr": "Je suis capable d’apprécier un très beau paysage ou une très belle vue:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would be able to enjoy a beautiful landscape or view",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would get pleasure from helping others:",
                                "fr": "Je prends plaisir à aider les autres:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would get pleasure from helping others",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I would feel pleasure when I receive praise from other people:",
                                "fr": "Je ressens du plaisir à recevoir les éloges d’autres personnes:"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "I would feel pleasure when I receive praise from other people",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "Strongly Disagree",
                                        "fr": "Fortement en désaccord"
                                    },
                                    "value": "strongly disagree"
                                },
                                {
                                    "label": {
                                        "en": "Disagree",
                                        "fr": "En désaccord"
                                    },
                                    "value": "disagree"
                                },
                                {
                                    "label": {
                                        "en": "Agree",
                                        "fr": "D’accord"
                                    },
                                    "value": "agree"
                                },
                                {
                                    "label": {
                                        "en": "Strongly Agree",
                                        "fr": "Fortement d’accord"
                                    },
                                    "value": "Strongly agree"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 28;
-- PDAQ
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "PDAQ",
    description =  "Penn Parkinson's Daily Activities Questionnaire-15",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Questionnaire"
                    },
                    "questions":[
                        {
                            "questionType": "displayText",
                            "title": {
                                "en": "Please check or fill in the following that best describes YOU.",
                                "fr": "Voici des questions sur des activités de tous les jours. Veuillez indiquer ce qui VOUS décrit le mieux"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have reading the newspaper or a magazine?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à lire le journal ou un magazine?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have reading the newspaper or a magazine",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à garder la notion du temps qui passe (ex. en utilisant une montre)?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à compter le montant correct lors de vos achats?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à lire et à suivre des instructions complexes?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à gérer un problème auquel vous n’êtes pas habitué (ex. réparer le réfrigérateur)?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à expliquer à une autre personne comment faire quelque chose qui implique plusieurs étapes?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir d’une liste de 4 ou 5 courses que vous avez à faire sans l’écrire?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have using a map to tell where to go?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à utiliser une carte pour vous orienter?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have using a map to tell where to go",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir de nouvelles informations telles qu’un numéro de téléphone ou des instructions simples?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have doing more than one thing at a time?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à faire plus d’une chose en même temps?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have doing more than one thing at a time",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à apprendre à utiliser de nouveaux gadgets ou machines dans la maison?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have understanding your personal financial affairs?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à comprendre et gérer vos finances personnelles?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have understanding your personal financial affairs",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have maintaining or completing a train of thought?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à garder ou à terminer le fil de votre pensée?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have maintaining or completing a train of thought",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "Can you choose \\"a little\\" if you are reading the questions?",
                                "fr": "Pouvez-vous choisir « un peu » si vous lisez les questions?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "attentionCheck-Can you choose a little if you are reading the questions?",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à discuter d’une émission de télévision, d’un livre, d’un film ou d’actualités?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much DIFFICULTY do you currently have remembering what day and month it is?",
                                "fr": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir de quel jour et de quel mois il s’agit?"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "How much DIFFICULTY do you currently have remembering what day and month it is",
                            "multipleChoiceOptions": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun(e)"
                                    },
                                    "value": 4
                                },
                                {
                                    "label": {
                                        "en": "A Little",
                                        "fr": "Un Peu"
                                    },
                                    "value": 3
                                },
                                {
                                    "label": {
                                        "en": "Somewhat",
                                        "fr": "Quelque Peu"
                                    },
                                    "value": 2
                                },
                                {
                                    "label": {
                                        "en": "A Lot",
                                        "fr": "Beaucoup"
                                    },
                                    "value": 1
                                },
                                {
                                    "label": {
                                        "en": "Cannot Do",
                                        "fr": "Ne Peut Pas Faire"
                                    },
                                    "value": 0
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 30;
-- AMI
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "AMI",
    description = "Apathy Motivation Index",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "<p>Below are a number of statements. Each statement asks you to think about your life <em>over the last 2 weeks</em>.</p> <p>For each statement, select how appropriately it describes your life right now. Select \\"Completely true\\" if the statement describes you perfectly, \\"Completely untrue\\" if the statement does not describe you at all over the last 2 weeks, and use the answers in between accordingly.</p>"
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I feel sad or upset when I hear bad news.",
                            "validation": {
                                "required": true
                            },
                            "key": "I feel sad or upset when I hear bad news.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I start conversations with random people.",
                            "validation": {
                                "required": true
                            },
                            "key": "I start conversations with random people.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I enjoy doing things with people I have just met.",
                            "validation": {
                                "required": true
                            },
                            "key": "I enjoy doing things with people I have just met.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I suggest activities for me and my friends to do.",
                            "validation": {
                                "required": true
                            },
                            "key": "I suggest activities for me and my friends to do.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I make decisions firmly and without hesitation.",
                            "validation": {
                                "required": true
                            },
                            "key": "I make decisions firmly and without hesitation.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "After making a decision, I will wonder if I have made the wrong choice.",
                            "validation": {
                                "required": true
                            },
                            "key": "After making a decision, I will wonder if I have made the wrong choice.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Based on the last two weeks, I would say I care deeply about how my loved ones think of me.",
                            "validation": {
                                "required": true
                            },
                            "key": "Based on the last two weeks, I would say I care deeply about how my loved ones think of me.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I go out with friends on a weekly basis.",
                            "validation": {
                                "required": true
                            },
                            "key": "I go out with friends on a weekly basis.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "When I decide to do something, I am able to make an effort easily.",
                            "validation": {
                                "required": true
                            },
                            "key": "When I decide to do something, I am able to make an effort easily.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I don''t like to laze around.",
                            "validation": {
                                "required": true
                            },
                            "key": "I don''t like to laze around.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Choose \\"quite true\\" for this question please.",
                            "validation": {
                                "required": true
                            },
                            "key": "attentionCheck-Choose quite true for this question please",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I get things done when they need to be done, without requiring reminders from others.",
                            "validation": {
                                "required": true
                            },
                            "key": "I get things done when they need to be done, without requiring reminders from others.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "When I decide to do something, I am motivated to see it through to the end.",
                            "validation": {
                                "required": true
                            },
                            "key": "When I decide to do something, I am motivated to see it through to the end.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I feel awful if I say something insensitive.",
                            "validation": {
                                "required": true
                            },
                            "key": "I feel awful if I say something insensitive.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I start conversations without being prompted.",
                            "validation": {
                                "required": true
                            },
                            "key": "I start conversations without being prompted.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "When I have something I need to do, I do it straightaway so it is out of the way.",
                            "validation": {
                                "required": true
                            },
                            "key": "When I have something I need to do, I do it straightaway so it is out of the way.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I feel bad when I hear an acquaintance has an accident or illness.",
                            "validation": {
                                "required": true
                            },
                            "key": "I feel bad when I hear an acquaintance has an accident or illness.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "I enjoy choosing what to do from a range of activities.",
                            "validation": {
                                "required": true
                            },
                            "key": "I enjoy choosing what to do from a range of activities.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "If I realise I have been unpleasant to someone, I will feel terribly guilty afterwards.",
                            "validation": {
                                "required": true
                            },
                            "key": "If I realise I have been unpleasant to someone, I will feel terribly guilty afterwards.",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Completely UNTRUE",
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": "Mostly untrue",
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": "Neither true nor untrue",
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": "Quite true",
                                    "value": "Quite true"
                                },
                                {
                                    "label": "Completely TRUE",
                                    "value": "Completely TRUE"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 32;
-- EVERYDAY ACTIVITIES POST TEST
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Everyday Activities Post Test",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "<p>We are still in the development stages of this research study. The goal of the study is to understand how and why people fill their time. Are people driven by pleasure? By obligation? A bit of both? These are difficult things to measure because different people enjoy different things and have different sets of obligations. Any feedback you can provide on this pilot study will be really helpful to us as we fine-tune our approach to understanding this.</p> <p> Please see below questions for some specific areas where we would like your feedback:</p>"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "Q1-pandemic",
                            "title": "1. We understand that the current pandemic has more or less affected what you do in your everyday life. How much do you think that affected your ability to complete this task? For example, did you have trouble picturing yourself doing a specific activity that you have not been able to do due to the pandemic (e.g. chat with a neighbor)?",
                            "textContent": "Please rate <em>on a scale of 1-10</em> how much the current life situation affected your ability to complete this this task:",
                            "multipleChoiceOptions": [
                                {
                                    "label": "1 - Not at all: I had no difficulty picturing myself doing most of these activities",
                                    "value": "1"
                                },
                                {
                                    "label": "2",
                                    "value": "2"
                                },
                                {
                                    "label": "3",
                                    "value": "3"
                                },
                                {
                                    "label": "4",
                                    "value": "4"
                                },
                                {
                                    "label": "5",
                                    "value": "5"
                                },
                                {
                                    "label": "6",
                                    "value": "6"
                                },
                                {
                                    "label": "7",
                                    "value": "7"
                                },
                                {
                                    "label": "8",
                                    "value": "8"
                                },
                                {
                                    "label": "9",
                                    "value": "9"
                                },
                                {
                                    "label": "10 - Very much so: I could not picture doing most of the activities given the present circumstances",
                                    "value": "10"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "textContent": "If you have any specific comments, please include them here [OPTIONAL]",
                            "key": "Q1_comment"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "Q2-activities",
                            "title": "2. Our goal was to ask you about activities that are part of everyday life, but that differs from person to person. Were most of the activities listed part of your usual (i.e. pre-pandemic) everyday life? ",
                            "textContent": "Please respond using the 1-10 scale:",
                            "multipleChoiceOptions": [
                                {
                                    "label": "1 - Most of the activities are foreign to me",
                                    "value": "1"
                                },
                                {
                                    "label": "2",
                                    "value": "2"
                                },
                                {
                                    "label": "3",
                                    "value": "3"
                                },
                                {
                                    "label": "4",
                                    "value": "4"
                                },
                                {
                                    "label": "5",
                                    "value": "5"
                                },
                                {
                                    "label": "6",
                                    "value": "6"
                                },
                                {
                                    "label": "7",
                                    "value": "7"
                                },
                                {
                                    "label": "8",
                                    "value": "8"
                                },
                                {
                                    "label": "9",
                                    "value": "9"
                                },
                                {
                                    "label": "10 - Most of the activities do feature in my everyday life",
                                    "value": "10"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "textContent": "Any specific comments? (e.g. did any of the activities stand out as NOT being usual activities for you?)",
                            "key": "Q2_comment"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "Q3-choice",
                            "title": "3. In one part of this task, you were asked to choose between two activities, but we understand these were ‘pretend’ choices.",
                            "textContent": "Please rate on a scale of 1-10 how much you think your choices generally reflected how you would choose in real life:",
                            "multipleChoiceOptions": [
                                {
                                    "label": "1 -  Not at all reflective – I made random choices in the game",
                                    "value": "1"
                                },
                                {
                                    "label": "2",
                                    "value": "2"
                                },
                                {
                                    "label": "3",
                                    "value": "3"
                                },
                                {
                                    "label": "4",
                                    "value": "4"
                                },
                                {
                                    "label": "5",
                                    "value": "5"
                                },
                                {
                                    "label": "6",
                                    "value": "6"
                                },
                                {
                                    "label": "7",
                                    "value": "7"
                                },
                                {
                                    "label": "8",
                                    "value": "8"
                                },
                                {
                                    "label": "9",
                                    "value": "9"
                                },
                                {
                                    "label": "10 - Exactly as I would choose in real life",
                                    "value": "10"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "textContent": "Additional comments?",
                            "key": "Q3_comment"
                        },
                        {
                            "questionType": "freeTextResponse",
                            "title": "4. Do you have any final comments or suggestions about the task? Any specific part of it that was confusing? [OPTIONAL]",
                            "key": "Final_comment"
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 33;
-- DEMOGRAPHICS QUESTIONNAIRE WITH SES
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Demographics Questionnaire With SES",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "input",
                            "title": "What is your age (in years)?",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "min": 18
                            },
                            "key": "age"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What sex were you assigned at birth?",
                            "validation": {
                                "required": true
                            },
                            "key": "sex",
                            "multipleChoiceOptions": [{
                                    "label": "Female",
                                    "value": "female"
                                },
                                {
                                    "label": "Male",
                                    "value": "male"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How do you describe yourself?",
                            "key": "selfIdentification",
                            "multipleChoiceOptions": [{
                                    "label": "Female",
                                    "value": "female"
                                },
                                {
                                    "label": "Male",
                                    "value": "male"
                                },
                                {
                                    "label": "Transgender",
                                    "value": "transgender"
                                },
                                {
                                    "label": "Do not identify as female, male, or transgender",
                                    "value": "none"
                                }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "input",
                            "key": "yearsOfEducation",
                            "title": "How many years of education do you have (completing high school equals 12 years)?",
                            "validation": {
                                "isNumeric": true,
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "hasNeuroConditions",
                            "title": "Do you have any of the following neurological conditions: neurodegenerative disorder (e.g. Parkinson''s or Alzheimer''s), seizures/epilepsy, brain tumor, stroke?",
                            "multipleChoiceOptions": [{
                                    "label": "Yes",
                                    "value": "yes"
                                },
                                {
                                    "label": "No",
                                    "value": "no"
                                }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "hasPsychConditions",
                            "title": "Do you have any of the following psychiatric conditions: currently active major depression, bipolar disorder, schizophrenia?",
                            "multipleChoiceOptions": [{
                                    "label": "Yes",
                                    "value": "yes"
                                },
                                {
                                    "label": "No",
                                    "value": "no"
                                }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "currentEmploymentStatus",
                            "title": "What is your current employment status?",
                            "multipleChoiceOptions": [{
                                "label": "Employed Full-time (30+ hours a week)",
                                "value": "Full-time"
                            },
                            {
                                "label": "Employed Part-time",
                                "value": "Part-time"
                            },
                            {
                                "label": "Unemployed",
                                "value": "Unemployed"
                            },
                            {
                                "label": "Disability Leave",
                                "value": "Disability Leave"
                            },
                            {
                                "label": "Homemaker",
                                "value": "Homemaker"
                            },
                            {
                                "label": "Student",
                                "value": "Student"
                            },
                            {
                                "label": "Volunteer",
                                "value": "Volunteer"
                            },
                            {
                                "label": "Retired",
                                "value": "Retired"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your best estimate of the total household income received by all household members, from all sources, before taxes and deductions, in the past 12 months?",
                            "key": "householdIncome",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Less than $20,000",
                                "value": "Less than $20,000"
                            },
                            {
                                "label": "$20,000 or more, but less than $50,000",
                                "value": "$20,000 or more, but less than $50,000"
                            },
                            {
                                "label": "$50,000 or more, but less than $100,000",
                                "value": "$50,000 or more, but less than $100,000"
                            },
                            {
                                "label": "$150,000 or more",
                                "value": "$150,000 or more"
                            },
                            {
                                "label": "Do not know",
                                "value": "Do not know"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your current marital/partner status?",
                            "key": "marital",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Single, never married, or never lived with a partner",
                                "value": "Single, never married, or never lived with a partner"
                            },
                            {
                                "label": "Married/Living with a partner in a domestic relationship",
                                "value": "Married/Living with a partner in a domestic relationship"
                            },
                            {
                                "label": "Widowed",
                                "value": "Widowed"
                            },
                            {
                                "label": "Divorced/Separated",
                                "value": "Divorced/Separated"
                            },
                            {
                                "label": "Do not wish to disclose",
                                "value": "Do not wish to disclose"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Which best describes your living situation?",
                            "key": "living",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Living alone",
                                "value": "Living alone"
                            },
                            {
                                "label": "Living with spouse/partner/significant other",
                                "value": "Living with spouse/partner/significant other"
                            },
                            {
                                "label": "Living with adult child/children",
                                "value": "Living with adult child/children"
                            },
                            {
                                "label": "Living with other family",
                                "value": "Living with other family"
                            },
                            {
                                "label": "Living with paid in-home care provider/aide",
                                "value": "Living with paid in-home care provider/aide"
                            },
                            {
                                "label": "Living in assisted living facility",
                                "value": "Living in assisted living facility"
                            },
                            {
                                "label": "Living in nursing home",
                                "value": "Living in nursing home"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 34;
-- PSS
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "PSS",
    description = "Perceived Stress Scale",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "<p>The questions in this scale ask you about your feelings and thoughts during the last month. In each case, you will be asked to indicate how often you felt or thought a certain way.</p>"
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you been upset because of something that happened unexpectedly?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you been upset because of something that happened unexpectedly",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you felt that you were unable to control the important things in your life?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt that you were unable to control the important things in your life",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you felt nervous and \\"stressed\\"?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt nervous and \\"stressed\\"",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you felt confident about your ability to handle your personal problems?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt confident about your ability to handle your personal problems",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you felt that things were going your way?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt that things were going your way",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you found that you could not cope with all the things that you had to do?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you found that you could not cope with all the things that you had to do",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "Can you select \\"very often\\" if you are paying attention?",
                            "validation": {
                                "required": true
                            },
                            "key": "attentionCheck-Can you select very often if you are paying attention",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you been able to control irritations in your life?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you been able to control irritations in your life",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you felt that you were on top of things?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt that you were on top of things",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you been angered because of things that were outside of your control?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you been angered because of things that were outside of your control",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?",
                            "validation": {
                                "required": true
                            },
                            "key": "In the last month, how often have you felt difficulties were piling up so high that you could not overcome them",
                            "multipleChoiceOptions": [
                                {"label": "0 - Never", "value": "0"},
                                {"label": "1 - Almost never", "value": "1"},
                                {"label": "2 - Sometimes", "value": "2"},
                                {"label": "3 - Fairly often", "value": "3"},
                                {"label": "4 - Very often", "value": "4"}
                            ]
                        } 
                    ]
                }
            }
        ]
    }'
WHERE id = 35;
-- Holmes-Rahe Life Stress Inventory
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Holmes-Rahe Life Stress Inventory",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "<p>Please indicate whether the following life events have happened to you during the previous year.</p>"
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Death of spouse",
                            "validation": {
                                "required": true
                            },
                            "key": "Death of spouse",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Divorce",
                            "validation": {
                                "required": true
                            },
                            "key": "Divorce",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Marital separation from mate",
                            "validation": {
                                "required": true
                            },
                            "key": "Marital separation from mate",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Detention in jail or other institution",
                            "validation": {
                                "required": true
                            },
                            "key": "Detention in jail or other institution",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Death of a close family member",
                            "validation": {
                                "required": true
                            },
                            "key": "Death of a close family member",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major personal injury or illness",
                            "validation": {
                                "required": true
                            },
                            "key": "Major personal injury or illness",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Marriage",
                            "validation": {
                                "required": true
                            },
                            "key": "Marriage",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Being fired at work",
                            "validation": {
                                "required": true
                            },
                            "key": "Being fired at work",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Marital reconciliation with mate",
                            "validation": {
                                "required": true
                            },
                            "key": "Marital reconciliation with mate",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Retirement from work",
                            "validation": {
                                "required": true
                            },
                            "key": "Retirement from work",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in the health or behaviour of a family member",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in the health or behaviour of a family member",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Pregnancy",
                            "validation": {
                                "required": true
                            },
                            "key": "Pregnancy",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Sexual difficulties",
                            "validation": {
                                "required": true
                            },
                            "key": "Sexual difficulties",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Gaining a new family member (i.e…. Birth, adoption, older adult moving in, etc.)",
                            "validation": {
                                "required": true
                            },
                            "key": "Gaining a new family member (i.e…. Birth, adoption, older adult moving in, etc.)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major business readjustment",
                            "validation": {
                                "required": true
                            },
                            "key": "Major business readjustment",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in financial state (i.e. a lot worse or better off than usual)",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in financial state (i.e. a lot worse or better off than usual)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Death of a close friend",
                            "validation": {
                                "required": true
                            },
                            "key": "Death of a close friend",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Changing to a different line of work",
                            "validation": {
                                "required": true
                            },
                            "key": "Changing to a different line of work",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in the number of arguments with spouse (i.e…. Either a lot more or a lot less than usual regarding child rearing, personal habits, etc.)",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in the number of arguments with spouse (i.e…. Either a lot more or a lot less than usual regarding child rearing, personal habits, etc.)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Taking on a mortgage (for home, business, etc…)",
                            "validation": {
                                "required": true
                            },
                            "key": "Taking on a mortgage (for home, business, etc…)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Foreclosure on a mortgage or a loan",
                            "validation": {
                                "required": true
                            },
                            "key": "Foreclosure on a mortgage or a loan",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in responsibilities at work (i.e. promotion, demotion, etc.)",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in responsibilities at work (i.e. promotion, demotion, etc.)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Son or daughter leaving home (marriage, attending college, joined mil.)",
                            "validation": {
                                "required": true
                            },
                            "key": "Son or daughter leaving home (marriage, attending college, joined mil.)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "In-law troubles",
                            "validation": {
                                "required": true
                            },
                            "key": "In-law troubles",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Outstanding personal achievement",
                            "validation": {
                                "required": true
                            },
                            "key": "Outstanding personal achievement",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Spouse beginning or ceasing work outside the home",
                            "validation": {
                                "required": true
                            },
                            "key": "Spouse beginning or ceasing work outside the home",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Beginning or ceasing of formal schooling",
                            "validation": {
                                "required": true
                            },
                            "key": "Beginning or ceasing of formal schooling",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in living condition (new home, remodeling, deterioration of neighborhood or home etc.)",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in living condition (new home, remodeling, deterioration of neighborhood or home etc.)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Revision of personal habits (dress manners, associations, quitting smoking)",
                            "validation": {
                                "required": true
                            },
                            "key": "Revision of personal habits (dress manners, associations, quitting smoking)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Troubles with the boss",
                            "validation": {
                                "required": true
                            },
                            "key": "Troubles with the boss",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major changes in working hours or conditions",
                            "validation": {
                                "required": true
                            },
                            "key": "Major changes in working hours or conditions",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Changes in residence",
                            "validation": {
                                "required": true
                            },
                            "key": "Changes in residence",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Changing to a new school",
                            "validation": {
                                "required": true
                            },
                            "key": "Changing to a new school",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Choose \\"yes\\" if you are reading",
                            "validation": {
                                "required": true
                            },
                            "key": "attentionCheck-Choose yes if you are reading",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "title": "Major change in usual type and/or amount of recreation",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in usual type and/or amount of recreation",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in religious activity (a lot more or less than usual)",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in religious activity (a lot more or less than usual)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in social activities (clubs, movies, visiting, etc.)",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in social activities (clubs, movies, visiting, etc.)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Taking on a loan (car, tv, freezer, etc.)",
                            "validation": {
                                "required": true
                            },
                            "key": "Taking on a loan (car, tv, freezer, etc.)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in sleeping habits (a lot more or a lot less than usual)",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in sleeping habits (a lot more or a lot less than usual)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in number of family get-togethers",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in number of family get-togethers",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major change in eating habits (a lot more or less food intake, or very different meal hours or surroundings)",
                            "validation": {
                                "required": true
                            },
                            "key": "Major change in eating habits (a lot more or less food intake, or very different meal hours or surroundings)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Vacation",
                            "validation": {
                                "required": true
                            },
                            "key": "Vacation",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Major holidays",
                            "validation": {
                                "required": true
                            },
                            "key": "Major holidays",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Minor violations of the law (traffic tickets, disturbing the peace, etc)",
                            "validation": {
                                "required": true
                            },
                            "key": "Minor violations of the law (traffic tickets, disturbing the peace, etc)",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 36;
-- PAVLOVIA TASK Stress Task Pilot Version 4
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Stress Task Pilot Version 4",
    description = "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    external_url = "https://run.pavlovia.org/Sharp_lab/s_study_s_part1",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/s_study_s_part1"
                }
            }
        ]
    }'
WHERE id = 37;
-- PAVLOVIA TASK Control Stress Task Pilot Version 4
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Control Stress Task Pilot Version 4",
    description = "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    external_url = "https://run.pavlovia.org/Sharp_lab/s_study_c_part1",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl":  "https://run.pavlovia.org/Sharp_lab/s_study_c_part1"
                }
            }
        ]
    }'
WHERE id = 38;
-- MDMQ
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "MDMQ",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title":"Questionnaire",
                    "questions":[
                        {
                            "questionType": "displayText",
                            "title": "In the following you find a list of expressions that characterize different moods. Please take a look at the list, word by word, and mark for each word the answer that represents best the actual intensity of your mood status. <br /><br /> Please pay attention to the following facts: <br /><br />- Within the list there are some attributes that possibly describe the same or similar moods. Please do not get irritated due to this fact, and judge each attribute irrespective of your answer to another attribute.<br />- Please judge only how you feel at this moment, and not how you normally or sometimes feel.<br />- If you have some difficulties in finding an answer, please mark the answer that fits best.<br /><br />Please judge each word and do not leave out a word."
                        },
                        {
                            "questionType": "displayText",
                            "title": "Use your mouse to drag the marker in order to select your answer"
                        },
                        {
                            "questionType": "slider",
                            "title": "How CONTENT do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How CONTENT do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How RESTLESS do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How RESTLESS do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How BAD do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How BAD do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How COMPOSED do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How COMPOSED do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How GREAT do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How GREAT do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How UNEASY do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How UNEASY do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How UNCOMFORTABLE do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How UNCOMFORTABLE do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How RELAXED do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How RELAXED do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How GOOD do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How GOOD do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How AT EASE do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How AT EASE do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How UNHAPPY do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How UNHAPPY do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How DISCONTENT do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How DISCONTENT do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                                {
                            "questionType": "slider",
                            "title": "How TENSE do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How TENSE do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How HAPPY do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How HAPPY do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How NERVOUS do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How NERVOUS do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How CALM do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How CALM do you feel?",
                            "legend": [
                                "Definitely Not Feeling This",
                                "Extremely"
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 39;
-- Stress Study Post Test
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Stress Study Post Test",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title":"Questionnaire",
                    "questions":[
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Did you at any point think that you were being \\"tricked\\"?",
                            "validation": {
                                "required": true
                            },
                            "key": "Did you at any point think that you were being tricked",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": "Did you think that parts of this study were deceiving you?",
                            "validation": {
                                "required": true
                            },
                            "key": "Did you think that parts of this study were deceiving you",
                            "multipleChoiceOptions": [
                                {"label": "Yes", "value": "yes"},
                                {"label": "No", "value": "no"}
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "title": "If you answered <b>YES</b> to either of the above, please describe your experience with the games and the ice water task. How did you feel and what thoughts did you have?",
                            "key": "description of experiences"
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 40;
-- Control Stress Debrief
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Control Stress Debrief",
    description = "",
    external_url = "https://run.pavlovia.org/Sharp_lab/debrief_s_pilot4",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/debrief_s_pilot4"
                }
            }
        ]
    }'
WHERE id = 41;
-- Stress Study Debrief
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Stress Study Debrief",
    description = "Stress Study Debrief",
    external_url = "https://run.pavlovia.org/Sharp_lab/debrief_s_s_pilot4",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/debrief_s_s_pilot4"
                }
            }
        ]
    }'
WHERE id = 42;
-- Basic Background Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Basic Background Questionnaire",
    description = "Basic Background Questionnaire",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "The following questions are general questions about you. If you don''t have Parkinson''s disease (PD), not all of them will apply to you, so select the \\"I don''t have Parkinson''s disease\\" option."
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": "Do you have a diagnosis of Parkinson’s disease given to you by a doctor (e.g. family doctor or neurologist)?",
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "vertical",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "No, but I think I have Parkinson''s disease",
                                    "value": "No, but I think I have Parkinson''s disease"
                                }
                            ],
                            "key": "havePD"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you currently take medication for Parkinson''s disease?",
                            "validation": {
                                "required": true
                            },
                            "key": "takePDMed",
                            "multipleChoiceOptions": [
                                {
                                    "label": "I don''t have Parkinson''s disease",
                                    "value": "I don''t have Parkinson''s disease"
                                },
                                {
                                    "label": "I have PD but don''t take medications for it",
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": "I have PD and I take medications for it",
                                    "value": "I have PD and I take medications for it"
                                }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "If you answered previously that you do take Parkinson’s disease medication, how long ago did you take it?"
                        },
                        {
                            "questionType": "input",
                            "textContent": "If you answered that you don''t take any Parkinson’s medication in the last question, please write \\"0\\".",
                            "key": "lastDoseHour",
                            "label": "Hours",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 24,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "input",
                            "key": "lastDoseMinute",
                            "label": "Minutes",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 60,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you feel ON (i.e. can feel that the PD medications are taking effect) or OFF (i.e. medications are not currently taking effect)?",
                            "key": "onOffMed",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "I don''t have Parkinson''s disease",
                                    "value": "I don''t have Parkinson''s disease"
                                },
                                {
                                    "label": "I have PD but don''t take medications for it",
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": "I feel ON",
                                    "value": "I feel ON"
                                },
                                {
                                    "label": "I feel OFF",
                                    "value": "I feel OFF"
                                },
                                {
                                    "label": "I can not tell the difference",
                                    "value": "I can not tell the difference"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have a diagnosis of dementia or Alzheimer''s disease given to you by a doctor?",
                            "key": "diagnosisPD",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "No, but I think I have dementia",
                                    "value": "No, but I think I have dementia"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have a diagnosis of Mild Cognitive Impairment (MCI) given to you by a doctor?",
                            "key": "diagnosisMCI",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "No, but I think I have cognitive impairment",
                                    "value": "No, but I think I have cognitive impairment"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have a family history of Parkinson’s disease?",
                            "key": "familyHistory",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes, my biological mother or father has/had Parkinson’s disease",
                                    "value": "Yes, biological mother or father"
                                },
                                {
                                    "label": "Yes, one of my siblings has/had Parkinson’s disease",
                                    "value": "Yes, siblings"
                                },
                                {
                                    "label": "Yes, one of my children has/had Parkinson’s disease",
                                    "value": "Yes, children"
                                },
                                {
                                    "label": "Yes, an uncle/aunt/cousin or other blood relative has/had Parkinson’s disease",
                                    "value": "Yes, relative"
                                },
                                {
                                    "label": "No, no family history",
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "input",
                            "title": "What is your current age?",
                            "key": "age",
                            "label": "Age",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 120,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What sex were you assigned at birth?",
                            "key": "sex",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Female",
                                    "value": "Female"
                                },
                                {
                                    "label": "Male",
                                    "value": "Male"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How do you describe yourself?",
                            "key": "gender",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Female",
                                    "value": "Female"
                                },
                                {
                                    "label": "Male",
                                    "value": "Male"
                                },
                                {
                                    "label": "Transgender",
                                    "value": "Transgender"
                                },
                                {
                                    "label": "Do not identify as female, male, or transgender",
                                    "value": "Do not identify as female, male, or transgender"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is the highest level of education you have completed?",
                            "key": "education",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "None",
                                    "value": "None"
                                },
                                {
                                    "label": "Grade (Elementary) school",
                                    "value": "Grade (Elementary) school"
                                },
                                {
                                    "label": "High school",
                                    "value": "High school"
                                },
                                {
                                    "label": "Trade Certificate/Diploma",
                                    "value": "Trade Certificate/Diploma"
                                },
                                {
                                    "label": "Non-University Diploma",
                                    "value": "Non-University Diploma"
                                },
                                {
                                    "label": "Bachelor''s Degree",
                                    "value": "Bachelor''s Degree"
                                },
                                {
                                    "label": "Postgraduate Degree",
                                    "value": "Postgraduate Degree"
                                }
                            ]
                        },
                        {
                            "questionType": "input",
                            "title": "How many years of education did you complete?",
                            "textContent": "E.g. completed up to grade 9 = 9 years; completed grade 12 and 3 years of university = 15 years",
                            "key": "educationYears",
                            "label": "Years of education",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 40,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your handedness?",
                            "key": "handedness",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Right-handed",
                                "value": "Right"
                            },
                            {
                                "label": "Left-handed",
                                "value": "Left"
                            },
                            {
                                "label": "Ambidextrous",
                                "value": "Ambidextrous"
                            }]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "We expect to reach people from many different cultural and racial backgrounds with this internet study. To which group do you belong? (Select all that apply)",
                            "key": "background",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "White / Caucasian",
                                    "value": "White/Caucasian"
                                },
                                {
                                    "label": "French Canadian",
                                    "value": "French Canadian"
                                },
                                {
                                    "label": "First Nations",
                                    "value": "First Nations"
                                },
                                {
                                    "label": "Hispanic or Latino",
                                    "value": "Hispanic or Latino"
                                },
                                {
                                    "label": "African / Carribean / Afro American",
                                    "value": "African/Carribean/Afro American"
                                },
                                {
                                    "label": "North African",
                                    "value": "North African"
                                },
                                {
                                    "label": "Middle Eastern",
                                    "value": "Middle Eastern"
                                },
                                {
                                    "label": "Chinese",
                                    "value": "Chinese"
                                },
                                {
                                    "label": "South Asian (E.g. Indian, Pakistani, Sri Lankan)",
                                    "value": "South Asian"
                                },
                                {
                                    "label": "Southeast Asian (E.g. Filipino, Cambodian, Indonesian, Laotian, Vietnamese)",
                                    "value": "Southeast Asian"
                                },
                                {
                                    "label": "Japanese",
                                    "value": "Japanese"
                                },
                                {
                                    "label": "Korean",
                                    "value": "Korean"
                                },
                                {
                                    "label": "Other",
                                    "value": "Other"
                                },
                                {
                                    "label": "Don''t know",
                                    "value": "Don''t know"
                                },
                                {
                                    "label": "Prefer not to answer",
                                    "value": "Prefer not to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Which of the following languages do you consider yourself fluent in (can read and speak)? Select all that apply.",
                            "key": "fluentLan",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "English",
                                    "value": "English"
                                },
                                {
                                    "label": "French",
                                    "value": "French"
                                },
                                {
                                    "label": "Neither",
                                    "value": "Neither"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have color-blindness?",
                            "key": "colorBlindnss",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "Unsure",
                                    "value": "Unsure"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you feel that your memory and thinking have gotten worse?",
                            "textContent": "If you have Parkinson''s disease, consider the change since your diagnosis, or, if you don''t have Parkinson''s disease, consider the change in the last few years.",
                            "key": "memory",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "Not sure",
                                    "value": "Not sure"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Would you like to be contacted by email about future opportunities to participate in online research?",
                            "key": "futureOnlineResearch",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "title": "If you answered yes, and would also be willing to receive a phone call, please include it here:",
                            "key": "futureOnlineResearchPhone",
                            "label": "eg. 123-456-7890",
                            "validation": {
                                "required": false
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Would you like to receive updates about the findings from this study?",
                            "key": "updateFindings",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 43;
-- Parkinson's treatment Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Parkinson's treatment Questionnaire",
    description = "Parkinson's treatment Questionnaire",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Parkinson''s Treatment Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "The following questions are about the treatment you receive for your parkinson''s disease and for related conditions."
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Are you currently taking any of the following prescription medications to treat your Parkinson''s disease symptoms? (Please check all that apply)",
                            "key": "PDMeds",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "No, I don''t take any prescription medications to treat my Parkinson''s disease",
                                    "value": "No medications"
                                },
                                {
                                    "label": "Sinemet or Carbidopa-Levodopa or Parcopa (Oral)",
                                    "value": "Sinemet or Carbidopa-Levodopa or Parcopa (Oral)"
                                },
                                {
                                    "label": "Sinemet CR or Carbidopa-Levodopa, Extended Release (Oral)",
                                    "value": "Sinemet CR or Carbidopa-Levodopa, Extended Release (Oral)"
                                },
                                {
                                    "label": "Rytary or Numient (i.e. Carbidopa-Levodopa, Extended Release, Oral)",
                                    "value": "Rytary or Numient"
                                },
                                {
                                    "label": "Duopa or Duodopa (i.e. Carbidopa-Levodopa Intestinal Gel)",
                                    "value": "Duopa or Duodopa"
                                },
                                {
                                    "label": "Stalevo (i.e. combination of Carbidopa, Levodopa, and entacapone)",
                                    "value": "Stalevo"
                                },
                                {
                                    "label": "Madopar or Levodopa-Benserazide",
                                    "value": "Madopar or Levodopa-Benserazide"
                                },
                                {
                                    "label": "Entacapone or Comtan",
                                    "value": "Entacapone or Comtan"
                                },
                                {
                                    "label": "Tolcapone or Tasmar",
                                    "value": "Tolcapone or Tasmar"
                                },
                                {
                                    "label": "Rasagiline or Azilect",
                                    "value": "Rasagiline or Azilect"
                                },
                                {
                                    "label": "Selegiline or Deprenyl or Elderpryl or Zelapar or Emasm",
                                    "value": "Selegiline or Deprenyl or Elderpryl or Zelapar or Emasm"
                                },
                                {
                                    "label": "Pramipexole or Mirapex",
                                    "value": "Pramipexole or Mirapex"
                                },
                                {
                                    "label": "Ropinirole or Requip",
                                    "value": "Ropinirole or Requip"
                                },
                                {
                                    "label": "Neupro patch or Rotigotine patch",
                                    "value": "Neupro patch or Rotigotine patch"
                                },
                                {
                                    "label": "Amantadine or Symmetrel or Gocovri",
                                    "value": "Amantadine or Symmetrel or Gocovri"
                                },
                                {
                                    "label": "Apokyn or Kinmobi or Apomorphine",
                                    "value": "Apokyn or Kinmobi or Apomorphine"
                                },
                                {
                                    "label": "Bromocriptine or Parlodel",
                                    "value": "Bromocriptine or Parlodel"
                                },
                                {
                                    "label": "Onstryv or Xadago or Safinamide",
                                    "value": "Onstryv or Xadago or Safinamide"
                                },
                                {
                                    "label": "Trihexyphenidyl or Artane",
                                    "value": "Trihexyphenidyl or Artane"
                                },
                                {
                                    "label": "Rivastigmine or Exelon",
                                    "value": "Rivastigmine or Exelon"
                                },
                                {
                                    "label": "Donepezil or Aricept",
                                    "value": "Donepezil or Aricept"
                                },
                                {
                                    "label": "Galantamine or Razadyne or Reminyl",
                                    "value": "Galantamine or Razadyne or Reminyl"
                                },
                                {
                                    "label": "Memantine or Namenda or Ebixa",
                                    "value": "Memantine or Namenda or Ebixa"
                                },
                                {
                                    "label": "I take other medications for my Parkinson''s disease that are not on this list",
                                    "value": "I take other medications for my Parkinson''s disease that are not on this list"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "title": "If you take medications for Parkinson''s disease that are not on the list, please write it below.",
                            "textContent": "If you do not take any Parkinson''s disease medication or already listed it above, please skip to the next question.",
                            "key": "PDMedsOthers",
                            "validation": {
                                "required": false
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Are you currently taking medications (prescription or over the counter) for any of the following conditions? (Please check all that apply)",
                            "key": "otherMeds",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "Depression",
                                    "value": "Depression"
                                },
                                {
                                    "label": "Anxiety",
                                    "value": "Anxiety"
                                },
                                {
                                    "label": "Sleep Problems",
                                    "value": "Sleep Problems"
                                },
                                {
                                    "label": "Problems with cognition (e.g. trouble thinking or focusing or trouble with memory",
                                    "value": "Problems with cognition"
                                },
                                {
                                    "label": "Hallucinations (e.g. seeing or hearing things that you know or are told are not there)",
                                    "value": "Hallucinations"
                                },
                                {
                                    "label": "I am not taking medication to treat any of the conditions listed above",
                                    "value": "I am not taking medication to treat any of the conditions listed above"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you ever undergone any of these PD surgeries or procedures? (Please check all that apply)",
                            "key": "PDSurgeries",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "Deep brain stimulation",
                                    "value": "Deep brain stimulation"
                                },
                                {
                                    "label": "Pallidotomy",
                                    "value": "Pallidotomy"
                                },
                                {
                                    "label": "Thalamotomy",
                                    "value": "Thalamotomy"
                                },
                                {
                                    "label": "Focused ultrasound",
                                    "value": "Focused ultrasound"
                                },
                                {
                                    "label": "Gamma knife radiosurgery",
                                    "value": "Gamma knife radiosurgery"
                                },
                                {
                                    "label": "I have not undergone any of the PD procedures listed above",
                                    "value": "I have not undergone any of the PD procedures listed above"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 44;
-- General Health Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "General Health Questionnaire",
    description = "General Health Questionnaire",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "General Health Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "The following questions are about your health. By health, we mean not only the absence of disease or injury, but also physical, mental, and social well-being."
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "Physical Health"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you ever been diagnosed with: (Please check all that apply)",
                            "key": "physicalHealthDiagnosis",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [{
                                "label": "Cancer",
                                "value": "Cancer"
                            },
                            {
                                "label": "Myocardial infarction or angina (heart attack)",
                                "value": "Myocardial infarction or angina"
                            },
                            {
                                "label": "Transient ischemic attack (TIA)",
                                "value": "TIA"
                            },
                            {
                                "label": "Cerebrovascular accident (stroke)",
                                "value": "Stroke"
                            },
                            {
                                "label": "Epilepsy or seizures",
                                "value": "Epilepsy or seizures"
                            },
                            {
                                "label": "Major head injury/trauma with lasting consequences",
                                "value": "Major head injury/trauma with lasting consequences"
                            },
                            {
                                "label": "Respiratory problems",
                                "value": "Respiratory problems"
                            },
                            {
                                "label": "Lung disease",
                                "value": "Lung disease"
                            },
                            {
                                "label": "Anemia or other blood disease",
                                "value": "Anemia or other blood disease"
                            },
                            {
                                "label": "Hypertension (high blood pressure)",
                                "value": "Hypertension"
                            },
                            {
                                "label": "Hypotension (low blood pressure)",
                                "value": "Hypotension"
                            },
                            {
                                "label": "Diabetes",
                                "value": "Diabetes"
                            },
                            {
                                "label": "Hypercholesterolemia (high cholesterol)",
                                "value": "Hypercholesterolemia"
                            },
                            {
                                "label": "Ulcers or stomach disease",
                                "value": "Ulcers or stomach disease"
                            },
                            {
                                "label": "Inflammatory bowel disease (IBD)",
                                "value": "IBD"
                            },
                            {
                                "label": "Liver disease",
                                "value": "Liver disease"
                            },
                            {
                                "label": "Kidney disease",
                                "value": "Kidney disease"
                            },
                            {
                                "label": "Osteoarthritis (degenerative)",
                                "value": "Osteoarthritis (degenerative)"
                            },
                            {
                                "label": "Rheumatoid Arthritis (i.e. autoimmune arthritis)",
                                "value": "Rheumatoid Arthritis"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            },
                            {
                                "label": "None of these",
                                "value": "None of these"
                            }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "Mental Health"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you ever been diagnosed with: (Please check all that apply)",
                            "key": "mentalHealthDiagnosis",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [{
                                "label": "Depression - currently under treatment",
                                "value": "Depression - currently under treatment"
                            },
                            {
                                "label": "Depression - but not currently receiving treatment",
                                "value": "Depression - but not currently receiving treatment"
                            },
                            {
                                "label": "Anxiety - currently under treatment",
                                "value": "Anxiety - currently under treatment"
                            },
                            {
                                "label": "Anxiety - but not currently receiving treatment",
                                "value": "Anxiety - but not currently receiving treatment"
                            },
                            {
                                "label": "Obsessive Compulsive Disorder",
                                "value": "Obsessive Compulsive Disorder"
                            },
                            {
                                "label": "Bipolar Disorder",
                                "value": "Bipolar Disorder"
                            },
                            {
                                "label": "Schizophrenia",
                                "value": "Schizophrenia"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            },
                            {
                                "label": "No history of mental health problems",
                                "value": "No history of mental health problems"
                            }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you gone through menopause, meaning that your menstrual period stopped for at least one year and did not restart?",
                            "key": "menopause",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "No, have not gone through menopause",
                                "value": "No, have not gone through menopause"
                            },
                            {
                                "label": "Yes, have gone through menopause",
                                "value": "Yes, have gone through menopause"
                            },
                            {
                                "label": "Not applicable",
                                "value": "Not applicable"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Is your eyesight (including using glasses or corrective lenses if you use them):",
                            "key": "eyesight",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Excellent",
                                "value": "Excellent"
                            },
                            {
                                "label": "Good",
                                "value": "Good"
                            },
                            {
                                "label": "Poor",
                                "value": "Poor"
                            }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": "Do you have color-blindness?",
                            "key": "color-blindness",
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "vertical",
                            "multipleChoiceOptions": [{
                                "label": "Yes",
                                "value": "Yes"
                            },
                            {
                                "label": "No",
                                "value": "No"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "In the past 12 months, how many times have you been injured in a fall that limited your normal activities?",
                            "key": "injury",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "None",
                                "value": "None"
                            },
                            {
                                "label": "1",
                                "value": "1"
                            },
                            {
                                "label": "2 to 5",
                                "value": "2 to 5"
                            },
                            {
                                "label": "6 to 10",
                                "value": "6 to 10"
                            },
                            {
                                "label": "More than 10",
                                "value": "More than 10"
                            }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "Social situation"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your current marital/partner status?",
                            "key": "marital",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Single, never married, or never lived with a partner",
                                "value": "Single, never married, or never lived with a partner"
                            },
                            {
                                "label": "Married/Living with a partner in a domestic relationship",
                                "value": "Married/Living with a partner in a domestic relationship"
                            },
                            {
                                "label": "Widowed",
                                "value": "Widowed"
                            },
                            {
                                "label": "Divorced/Separated",
                                "value": "Divorced/Separated"
                            },
                            {
                                "label": "Do not wish to disclose",
                                "value": "Do not wish to disclose"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Which best describes your living situation?",
                            "key": "living",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Living alone",
                                "value": "Living alone"
                            },
                            {
                                "label": "Living with spouse/partner/significant other",
                                "value": "Living with spouse/partner/significant other"
                            },
                            {
                                "label": "Living with adult child/children",
                                "value": "Living with adult child/children"
                            },
                            {
                                "label": "Living with other family",
                                "value": "Living with other family"
                            },
                            {
                                "label": "Living with paid in-home care provider/aide",
                                "value": "Living with paid in-home care provider/aide"
                            },
                            {
                                "label": "Living in assisted living facility",
                                "value": "Living in assisted living facility"
                            },
                            {
                                "label": "Living in nursing home",
                                "value": "Living in nursing home"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you consider yourself to be:",
                            "key": "sexuality",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Heterosexual (sexual relations with people of the opposite sex)",
                                "value": "Heterosexual"
                            },
                            {
                                "label": "Homosexual, that is lesbian or gay (sexual relations with people of your own sex)",
                                "value": "Homosexual"
                            },
                            {
                                "label": "Bisexual (sexual relations with people of both sexes)",
                                "value": "Bisexual"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your best estimate of the total household income received by all household members, from all sources, before taxes and deductions, in the past 12 months?",
                            "key": "householdIncome",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Less than $20,000",
                                "value": "Less than $20,000"
                            },
                            {
                                "label": "$20,000 or more, but less than $50,000",
                                "value": "$20,000 or more, but less than $50,000"
                            },
                            {
                                "label": "$50,000 or more, but less than $100,000",
                                "value": "$50,000 or more, but less than $100,000"
                            },
                            {
                                "label": "$100,000 or more, but less than $150,000",
                                "value": "$100,000 or more, but less than $150,000"
                            },
                            {
                                "label": "$150,000 or more",
                                "value": "$150,000 or more"
                            },
                            {
                                "label": "Do not know",
                                "value": "Do not know"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your current employment status?",
                            "key": "employment",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Employed Full-time (30+ hours a week)",
                                "value": "Full-time"
                            },
                            {
                                "label": "Employed Part-time",
                                "value": "Part-time"
                            },
                            {
                                "label": "Unemployed",
                                "value": "Unemployed"
                            },
                            {
                                "label": "Disability Leave",
                                "value": "Disability Leave"
                            },
                            {
                                "label": "Homemaker",
                                "value": "Homemaker"
                            },
                            {
                                "label": "Student",
                                "value": "Student"
                            },
                            {
                                "label": "Volunteer",
                                "value": "Volunteer"
                            },
                            {
                                "label": "Retired",
                                "value": "Retired"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "Habits"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you currently use any of the following? (check all that apply)",
                            "key": "substanceUse",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [{
                                "label": "Alcohol",
                                "value": "Alcohol"
                            },
                            {
                                "label": "Cigarettes",
                                "value": "Cigarettes"
                            },
                            {
                                "label": "Other tobacco products",
                                "value": "Other tobacco products"
                            },
                            {
                                "label": "Recreational drugs",
                                "value": "Recreational drugs"
                            },
                            {
                                "label": "Cannabis",
                                "value": "Cannabis"
                            },
                            {
                                "label": "None of the above",
                                "value": "None of the above"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you smoked at least 100 cigarettes in your life?",
                            "key": "cigarettes",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Yes",
                                "value": "Yes"
                            },
                            {
                                "label": "No",
                                "value": "No"
                            },
                            {
                                "label": "Don''t know",
                                "value": "Don''t know"
                            }]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your current smoking status?",
                            "key": "smoking",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Not a smoker",
                                "value": "Not a smoker"
                            },
                            {
                                "label": "Current smoker: 20 or more cigarettes per day",
                                "value": "Current smoker: 20 or more cigarettes per day"
                            },
                            {
                                "label": "Current smoker: 10-19 cigarettes per day",
                                "value": "Current smoker: 10-19 cigarettes per day"
                            },
                            {
                                "label": "Current smoker: 0-9 cigarettes per day",
                                "value": "Current smoker: 0-9 cigarettes per day"
                            },
                            {
                                "label": "Quit in last year",
                                "value": "Quit in last year"
                            },
                            {
                                "label": "Quit in last 5 years",
                                "value": "Quit in last 5 years"
                            },
                            {
                                "label": "Quit in last 15 years",
                                "value": "Quit in last 15 years"
                            },
                            {
                                "label": "Quit in last 15 years",
                                "value": "Quit in last 15 years"
                            },
                            {
                                "label": "Quit >25 years ago",
                                "value": "Quit >25 years ago"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you ever drank alcohol?",
                            "key": "alcohol",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Yes",
                                "value": "Yes"
                            },
                            {
                                "label": "No",
                                "value": "No"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "About how often during the past 12 months did you drink alcohol?",
                            "key": "alcoholUse",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Almost every day (6-7 times a week)",
                                "value": "Almost every day"
                            },
                            {
                                "label": "4-5 times a week",
                                "value": "4-5 times a week"
                            },
                            {
                                "label": "2-3 times a week",
                                "value": "2-3 times a week"
                            },
                            {
                                "label": "Once a week",
                                "value": "Once a week"
                            },
                            {
                                "label": "2-3 times a month",
                                "value": "2-3 times a month"
                            },
                            {
                                "label": "About once a month",
                                "value": "Once a month"
                            },
                            {
                                "label": "Less than once a month",
                                "value": "Less than once a month"
                            },
                            {
                                "label": "Never",
                                "value": "Never"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How much time do you spend engaging in mental exercise (e.g. playing board games, cards, crossword puzzles, jigsaw puzzles, sudoku, playing a musical instrument)",
                            "key": "mentalExercise",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Every day",
                                "value": "Every day"
                            },
                            {
                                "label": "Several times a week",
                                "value": "Several times a week"
                            },
                            {
                                "label": "Several times a month",
                                "value": "Several times a month"
                            },
                            {
                                "label": "Several times a year",
                                "value": "Several times a year"
                            },
                            {
                                "label": "Once a year or less",
                                "value": "Once a year or less"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How often do you exercise?",
                            "key": "exercise",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Less than 1 time per week",
                                "value": "Less than 1 time per week"
                            },
                            {
                                "label": "1 to 2 days per week",
                                "value": "1 to 2 days per week"
                            },
                            {
                                "label": "3 to 5 days per week",
                                "value": "3 to 5 days per week"
                            },
                            {
                                "label": "6 to 7 days per week",
                                "value": "6 to 7 days per week"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How long is one exercise session approximately?",
                            "key": "exerciseSession",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Less than 30 minutes",
                                "value": "Less than 30 minutes"
                            },
                            {
                                "label": "30 to 60 minutes",
                                "value": "30 to 60 minutes"
                            },
                            {
                                "label": "1 to 2 hours",
                                "value": "1 to 2 hours"
                            },
                            {
                                "label": "More than 2 hours",
                                "value": "More than 2 hours"
                            }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "Sleep"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How often is your sleep restless?",
                            "key": "restlessSleep",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "All of the time (5-7 days per week)",
                                "value": "All of the time"
                            },
                            {
                                "label": "Occasionally (3-4 days per week)",
                                "value": "Occasionally"
                            },
                            {
                                "label": "Some of the time (1-2 days per week)",
                                "value": "Some of the time"
                            },
                            {
                                "label": "Rarely or never (less than 1 day per week)",
                                "value": "Rarely or never"
                            }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": "Have you ever been told, or suspected yourself, that you seem to ''act out your dreams'' while asleep (for example, punching, flailing your arms in the air, making running movements, etc.)?",
                            "key": "actOutSleep",
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "vertical",
                            "multipleChoiceOptions": [{
                                "label": "Yes",
                                "value": "Yes"
                            },
                            {
                                "label": "No",
                                "value": "No"
                            }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 45;
-- Deception Debrief Info Display
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Deception Debrief",
    description = "Debriefing about the deception used in the study",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Debriefing About The Deception Used In The Study",
                    "sections": [
                        {
                            "header": "",
                            "textContent": "Thank you for participating!"
                        },
                        {
                            "header": "",
                            "textContent": "Earlier, we informed you that our study was about measuring aspect of cognition. While this is true, we were specifically interested in <b>the effects of stress on cognition</b>. As a result, one of the two sessions involved the participants placing their hand in ice water and being socially evaluated in order to create a short-term stressful experience."
                        },
                        {
                            "header": "",
                            "textContent": "In order to properly study this, <b>it was required that we deceive you about the actual nature of the study</b>. We could not warn you that you would experience stress because knowing this in advance would have minimized the experience of the stress."
                        },
                        {
                            "header": "",
                            "textContent": "The specific deception elements in this study included:"
                        },
                        {
                            "header": "",
                            "textContent": "1. Not telling you in the consent form that this study was about the effect of stress on cognition."
                        },
                        {
                            "header": "",
                            "textContent": "2. Ice water task: "
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "a. We withheld the amount of time that we required you keep your hand in the ice water, which was a maximum of three minutes."
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "b. We refused to answer any questions you had throughout the task."
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "c. We said that removing your hand from the ice water would impact our study when in fact it was only used to induce stress."
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "d. We instructed the research assistant to behave in a cold, stoic matter and act like they were evaluating your behavior when in fact they were only pretending to do so to add an element of social stress."
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "e. We told you that you were being filmed to have the videos analyzed but the videos were deleted immediately after recording and were only used to add to the stress of the experience."
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "f. We told you the goal of the ice water task was to measure pain tolerance when it was actually our means of inducing stress."
                        },
                        {
                            "header": "",
                            "textContent": "Given the ubiquitous nature of stress, it is critical that we study it in order to understand the range of consequences it can hold for brain health."
                        },
                        {
                            "header": "",
                            "textContent": "We followed standard research procedures commonly used to cause stress in the research setting. <b>The stress was meant to be relatively mild and very short-term</b>. If you still feel lingering effects of this stress, or have any questions about the study or your rights as a participant, please contact us:"
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "<b>Madeleine Sharp, Department of Neurology and Neurosurgery, Montreal Neurological Institute, McGill University: madeleine.sharp@mcgill.ca or sharplab.neuro@mcgill.ca"
                        },
                        {
                            "header": "",
                            "textContent": "Please also consider the following mental health resource: Mental Health Services Locator - http://store.samhsa.gov/mhlocator"
                        },
                        {
                            "header": "",
                            "textContent": "Finally, if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223."
                        },
                        {
                            "header": "",
                            "textContent": "Thank you again for your participation!"
                        }
                    ],
                    "buttons": {
                        "displayContinueButton": true
                    }
                }
            }
        ]
    }'
WHERE id = 46;
-- SART
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "SART",
    description = "Sustained Attention to Response Task",
    external_url = "",
    config = '{
        "taskConfig": {
            "counterBalanceGroups": {
                "1": "ascending",
                "2": "random"
            }
        },
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Welcome to the Spot The Number Game!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will see numbers flash on the screen very quickly, followed by an X."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Your job is to press the LEFT arrow ( ⬅️ ) for every number <b>EXCEPT</b> for the <b>number 3</b>."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "When you see the <b>number 3</b> you must <b>NOT</b> press any key at all, simply wait for the next number."
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "left",
                            "imagePath": "/assets/images/instructions/SART/visual_instructions.png"
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
                    "title": "Let''s practice!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Remember, press the ( ⬅️ ) for all numbers except for 3"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "When you see 3, don''t press anything and wait for the next number to appear."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The numbers will appear very quickly, so be ready!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click START to begin the practice"
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
                "componentName": "SARTCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 900,
                    "interTrialDelay": 200,
                    "durationFeedbackPresented": 1500,
                    "durationStimulusPresented": 250,
                    "trialSize": 18,
                    "nogoTrialNum": 4,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Well done!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Now you are ready for the real game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember, press the ( ⬅️ ) key for all numbers except for 3"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "When you see 3, don''t press anything and wait for the next number to appear"
                        },
                        {
                            "sectionType": "",
                            "textContent": "Click START to begin"
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
                "componentName": "SARTCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 900,
                    "interTrialDelay": 200,
                    "durationFeedbackPresented": 1500,
                    "durationStimulusPresented": 250,
                    "trialSize": 225,
                    "counterbalanceMode": "counterbalance",
                    "nogoTrialNum": 25,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "It''s break time",
                    "timerConfig": {
                        "timer": 35000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 5
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have to wait for at least 20 seconds before being able to continue"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The next round will automatically start in 35 seconds unless you choose to continue sooner"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click START when you are ready"
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
                "componentName": "SARTCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 900,
                    "interTrialDelay": 200,
                    "durationFeedbackPresented": 1500,
                    "durationStimulusPresented": 250,
                    "trialSize": 225,
                    "counterbalanceMode": "counterbalance-alternative",
                    "nogoTrialNum": 25,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "You have completed the task, thank you!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Click next to continue"
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 47;
-- Break Display Slide INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Break Display Slide",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Thank you for your participation and for sticking with it so far!",
                    "sections": [
                        {
                            "header": "A few reminders:",
                            "textContent": ""
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "1. You can take breaks if you want to. We simply ask that you <b>wait until the end of a game or of a questionnaire</b>, otherwise your data will be lost."
                        },
                        {
                            "header": "",
                            "indent": 2,
                            "textContent": "<b>To take a break:</b> simply close this window."
                        },
                        {
                            "header": "",
                            "indent": 2,
                            "textContent": "<b>To get back to it:</b> use the link you were sent in the email. It will take you to the log-in page."
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "2. Please complete the full set of brain games within 1 week from when you started."
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "3. We also ask that you do the games when you are feeling ''ON'', i.e. when the PD medications are in effect (typically best about 1-2 hours after your last dose). If you don''t take PD medications, then please choose the time that works best for you."
                        },
                        {
                            "header": "",
                            "textContent": "<b>QUESTIONS OR EXPERIENCING DIFFICULTIES?</b>"
                        },
                        {
                            "header": "",
                            "textContent": "sharplab.neuro@mcgill.ca"
                        },
                        {
                            "header": "",
                            "textContent": "To take a break now, close the window."
                        },
                        {
                            "header": "",
                            "textContent": "To continue, please click CONTINUE"
                        }
                    ],
                    "buttons": {
                        "displayContinueButton": true
                    }
                }
            }
        ]
    }'
WHERE id = 48;
-- Welcome Display Slide INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Welcome Display Slide",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Welcome to the study of Neurocognition on the Web for PD - Evaluation of Reliability",
                    "sections": [
                        {
                            "header": "Thank you for participating in our study!",
                            "textContent": ""
                        },
                        {
                            "header": "",
                            "textContent": "You will be playing a series of brain games to help us better understand the thinking and memory changes experienced by people with Parkinson''s disease."
                        },
                        {
                            "header": "",
                            "textContent": "You can do this all in one sitting, or leave (by closing the window) and come back another day."
                        },
                        {
                            "header": "",
                            "textContent": "Please aim to do all the games over the course of one week. You can see your progress in your dashboard when you first log in."
                        },
                        {
                            "header": "",
                            "textContent": "Throughout this study, please feel free to take breaks! We simply ask that you wait until the end of a game or of a questionnaire, otherwise your data will be lost."
                        },
                        {
                            "header": "",
                            "textContent": "<b>To take a break:</b> simply close this window."
                        },
                        {
                            "header": "",
                            "textContent": "<b>To get back to it:</b> use the link you were sent in the email. It will take you to the log-in page."
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": "We also ask that you do the games when you are feeling ''ON'', i.e. when the PD medications are in effect (typically best about 1-2 hours after your last dose)."
                        },
                        {
                            "textContent": "<b>QUESTIONS OR EXPERIENCING DIFFICULTIES?</b>"
                        },
                        {
                            "header": "",
                            "textContent": "sharplab.neuro@mcgill.ca"
                        },
                        {
                            "header": "",
                            "textContent": "To take a break now, close the window."
                        },
                        {
                            "header": "",
                            "textContent": "To continue, please click CONTINUE"
                        }
                    ],
                    "buttons": {
                        "displayContinueButton": true
                    }
                }
            }
        ]
    }'
WHERE id = 49;
-- End Display Slide INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "End Display Slide",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "You have successfully completed the Neurocognition on the Web study!",
                    "sections": [
                        {
                            "header": "Thank you for participating in our study!",
                            "textContent": ""
                        },
                        {
                            "header": "",
                            "textContent": "If you have any questions about our study, please feel free to contact us through our email."
                        },
                        {
                            "header": "",
                            "textContent": "If you reside in <b>Montreal</b>, and you haven''t already, please also contact us (sharplab.neuro@mcgill.ca) to schedule your in-person session."
                        },
                        {
                            "header": "",
                            "textContent": "If you <b>do not</b> reside in <b>Montreal</b>, then no need to worry, you have successfully completed all the games!"
                        },
                        {
                            "header": "",
                            "textContent": "Furthermore, we would love to hear your feedback and your experience using our platform, as this project is still a work in progress."
                        },
                        {
                            "header": "",
                            "textContent": "If you are in full-screen mode, you can press ''esc'' to exit, then close the window or browser. You can also click \\"Continue\\" which will bring you back to your dashboard."
                        },
                        {
                            "header": "",
                            "textContent": "Thank you so much for participating!"
                        },
                        {
                            "header": "",
                            "textContent": "<b>Contact Email:</b> sharplab.neuro@mcgill.ca"
                        }
                    ],
                    "buttons": {
                        "displayContinueButton": true
                    }
                }
            }
        ]
    }'
WHERE id = 50;
-- Stress Study Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Stress Study Questionnaire",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "input",
                            "title": "What is your age (in years)?",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "min": 18
                            },
                            "key": "age"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What sex were you assigned at birth?",
                            "validation": {
                                "required": true
                            },
                            "key": "sex",
                            "multipleChoiceOptions": [{
                                    "label": "Female",
                                    "value": "female"
                                },
                                {
                                    "label": "Male",
                                    "value": "male"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How do you describe yourself?",
                            "key": "selfIdentification",
                            "multipleChoiceOptions": [{
                                    "label": "Female",
                                    "value": "female"
                                },
                                {
                                    "label": "Male",
                                    "value": "male"
                                },
                                {
                                    "label": "Nonbinary",
                                    "value": "Nonbinary"
                                },
                                {
                                    "label": "Do not identify as female, male, or Nonbinary",
                                    "value": "none"
                                }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you consider yourself to be:",
                            "key": "sexuality",
                            "validation": {
                            "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Heterosexual (sexual relations with people of the opposite sex)",
                                "value": "Heterosexual"
                            },
                            {
                                "label": "Homosexual, that is lesbian or gay (sexual relations with people of your own sex)",
                                "value": "Homosexual"
                            },
                            {
                                "label": "Bisexual (sexual relations with people of both sexes)",
                                "value": "Bisexual"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "input",
                            "key": "yearsOfEducation",
                            "title": "How many years of education do you have (completing high school equals 12 years)?",
                            "validation": {
                                "isNumeric": true,
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "currentEmploymentStatus",
                            "title": "What is your current employment status?",
                            "multipleChoiceOptions": [{
                                "label": "Employed Full-time (30+ hours a week)",
                                "value": "Full-time"
                            },
                            {
                                "label": "Employed Part-time",
                                "value": "Part-time"
                            },
                            {
                                "label": "Unemployed",
                                "value": "Unemployed"
                            },
                            {
                                "label": "Disability Leave",
                                "value": "Disability Leave"
                            },
                            {
                                "label": "Homemaker",
                                "value": "Homemaker"
                            },
                            {
                                "label": "Student",
                                "value": "Student"
                            },
                            {
                                "label": "Volunteer",
                                "value": "Volunteer"
                            },
                            {
                                "label": "Retired",
                                "value": "Retired"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your best estimate of the total household income received by all household members, from all sources, before taxes and deductions, in the past 12 months?",
                            "key": "householdIncome",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Less than $20,000",
                                "value": "Less than $20,000"
                            },
                            {
                                "label": "$20,000 or more, but less than $50,000",
                                "value": "$20,000 or more, but less than $50,000"
                            },
                            {
                                "label": "$50,000 or more, but less than $100,000",
                                "value": "$50,000 or more, but less than $100,000"
                            },
                            {
                                "label": "$100,000 or more, but less than $150,000",
                                "value": "$100,000 or more, but less than $150,000"
                            },
                            {
                                "label": "$150,000 or more",
                                "value": "$150,000 or more"
                            },
                            {
                                "label": "Do not know",
                                "value": "Do not know"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your current marital/partner status?",
                            "key": "marital",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Single, never married, or never lived with a partner",
                                "value": "Single, never married, or never lived with a partner"
                            },
                            {
                                "label": "Married/Living with a partner in a domestic relationship",
                                "value": "Married/Living with a partner in a domestic relationship"
                            },
                            {
                                "label": "Widowed",
                                "value": "Widowed"
                            },
                            {
                                "label": "Divorced/Separated",
                                "value": "Divorced/Separated"
                            },
                            {
                                "label": "In a relationship",
                                "value": "In a relationship"
                            },
                            {
                                "label": "Do not wish to disclose",
                                "value": "Do not wish to disclose"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Which best describes your living situation?",
                            "key": "living",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Living alone",
                                "value": "Living alone"
                            },
                            {
                                "label": "Living with spouse/partner/significant other",
                                "value": "Living with spouse/partner/significant other"
                            },
                            {
                                "label": "Living with adult child/children",
                                "value": "Living with adult child/children"
                            },
                            {
                                "label": "Living with other family",
                                "value": "Living with other family"
                            },
                            {
                                "label": "Living with paid in-home care provider/aide",
                                "value": "Living with paid in-home care provider/aide"
                            },
                            {
                                "label": "Living in assisted living facility",
                                "value": "Living in assisted living facility"
                            },
                            {
                                "label": "Living in nursing home",
                                "value": "Living in nursing home"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "title": "The following questions are about your health. By health, we mean not only the absence of disease or injury, but also physical, mental, and social well-being."
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "Physical Health"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you ever been diagnosed with: (Please check all that apply)",
                            "key": "physicalHealthDiagnosis",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [{
                                "label": "Cancer",
                                "value": "Cancer"
                            },
                            {
                                "label": "Myocardial infarction or angina (heart attack)",
                                "value": "Myocardial infarction or angina"
                            },
                            {
                                "label": "Transient ischemic attack (TIA)",
                                "value": "TIA"
                            },
                            {
                                "label": "Cerebrovascular accident (stroke)",
                                "value": "Stroke"
                            },
                            {
                                "label": "Epilepsy or seizures",
                                "value": "Epilepsy or seizures"
                            },
                            {
                                "label": "Major head injury/trauma with lasting consequences",
                                "value": "Major head injury/trauma with lasting consequences"
                            },
                            {
                                "label": "Respiratory problems",
                                "value": "Respiratory problems"
                            },
                            {
                                "label": "Lung disease",
                                "value": "Lung disease"
                            },
                            {
                                "label": "Anemia or other blood disease",
                                "value": "Anemia or other blood disease"
                            },
                            {
                                "label": "Hypertension (high blood pressure)",
                                "value": "Hypertension"
                            },
                            {
                                "label": "Hypotension (low blood pressure)",
                                "value": "Hypotension"
                            },
                            {
                                "label": "Diabetes",
                                "value": "Diabetes"
                            },
                            {
                                "label": "Hypercholesterolemia (high cholesterol)",
                                "value": "Hypercholesterolemia"
                            },
                            {
                                "label": "Ulcers or stomach disease",
                                "value": "Ulcers or stomach disease"
                            },
                            {
                                "label": "Inflammatory bowel disease (IBD)",
                                "value": "IBD"
                            },
                            {
                                "label": "Liver disease",
                                "value": "Liver disease"
                            },
                            {
                                "label": "Kidney disease",
                                "value": "Kidney disease"
                            },
                            {
                                "label": "Osteoarthritis (degenerative)",
                                "value": "Osteoarthritis (degenerative)"
                            },
                            {
                                "label": "Rheumatoid Arthritis (i.e. autoimmune arthritis)",
                                "value": "Rheumatoid Arthritis"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            },
                            {
                                "label": "None of these",
                                "value": "None of these"
                            }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "Mental Health"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you ever been diagnosed with: (Please check all that apply)",
                            "key": "mentalHealthDiagnosis",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [{
                                "label": "Depression - currently under treatment",
                                "value": "Depression - currently under treatment"
                            },
                            {
                                "label": "Depression - but not currently receiving treatment",
                                "value": "Depression - but not currently receiving treatment"
                            },
                            {
                                "label": "Anxiety - currently under treatment",
                                "value": "Anxiety - currently under treatment"
                            },
                            {
                                "label": "Anxiety - but not currently receiving treatment",
                                "value": "Anxiety - but not currently receiving treatment"
                            },
                            {
                                "label": "Obsessive Compulsive Disorder",
                                "value": "Obsessive Compulsive Disorder"
                            },
                            {
                                "label": "Bipolar Disorder",
                                "value": "Bipolar Disorder"
                            },
                            {
                                "label": "Schizophrenia",
                                "value": "Schizophrenia"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            },
                            {
                                "label": "No history of mental health problems",
                                "value": "No history of mental health problems"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Is your eyesight (including using glasses or corrective lenses if you use them):",
                            "key": "eyesight",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Excellent",
                                "value": "Excellent"
                            },
                            {
                                "label": "Good",
                                "value": "Good"
                            },
                            {
                                "label": "Poor",
                                "value": "Poor"
                            }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": "Do you have color-blindness?",
                            "key": "color-blindness",
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "vertical",
                            "multipleChoiceOptions": [{
                                "label": "Yes",
                                "value": "Yes"
                            },
                            {
                                "label": "No",
                                "value": "No"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "In the past 12 months, how many times have you been injured in a fall that limited your normal activities?",
                            "key": "injury",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "None",
                                "value": "None"
                            },
                            {
                                "label": "1",
                                "value": "1"
                            },
                            {
                                "label": "2 to 5",
                                "value": "2 to 5"
                            },
                            {
                                "label": "6 to 10",
                                "value": "6 to 10"
                            },
                            {
                                "label": "More than 10",
                                "value": "More than 10"
                            }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "title": "Habits"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you currently use any of the following? (check all that apply)",
                            "key": "substanceUse",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [{
                                "label": "Alcohol",
                                "value": "Alcohol"
                            },
                            {
                                "label": "Cigarettes",
                                "value": "Cigarettes"
                            },
                            {
                                "label": "Other tobacco products",
                                "value": "Other tobacco products"
                            },
                            {
                                "label": "Recreational drugs",
                                "value": "Recreational drugs"
                            },
                            {
                                "label": "Cannabis",
                                "value": "Cannabis"
                            },
                            {
                                "label": "None of the above",
                                "value": "None of the above"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you smoked at least 100 cigarettes in your life?",
                            "key": "cigarettes",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Yes",
                                "value": "Yes"
                            },
                            {
                                "label": "No",
                                "value": "No"
                            },
                            {
                                "label": "Don''t know",
                                "value": "Don''t know"
                            }]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your current smoking status?",
                            "key": "smoking",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Current smoker: 20 or more cigarettes per day",
                                "value": "Current smoker: 20 or more cigarettes per day"
                            },
                            {
                                "label": "Current smoker: 10-19 cigarettes per day",
                                "value": "Current smoker: 10-19 cigarettes per day"
                            },
                            {
                                "label": "Current smoker: 0-9 cigarettes per day",
                                "value": "Current smoker: 0-9 cigarettes per day"
                            },
                            {
                                "label": "Quit in last year",
                                "value": "Quit in last year"
                            },
                            {
                                "label": "Quit in last 5 years",
                                "value": "Quit in last 5 years"
                            },
                            {
                                "label": "Quit in last 10 years",
                                "value": "Quit in last 10 years"
                            },
                            {
                                "label": "Quit in last 15 years",
                                "value": "Quit in last 15 years"
                            },
                            {
                                "label": "Quit in last 20 years",
                                "value": "Quit in last 20 years"
                            },
                            {
                                "label": "Quit >25 years ago",
                                "value": "Quit >25 years ago"
                            },
                            {
                                "label": "Does not smoke",
                                "value": "Does not smoke"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Have you ever drank alcohol?",
                            "key": "alcohol",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Yes",
                                "value": "Yes"
                            },
                            {
                                "label": "No",
                                "value": "No"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "About how often during the past 12 months did you drink alcohol?",
                            "key": "alcoholUse",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Almost every day (6-7 times a week)",
                                "value": "Almost every day"
                            },
                            {
                                "label": "4-5 times a week",
                                "value": "4-5 times a week"
                            },
                            {
                                "label": "2-3 times a week",
                                "value": "2-3 times a week"
                            },
                            {
                                "label": "Once a week",
                                "value": "Once a week"
                            },
                            {
                                "label": "2-3 times a month",
                                "value": "2-3 times a month"
                            },
                            {
                                "label": "About once a month",
                                "value": "Once a month"
                            },
                            {
                                "label": "Less than once a month",
                                "value": "Less than once a month"
                            },
                            {
                                "label": "Never",
                                "value": "Never"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How much time do you spend engaging in mental exercise (e.g. playing board games, cards, crossword puzzles, jigsaw puzzles, sudoku, playing a musical instrument)",
                            "key": "mentalExercise",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Every day",
                                "value": "Every day"
                            },
                            {
                                "label": "Several times a week",
                                "value": "Several times a week"
                            },
                            {
                                "label": "Several times a month",
                                "value": "Several times a month"
                            },
                            {
                                "label": "Several times a year",
                                "value": "Several times a year"
                            },
                            {
                                "label": "Once a year or less",
                                "value": "Once a year or less"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How often do you exercise?",
                            "key": "exercise",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Less than 1 time per week",
                                "value": "Less than 1 time per week"
                            },
                            {
                                "label": "1 to 2 days per week",
                                "value": "1 to 2 days per week"
                            },
                            {
                                "label": "3 to 5 days per week",
                                "value": "3 to 5 days per week"
                            },
                            {
                                "label": "6 to 7 days per week",
                                "value": "6 to 7 days per week"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How long is one exercise session approximately?",
                            "key": "exerciseSession",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Less than 30 minutes",
                                "value": "Less than 30 minutes"
                            },
                            {
                                "label": "30 to 60 minutes",
                                "value": "30 to 60 minutes"
                            },
                            {
                                "label": "1 to 2 hours",
                                "value": "1 to 2 hours"
                            },
                            {
                                "label": "More than 2 hours",
                                "value": "More than 2 hours"
                            }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "Sleep"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How often is your sleep restless?",
                            "key": "restlessSleep",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "All of the time (5-7 days per week)",
                                "value": "All of the time"
                            },
                            {
                                "label": "Occasionally (3-4 days per week)",
                                "value": "Occasionally"
                            },
                            {
                                "label": "Some of the time (1-2 days per week)",
                                "value": "Some of the time"
                            },
                            {
                                "label": "Rarely or never (less than 1 day per week)",
                                "value": "Rarely or never"
                            }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": "Have you ever been told, or suspected yourself, that you seem to \\"act out your dreams\\" while asleep (for example, talking, punching, flailing your arms in the air, making running movements, etc.)?",
                            "key": "actOutSleep",
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "vertical",
                            "multipleChoiceOptions": [{
                                "label": "Yes",
                                "value": "Yes"
                            },
                            {
                                "label": "No",
                                "value": "No"
                            }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "title": "The following questions are general questions about you. If you don''t have Parkinson''s disease (PD), not all of them will apply to you, so select the \\"I don''t have Parkinson''s disease\\" option."
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": "Do you have a diagnosis of Parkinson’s disease given to you by a doctor (e.g. family doctor or neurologist)?",
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "vertical",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "No, but I think I have Parkinson''s disease",
                                    "value": "No, but I think I have Parkinson''s disease"
                                }
                            ],
                            "key": "havePD"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you currently take medication for Parkinson''s disease?",
                            "validation": {
                                "required": true
                            },
                            "key": "takePDMed",
                            "multipleChoiceOptions": [
                                {
                                    "label": "I don''t have Parkinson''s disease",
                                    "value": "I don''t have Parkinson''s disease"
                                },
                                {
                                    "label": "I have PD but don''t take medications for it",
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": "I have PD and I take medications for it",
                                    "value": "I have PD and I take medications for it"
                                }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "If you answered previously that you do take Parkinson''s disease medication, how long ago did you take it?"
                        },
                        {
                            "questionType": "input",
                            "textContent": "If you answered that you don''t take any Parkinson''s medication in the last question, please write \\"0\\".",
                            "key": "lastDoseHour",
                            "label": "Hours",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 24,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "input",
                            "key": "lastDoseMinute",
                            "label": "Minutes",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 60,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you feel ON (i.e. can feel that the PD medications are taking effect) or OFF (i.e. medications are not currently taking effect)?",
                            "key": "onOffMed",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "I don''t have Parkinson''s disease",
                                    "value": "I don''t have Parkinson''s disease"
                                },
                                {
                                    "label": "I have PD but don''t take medications for it",
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": "I feel ON",
                                    "value": "I feel ON"
                                },
                                {
                                    "label": "I feel OFF",
                                    "value": "I feel OFF"
                                },
                                {
                                    "label": "I can not tell the difference",
                                    "value": "I can not tell the difference"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have a diagnosis of Mild Cognitive Impairment (MCI) given to you by a doctor?",
                            "key": "diagnosisMCI",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "No, but I think I have cognitive impairment",
                                    "value": "No, but I think I have cognitive impairment"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have a family history of Parkinson’s disease?",
                            "key": "familyHistory",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes, my biological mother or father has/had Parkinson’s disease",
                                    "value": "Yes, biological mother or father"
                                },
                                {
                                    "label": "Yes, one of my siblings has/had Parkinson’s disease",
                                    "value": "Yes, siblings"
                                },
                                {
                                    "label": "Yes, one of my children has/had Parkinson’s disease",
                                    "value": "Yes, children"
                                },
                                {
                                    "label": "Yes, an uncle/aunt/cousin or other blood relative has/had Parkinson’s disease",
                                    "value": "Yes, relative"
                                },
                                {
                                    "label": "No, no family history",
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your handedness?",
                            "key": "handedness",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Right-handed",
                                "value": "Right"
                            },
                            {
                                "label": "Left-handed",
                                "value": "Left"
                            },
                            {
                                "label": "Ambidextrous",
                                "value": "Ambidextrous"
                            }]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "To which group do you culturally belong or identify with? (Select all that apply)",
                            "key": "background",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "White / Caucasian",
                                    "value": "White/Caucasian"
                                },
                                {
                                    "label": "French Canadian",
                                    "value": "French Canadian"
                                },
                                {
                                    "label": "First Nations",
                                    "value": "First Nations"
                                },
                                {
                                    "label": "Hispanic or Latino",
                                    "value": "Hispanic or Latino"
                                },
                                {
                                    "label": "African / Carribean / Afro American",
                                    "value": "African/Carribean/Afro American"
                                },
                                {
                                    "label": "North African",
                                    "value": "North African"
                                },
                                {
                                    "label": "Middle Eastern",
                                    "value": "Middle Eastern"
                                },
                                {
                                    "label": "Chinese",
                                    "value": "Chinese"
                                },
                                {
                                    "label": "South Asian (E.g. Indian, Pakistani, Sri Lankan)",
                                    "value": "South Asian"
                                },
                                {
                                    "label": "Southeast Asian (E.g. Filipino, Cambodian, Indonesian, Laotian, Vietnamese)",
                                    "value": "Southeast Asian"
                                },
                                {
                                    "label": "Japanese",
                                    "value": "Japanese"
                                },
                                {
                                    "label": "Korean",
                                    "value": "Korean"
                                },
                                {
                                    "label": "Other",
                                    "value": "Other"
                                },
                                {
                                    "label": "Don''t know",
                                    "value": "Don''t know"
                                },
                                {
                                    "label": "Prefer not to answer",
                                    "value": "Prefer not to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "To which ethnicity do you belong or identify with? (Select all that apply)",
                            "key": "background",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "White / Caucasian",
                                    "value": "White/Caucasian"
                                },
                                {
                                    "label": "French Canadian",
                                    "value": "French Canadian"
                                },
                                {
                                    "label": "First Nations",
                                    "value": "First Nations"
                                },
                                {
                                    "label": "Hispanic or Latino",
                                    "value": "Hispanic or Latino"
                                },
                                {
                                    "label": "African / Carribean / Afro American",
                                    "value": "African/Carribean/Afro American"
                                },
                                {
                                    "label": "North African",
                                    "value": "North African"
                                },
                                {
                                    "label": "Middle Eastern",
                                    "value": "Middle Eastern"
                                },
                                {
                                    "label": "Chinese",
                                    "value": "Chinese"
                                },
                                {
                                    "label": "South Asian (E.g. Indian, Pakistani, Sri Lankan)",
                                    "value": "South Asian"
                                },
                                {
                                    "label": "Southeast Asian (E.g. Filipino, Cambodian, Indonesian, Laotian, Vietnamese)",
                                    "value": "Southeast Asian"
                                },
                                {
                                    "label": "Japanese",
                                    "value": "Japanese"
                                },
                                {
                                    "label": "Korean",
                                    "value": "Korean"
                                },
                                {
                                    "label": "Other",
                                    "value": "Other"
                                },
                                {
                                    "label": "Don''t know",
                                    "value": "Don''t know"
                                },
                                {
                                    "label": "Prefer not to answer",
                                    "value": "Prefer not to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Which of the following languages do you consider yourself fluent in (can read and speak)? Select all that apply.",
                            "key": "fluentLan",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "English",
                                    "value": "English"
                                },
                                {
                                    "label": "French",
                                    "value": "French"
                                },
                                {
                                    "label": "Neither",
                                    "value": "Neither"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you feel that your memory and thinking have gotten worse?",
                            "textContent": "If you have Parkinson''s disease, consider the change since your diagnosis, or, if you don''t have Parkinson''s disease, consider the change in the last few years.",
                            "key": "memory",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "Not sure",
                                    "value": "Not sure"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 51;
-- Face Name Association
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Face Name Association Task",
    description = "Participants learn face name pairs and are then tested on these pairs",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Welcome to the Face Name Association Game",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will be shown a face and a name on the screen"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will start by memorizing the phase name pairings. You will see these pairs twice in random order."
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
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "phase": "learning-phase",
                    "maxResponseTime": 10000,
                    "stimulusSet": 1,
                    "interTrialDelay": 500,
                    "durationStimulusPresented": 3000,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Take a break",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have been shown the face name pairs."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will be shown the face name pairs again in a different random order"
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
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "phase": "learning-phase",
                    "maxResponseTime": 10000,
                    "stimulusSet": 1,
                    "interTrialDelay": 500,
                    "durationStimulusPresented": 3000,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Testing phase",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have been shown the face name pairs."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will now be tested on the different face name pairings"
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
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "phase": "test-phase",
                    "maxResponseTime": 10000,
                    "stimulusSet": 1,
                    "interTrialDelay": 500,
                    "durationStimulusPresented": 3000,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Congrats!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have completed the entire task"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation"
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
WHERE id = 52;
-- PLT (PAVLOVIA)
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "PLT",
    description = "This task is a probablistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501.",
    external_url = "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task/html",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task/html"
                }
            }
        ]
    }'
WHERE id = 53;
-- Stress Study: Post Manipulation Check In Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Stress Study: Post Manipulation Check In",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title":"Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "With regards to the situation you just experienced, please consider how you are feeling in this current moment when answering the following questions. Drag the marker to the appropriate position on the 0-100 scale with 0 being \\"not feeling this at all\\" and 100 being \\"extremely feeling this\\"."
                        },
                        {
                            "questionType": "displayText",
                            "title": "Use your mouse to drag the marker in order to select your answer"
                        },
                        {
                            "questionType": "slider",
                            "title": "How stressed do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How stressed do you feel?",
                            "legend": [
                                "Not feeling this at all",
                                "Extremely feeling this"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How pleased do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How pleased do you feel?",
                            "legend": [
                                "Not feeling this at all",
                                "Extremely feeling this"
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": "How calm do you feel?",
                            "validation": {
                                "required":true
                            },
                            "key": "How calm do you feel?",
                            "legend": [
                                "Not feeling this at all",
                                "Extremely feeling this"
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 54;
-- Stress Study Wait INFO DISPLAY
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Stress Study Wait Slide",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Thank you for all your participation so far!",
                    "sections": [
                        {
                            "textContent": "Once you have reached this slide, please <b>wait</b> and <b>do not</b> press any buttons until you are instructed by the researcher to proceed to the next task."
                        },
                        {
                            "textContent": "The researcher will return shortly."
                        }
                    ],
                    "buttons": {
                        "displayContinueButton": true
                    }
                }
            }
        ]
    }'
WHERE id = 55;
-- PLT
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Probabilistic Learning Task",
    description = "This task is a probablistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501.",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Welcome to the pairs game",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for participating and welcome to the pairs game. Click \\"START\\" to get started."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "MORE INSTRUCTIONS WILL BE INSERTED HERE IN THE FUTURE"
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
                    "title": "Second block",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Congratulations, you finished the practice."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Now you will be doing some more trials with different pairs."
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
                    "title": "Second block",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Congratulations, you finished the block."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Finally, you will be doing even more trials with different pairs."
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
                    "title": "Finished",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Congratulations, you completed the task."
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