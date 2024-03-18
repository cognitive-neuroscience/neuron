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
                            "imagePath": {
                                "en": "/assets/images/instructions/fingertapping/index-finger-banner_en.png",
                                "fr": "/assets/images/instructions/fingertapping/index-finger-banner_fr.png"
                            }
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
                                "fr": "Veuillez utiliser l''index de votre <b>MAIN DOMINANTE</b> pour ce tour"
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
WHERE id = 2;