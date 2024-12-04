
-- Face Name Association
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Face-Name Memory Game",
    description = "Participants learn a set of face-name pairs and are then tested on these pairs",
    external_url = "",
    config = '{
        "taskConfig": {
            "counterBalanceGroups": {
                "1": 1,
                "2": 2
            }
        },
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Welcome to the Face-Name Memory Game",
                        "fr": "Bienvenue au Jeu de Mémoire des Visages et Noms"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please read the instructions carefully.",
                                "fr": "Lisez attentivement les instructions."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "This is a memory test.",
                                "fr": "Ceci est un test de mémoire."
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
                                "en": "You will be shown a series of faces and their names, like this:",
                                "fr": "Une séries de paires de visages et de noms sera affichée à l’écran, comme ceci:"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "injection": "counterbalance",
                            "imagePath": "/assets/images/instructions/face-name-association/???/instructions.jpg"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Your job is to remember the name that goes with each face. Each pair will only be on screen for a few seconds.",
                                "fr": "Votre objectif est de mémoriser le nom associé à chaque visage. Chaque paire ne sera affichée à l’écran que pendant quelques secondes."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will see the series of pairs twice, and then you will be tested on how well you remember which name goes with which face.",
                                "fr": "La série de paires sera présentée deux fois. Ensuite, vous serez testé sur votre souvenir des noms qui vont avec chaque visage."
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
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will now see the faces and names for the first time. Try to remember the name that goes with each face.",
                                "fr": "Vous allez maintenant voir les visages et les noms pour la première fois. Essayez de mémoriser le nom associé à chaque visage."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" to start",
                                "fr": "Cliquez sur \\"COMMENCER\\" pour commencer"
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
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "phase": "learning-phase",
                    "maxResponseTime": 10000,
                    "interTrialDelay": 500,
                    "blockNum": 1,
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
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "This is a short break before you see the series of pairs again.",
                                "fr": "Vous avez maintenant une courte pause avant de procéder à la prochaine partie."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "While you wait, please do this short keyboard test.",
                                "fr": "En attendant, veuillez effectuer ce court test de clavier."
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
                "componentName": "ATTENTIONCHECKCOMPONENT",
                "componentConfig": {
                    "numbersDisplayed": [ 6, 1, 4 ],
                    "maxResponseTime": 10000
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "",
                    "timerConfig": {
                        "timer": 10000,
                        "showTimer": true,
                        "canSkipTimer": false,
                        "countDown": true
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you. You will start the second phase soon.",
                                "fr": "Merci. Vous commencerez bientôt la deuxième phase."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will see all the faces and names again. Try to remember the name that goes with each face.",
                                "fr": "Vous verrez à nouveau les visages et les noms. Essayez de mémoriser le nom associé à chaque visage."
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "phase": "learning-phase",
                    "maxResponseTime": 10000,
                    "interTrialDelay": 500,
                    "blockNum": 2,
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
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "This is a short break before you start the memory test.",
                                "fr": "Vous avez maintenant une courte pause avant de procéder au test de mémoire."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "While you wait, please do this short keyboard test:",
                                "fr": "En attendant, veuillez effectuer ce court test de clavier:"
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
                "componentName": "ATTENTIONCHECKCOMPONENT",
                "componentConfig": {
                    "numbersDisplayed": [ 3, 8, 5 ],
                    "maxResponseTime": 10000
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "",
                    "timerConfig": {
                        "timer": 15000,
                        "showTimer": true,
                        "canSkipTimer": false,
                        "countDown": true
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you. You will now see all the faces again. This time you will be asked if the person’s name is correct, and you must click ‘Yes’ or ‘No’.",
                                "fr": "Merci. Vous allez maintenant revoir tous les visages. Cette fois, vous devez déterminer si le nom de la personne est le bon. Vous devez répondre en cliquant ‘Oui’ ou ‘Non’."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "injection": "counterbalance",
                            "imagePath": {
                                "en": "/assets/images/instructions/face-name-association/???/instructions-2_en.jpg",
                                "fr": "/assets/images/instructions/face-name-association/???/instructions-2_fr.jpg"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this case, you would click ‘Yes’.",
                                "fr": "Dans ce cas, vous devriez cliquer sur ‘Oui’."
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "phase": "test-phase",
                    "maxResponseTime": 10000,
                    "interTrialDelay": 500,
                    "blockNum": 3,
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
                            "textContent": {
                                "en": "Congratulations! You completed the game.",
                                "fr": "Félicitations! Vous avez terminé le jeu."
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
                                "fr": "Cliquez sur \\"SUIVANT\\""
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
WHERE id = 52;
