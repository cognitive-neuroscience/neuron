
-- SMILEY FACE
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Smiley Face",
    description = "The participant is presented with both long and short faces. They have to hit a key to indicate a shorter smile on the screen, compared to a different key to indicate a longer smile",
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
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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
                            "sectionType": "text",
                            "textContent": {
                                "en": "Reminder: If you need to take a longer break, please wait until the end of this game to close the window, otherwise your progress will not be saved. Thanks!",
                                "fr": "Rappel: Si vous voulez prendre une plus longue pause, SVP attendre la fin du jeu pour fermer la fenêtre. Sinon, votre progrès ne sera pas sauvegardé. Merci!"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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
                            "sectionType": "text",
                            "textContent": {
                                "en": "Reminder: If you need to take a longer break, please wait until the end of this game to close the window, otherwise your progress will not be saved. Thanks!",
                                "fr": "Rappel: Si vous voulez prendre une plus longue pause, SVP attendre la fin du jeu pour fermer la fenêtre. Sinon, votre progrès ne sera pas sauvegardé. Merci!"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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
                            "imagePath": {
                                "en": "/assets/images/instructions/smileyface/countdown_en.png",
                                "fr": "/assets/images/instructions/smileyface/countdown_fr.jpg"
                            }
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