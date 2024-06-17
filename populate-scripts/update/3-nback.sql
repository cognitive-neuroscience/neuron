-- NBACK
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "NAB",
    name = "N-Back",
    description = "The participant sees a sequence of letters and presses the left or right arrow arrow key to indicate whether they saw that letter 2 letters ago",
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
                            "imagePath": "assets/images/instructions/nback/examplePart1.png"
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
                            "imagePath": {
                                "en": "/assets/images/instructions/nback/examplePart2_en.png",
                                "fr": "/assets/images/instructions/nback/examplePart2_fr.jpg"
                            }
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
                            "imagePath": {
                                "en": "/assets/images/instructions/nback/examplePart3_en.png",
                                "fr": "/assets/images/instructions/nback/examplePart3_fr.jpg"
                            }
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
                    "skippable": false,
                    "isPractice": true,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "showScoreAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationFixationPresented": 1000,
                    "numTrials": 15,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            {
                                "trial": 1,
                                "currentLetter": "G",
                                "nback": null
                            },
                            {
                                "trial": 2,
                                "currentLetter": "L",
                                "nback": null
                            },
                            {
                                "trial": 3,
                                "currentLetter": "E",
                                "nback": "G"
                            },
                            {
                                "trial": 4,
                                "currentLetter": "L",
                                "nback": "L"
                            },
                            {
                                "trial": 5,
                                "currentLetter": "A",
                                "nback": "E"
                            },
                            {
                                "trial": 6,
                                "currentLetter": "Q",
                                "nback": "L"
                            },
                            {
                                "trial": 7,
                                "currentLetter": "V",
                                "nback": "A"
                            },
                            {
                                "trial": 8,
                                "currentLetter": "Q",
                                "nback": "Q"
                            },
                            {
                                "trial": 9,
                                "currentLetter": "I",
                                "nback": "V"
                            },
                            {
                                "trial": 10,
                                "currentLetter": "L",
                                "nback": "Q"
                            },
                            {
                                "trial": 11,
                                "currentLetter": "T",
                                "nback": "I"
                            },
                            {
                                "trial": 12,
                                "currentLetter": "V",
                                "nback": "L"
                            },
                            {
                                "trial": 13,
                                "currentLetter": "P",
                                "nback": "T"
                            },
                            {
                                "trial": 14,
                                "currentLetter": "V",
                                "nback": "V"
                            },
                            {
                                "trial": 15,
                                "currentLetter": "B",
                                "nback": "P"
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
                            "textContent": {
                                "en": "We will repeat this round so you can get more practice.",
                                "fr": "Nous allons répéter ce tour afin que vous puissiez vous entraîner davantage."
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
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "NBACKCOMPONENT",
                "componentConfig": {
                    "skippable": false,
                    "isPractice": true,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "showScoreAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationFixationPresented": 1000,
                    "numTrials": 15,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            {
                                "trial": 1,
                                "currentLetter": "A",
                                "nback": null
                            },
                            {
                                "trial": 2,
                                "currentLetter": "X",
                                "nback": null
                            },
                            {
                                "trial": 3,
                                "currentLetter": "S",
                                "nback": "A"
                            },
                            {
                                "trial": 4,
                                "currentLetter": "U",
                                "nback": "X"
                            },
                            {
                                "trial": 5,
                                "currentLetter": "S",
                                "nback": "S"
                            },
                            {
                                "trial": 6,
                                "currentLetter": "K",
                                "nback": "U"
                            },
                            {
                                "trial": 7,
                                "currentLetter": "V",
                                "nback": "S"
                            },
                            {
                                "trial": 8,
                                "currentLetter": "L",
                                "nback": "K"
                            },
                            {
                                "trial": 9,
                                "currentLetter": "V",
                                "nback": "V"
                            },
                            {
                                "trial": 10,
                                "currentLetter": "R",
                                "nback": "L"
                            },
                            {
                                "trial": 11,
                                "currentLetter": "F",
                                "nback": "V"
                            },
                            {
                                "trial": 12,
                                "currentLetter": "G",
                                "nback": "R"
                            },
                            {
                                "trial": 13,
                                "currentLetter": "U",
                                "nback": "F"
                            },
                            {
                                "trial": 14,
                                "currentLetter": "I",
                                "nback": "G"
                            },
                            {
                                "trial": 15,
                                "currentLetter": "U",
                                "nback": "U"
                            }
                        ]
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "skippable": true,
                    "skippableCacheKey": "nback-should-skip",
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will repeat this round so you can get more practice.",
                                "fr": "Nous allons répéter ce tour afin que vous puissiez vous entraîner davantage."
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
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "NBACKCOMPONENT",
                "componentConfig": {
                    "skippable": true,
                    "isPractice": true,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": true,
                    "showScoreAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationFixationPresented": 1000,
                    "numTrials": 15,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            {
                                "trial": 1,
                                "currentLetter": "F",
                                "nback": null
                            },
                            {
                                "trial": 2,
                                "currentLetter": "Z",
                                "nback": null
                            },
                            {
                                "trial": 3,
                                "currentLetter": "Y",
                                "nback": "F"
                            },
                            {
                                "trial": 4,
                                "currentLetter": "U",
                                "nback": "Z"
                            },
                            {
                                "trial": 5,
                                "currentLetter": "Y",
                                "nback": "Y"
                            },
                            {
                                "trial": 6,
                                "currentLetter": "P",
                                "nback": "U"
                            },
                            {
                                "trial": 7,
                                "currentLetter": "T",
                                "nback": "Y"
                            },
                            {
                                "trial": 8,
                                "currentLetter": "M",
                                "nback": "P"
                            },
                            {
                                "trial": 9,
                                "currentLetter": "T",
                                "nback": "T"
                            },
                            {
                                "trial": 10,
                                "currentLetter": "E",
                                "nback": "M"
                            },
                            {
                                "trial": 11,
                                "currentLetter": "F",
                                "nback": "T"
                            },
                            {
                                "trial": 12,
                                "currentLetter": "S",
                                "nback": "E"
                            },
                            {
                                "trial": 13,
                                "currentLetter": "F",
                                "nback": "F"
                            },
                            {
                                "trial": 14,
                                "currentLetter": "J",
                                "nback": "S"
                            },
                            {
                                "trial": 15,
                                "currentLetter": "P",
                                "nback": "F"
                            }
                        ]
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
                    "skippable": false,
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
                                "en": "Thank you for your participation. Click \\"NEXT\\"",
                                "fr": "Merci de votre participation. Cliquez sur \\"NEXT\\""
                            }
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 3;