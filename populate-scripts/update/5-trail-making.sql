-- TRAIL MAKING
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "NAB",
    name = "Trail Making",
    description = "The participant clicks different buttons in sequential order as fast as possible.",
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
                                "en": "Read the instructions carefully.",
                                "fr": "Lisez attentivement les instructions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this task, you will be shown numbered circles on the screen.",
                                "fr": "Des cercles numérotés seront affichés à l''écran."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You must start by clicking the number 1, then 2, and then continue in ascending order as fast as possible.",
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
                                "en": "Let''s practice.",
                                "fr": "Vous aurez maintenant la chance de vous pratiquer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen.",
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
                                "en": "You will now play the actual game.",
                                "fr": "Vous allez maintenant commencer le jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You must start by clicking the number 1, then 2, and then continue in ascending order as fast as possible.",
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
                                "en": "Read the instructions carefully.",
                                "fr": "Lisez attentivement les instructions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this task, you will be shown circles with numbers and letters.",
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
                                "en": "Let''s practice.",
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
                                "en": "The game will launch in full-screen.",
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
                                "en": "You will now play the actual game.",
                                "fr": "Vous allez maintenant commencer le jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Starting with number 1, you must click the circles ALTERNATING between numbers and letters in ascending order as fast as possible.",
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
                                "en": "You finished the game successfully.",
                                "fr": "Vous avez terminé le jeu avec succès."
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
