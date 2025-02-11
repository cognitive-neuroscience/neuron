
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
                    "title": {
                        "en": "Welcome to the Spot The Number Game!",
                        "fr": "Bienvenue au jeu Recherche des Chiffres!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will see numbers flash on the screen very quickly, followed by an X.",
                                "fr": "Vous verrez des chiffres apparaître à l''écran très rapidement, suivis d''un X."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Your job is to press the LEFT arrow ( ⬅️ ) for every number <b>EXCEPT</b> for the <b>number 3</b>.",
                                "fr": "Votre travail consiste à appuyer sur la flèche GAUCHE ( ⬅️ ) pour chaque chiffre <b>SAUF</b> pour le <b>chiffre 3</b>."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "When you see the <b>number 3</b> you must <b>NOT</b> press any key at all, simply wait for the next number.",
                                "fr": "Quand vous voyez le <b>chiffre 3</b>, vous <b>NE DEVEZ PAS</b> appuyer sur aucune touche, attendez simplement le chiffre suivant."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "left",
                            "imagePath": {
                                "en": "/assets/images/instructions/SART/visual_instructions_en.png",
                                "fr": "/assets/images/instructions/SART/visual_instructions_fr.png"
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
                        "en": "Let''s practice!",
                        "fr": "Pratiquons-nous!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, press the ( ⬅️ ) for all numbers except for 3.",
                                "fr": "N''oubliez pas d''appuyer sur ( ⬅️ ) pour tous les chiffres sauf pour le 3."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "When you see 3, don''t press anything and wait for the next number to appear.",
                                "fr": "Quand vous voyez le chiffre 3, vous ne devez pas appuyer sur aucune touche, attendez simplement le chiffre suivant."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The numbers will appear very quickly, so be ready!",
                                "fr": "Les chiffres vont apparaître très rapidement, alors soyez prêts!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round.",
                                "fr": "Le jeu se lancera en plein écran. Cliquez sur \\"START\\" pour commencer la pratique."
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
                    "title": {
                        "en": "Well done!",
                        "fr": "Bravo!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now you are ready for the real game.",
                                "fr": "Vous êtes prêt.e pour le vrai jeu."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Remember, press the ( ⬅️ ) key for all numbers except for 3.",
                                "fr": "N''oubliez pas d''appuyer sur ( ⬅️ ) pour tous les chiffres sauf pour le 3."
                                }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "When you see 3, don''t press anything and wait for the next number to appear.",
                                "fr": "Quand vous voyez le chiffre 3, vous ne devez pas appuyer sur aucune touche, attendez simplement le chiffre suivant."
                                }
                        },
                        {
                            "sectionType": "",
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
                    "title": {
                        "en": "It''s break time.",
                        "fr": "C''est l''heure de la pause."
                    },
                    "timerConfig": {
                        "timer": 35000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 5
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You have to wait for at least 20 seconds before being able to continue.",
                                "fr": "Vous devez attendre au moins 20 secondes avant de pouvoir continuer."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "The next round will automatically start in 35 seconds unless you choose to continue sooner.",
                                "fr": "Le prochain tour commencera automatiquement dans 35 secondes, sauf si vous choisissez de continuer plus tôt."
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
                    "title": {
                        "en": "You have completed the game, thank you!",
                        "fr": "Vous avez terminé le jeu, merci!"
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
            }
        ]
    }'
WHERE id = 47;
