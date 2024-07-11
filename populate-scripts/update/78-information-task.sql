
-- Information Task
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Information Task",
    description = "The participant chooses between exploration and exploitation. They select a card from the deck and either (1) continue selecting a new card with a new value, or (2) select a selected card with known value",
    external_url = "", 
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "image-fill",
                            "imagePath": {
                                "en": "/assets/images/instructions/informationsearch/en/1.jpeg",
                                "fr": "/assets/images/instructions/informationsearch/fr/1.jpeg"
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
                            "sectionType": "image-fill",
                            "imagePath": {
                                "en": "/assets/images/instructions/informationsearch/en/2.jpeg",
                                "fr": "/assets/images/instructions/informationsearch/fr/2.jpeg"
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
                            "sectionType": "image-fill",
                            "imagePath": {
                                "en": "/assets/images/instructions/informationsearch/en/3.jpeg",
                                "fr": "/assets/images/instructions/informationsearch/fr/3.jpeg"
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
                            "sectionType": "image-fill",
                            "imagePath": {
                                "en": "/assets/images/instructions/informationsearch/en/4.jpeg",
                                "fr": "/assets/images/instructions/informationsearch/fr/4.jpeg"
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
                            "sectionType": "image-fill",
                            "imagePath": {
                                "en": "/assets/images/instructions/informationsearch/en/5.jpeg",
                                "fr": "/assets/images/instructions/informationsearch/fr/5.jpeg"
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
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 1,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1560,
                            "cardValues": [
                                { "cardValue": 10, "expectedToExploit": false },
                                { "cardValue": 16, "expectedToExploit": false },
                                { "cardValue": 65, "expectedToExploit": false },
                                { "cardValue": 29, "expectedToExploit": false },
                                { "cardValue": 90, "expectedToExploit": false },
                                { "cardValue": 94, "expectedToExploit": true },
                                { "cardValue": 30, "expectedToExploit": true },
                                { "cardValue": 9,  "expectedToExploit": true },
                                { "cardValue": 74, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 41, "expectedToExploit": true },
                                { "cardValue": 37, "expectedToExploit": true },
                                { "cardValue": 17, "expectedToExploit": true },
                                { "cardValue": 12, "expectedToExploit": true },
                                { "cardValue": 55, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 63, "expectedToExploit": true },
                                { "cardValue": 34, "expectedToExploit": true },
                                { "cardValue": 73, "expectedToExploit": true },
                                { "cardValue": 79, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 2,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1475,
                            "cardValues": [
                                { "cardValue": 50, "expectedToExploit": false },
                                { "cardValue": 52, "expectedToExploit": false },
                                { "cardValue": 55, "expectedToExploit": false },
                                { "cardValue": 78, "expectedToExploit": false },
                                { "cardValue": 70, "expectedToExploit": false },
                                { "cardValue": 14, "expectedToExploit": false },
                                { "cardValue": 26, "expectedToExploit": false },
                                { "cardValue": 14, "expectedToExploit": false },
                                { "cardValue": 93, "expectedToExploit": false },
                                { "cardValue": 87, "expectedToExploit": true },
                                { "cardValue": 31, "expectedToExploit": true },
                                { "cardValue": 31, "expectedToExploit": true },
                                { "cardValue": 90, "expectedToExploit": true },
                                { "cardValue": 13, "expectedToExploit": true },
                                { "cardValue": 66, "expectedToExploit": true },
                                { "cardValue": 32, "expectedToExploit": true },
                                { "cardValue": 58, "expectedToExploit": true },
                                { "cardValue": 37, "expectedToExploit": true },
                                { "cardValue": 28, "expectedToExploit": true },
                                { "cardValue": 19, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 3,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1880,
                            "cardValues": [
                                { "cardValue": 94, "expectedToExploit": false },
                                { "cardValue": 78, "expectedToExploit": true },
                                { "cardValue": 23, "expectedToExploit": true },
                                { "cardValue": 24, "expectedToExploit": true },
                                { "cardValue": 95, "expectedToExploit": true },
                                { "cardValue": 12, "expectedToExploit": true },
                                { "cardValue": 29, "expectedToExploit": true },
                                { "cardValue": 75, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 10, "expectedToExploit": true },
                                { "cardValue": 16, "expectedToExploit": true },
                                { "cardValue": 19, "expectedToExploit": true },
                                { "cardValue": 81, "expectedToExploit": true },
                                { "cardValue": 72, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 12, "expectedToExploit": true },
                                { "cardValue": 18, "expectedToExploit": true },
                                { "cardValue": 47, "expectedToExploit": true },
                                { "cardValue": 8,  "expectedToExploit": true },
                                { "cardValue": 76, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 4,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1593,
                            "cardValues": [
                                { "cardValue": 29, "expectedToExploit": false },
                                { "cardValue": 34, "expectedToExploit": false },
                                { "cardValue": 85, "expectedToExploit": false },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 45, "expectedToExploit": true },
                                { "cardValue": 6,  "expectedToExploit": true },
                                { "cardValue": 5,  "expectedToExploit": true },
                                { "cardValue": 72, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 51, "expectedToExploit": true },
                                { "cardValue": 55, "expectedToExploit": true },
                                { "cardValue": 35, "expectedToExploit": true },
                                { "cardValue": 16, "expectedToExploit": true },
                                { "cardValue": 78, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 16, "expectedToExploit": true },
                                { "cardValue": 7,  "expectedToExploit": true },
                                { "cardValue": 86, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 5,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1629,
                            "cardValues": [
                                { "cardValue": 23, "expectedToExploit": false },
                                { "cardValue": 12, "expectedToExploit": false },
                                { "cardValue": 13, "expectedToExploit": false },
                                { "cardValue": 93, "expectedToExploit": false },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 63, "expectedToExploit": true },
                                { "cardValue": 58, "expectedToExploit": true },
                                { "cardValue": 80, "expectedToExploit": true },
                                { "cardValue": 43, "expectedToExploit": true },
                                { "cardValue": 58, "expectedToExploit": true },
                                { "cardValue": 98, "expectedToExploit": true },
                                { "cardValue": 51, "expectedToExploit": true },
                                { "cardValue": 46, "expectedToExploit": true },
                                { "cardValue": 41, "expectedToExploit": true },
                                { "cardValue": 90, "expectedToExploit": true },
                                { "cardValue": 74, "expectedToExploit": true },
                                { "cardValue": 38, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 19, "expectedToExploit": true },
                                { "cardValue": 24, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 6,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1496,
                            "cardValues": [
                                { "cardValue": 4,  "expectedToExploit": false },
                                { "cardValue": 30, "expectedToExploit": false },
                                { "cardValue": 17, "expectedToExploit": false },
                                { "cardValue": 85, "expectedToExploit": false },
                                { "cardValue": 83, "expectedToExploit": true },
                                { "cardValue": 15, "expectedToExploit": true },
                                { "cardValue": 52, "expectedToExploit": true },
                                { "cardValue": 80, "expectedToExploit": true },
                                { "cardValue": 18, "expectedToExploit": true },
                                { "cardValue": 51, "expectedToExploit": true },
                                { "cardValue": 54, "expectedToExploit": true },
                                { "cardValue": 26, "expectedToExploit": true },
                                { "cardValue": 49, "expectedToExploit": true },
                                { "cardValue": 18, "expectedToExploit": true },
                                { "cardValue": 33, "expectedToExploit": true },
                                { "cardValue": 82, "expectedToExploit": true },
                                { "cardValue": 81, "expectedToExploit": true },
                                { "cardValue": 42, "expectedToExploit": true },
                                { "cardValue": 91, "expectedToExploit": true },
                                { "cardValue": 13, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 7,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1589,
                            "cardValues": [
                                { "cardValue": 31, "expectedToExploit": false },
                                { "cardValue": 82, "expectedToExploit": false },
                                { "cardValue": 18, "expectedToExploit": true },
                                { "cardValue": 17, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 32, "expectedToExploit": true },
                                { "cardValue": 74, "expectedToExploit": true },
                                { "cardValue": 65, "expectedToExploit": true },
                                { "cardValue": 39, "expectedToExploit": true },
                                { "cardValue": 23, "expectedToExploit": true },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 67, "expectedToExploit": true },
                                { "cardValue": 68, "expectedToExploit": true },
                                { "cardValue": 63, "expectedToExploit": true },
                                { "cardValue": 96, "expectedToExploit": true },
                                { "cardValue": 28, "expectedToExploit": true },
                                { "cardValue": 83, "expectedToExploit": true },
                                { "cardValue": 63, "expectedToExploit": true },
                                { "cardValue": 78, "expectedToExploit": true },
                                { "cardValue": 49, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 8,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1880,
                            "cardValues": [
                                { "cardValue": 94, "expectedToExploit": false },
                                { "cardValue": 76, "expectedToExploit": true },
                                { "cardValue": 87, "expectedToExploit": true },
                                { "cardValue": 38, "expectedToExploit": true },
                                { "cardValue": 12, "expectedToExploit": true },
                                { "cardValue": 22, "expectedToExploit": true },
                                { "cardValue": 34, "expectedToExploit": true },
                                { "cardValue": 96, "expectedToExploit": true },
                                { "cardValue": 44, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 74, "expectedToExploit": true },
                                { "cardValue": 41, "expectedToExploit": true },
                                { "cardValue": 44, "expectedToExploit": true },
                                { "cardValue": 91, "expectedToExploit": true },
                                { "cardValue": 72, "expectedToExploit": true },
                                { "cardValue": 9,  "expectedToExploit": true },
                                { "cardValue": 86, "expectedToExploit": true },
                                { "cardValue": 73, "expectedToExploit": true },
                                { "cardValue": 29, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 9,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1741,
                            "cardValues": [
                                { "cardValue": 31, "expectedToExploit": false },
                                { "cardValue": 90, "expectedToExploit": false },
                                { "cardValue": 26, "expectedToExploit": true },
                                { "cardValue": 79, "expectedToExploit": true },
                                { "cardValue": 82, "expectedToExploit": true },
                                { "cardValue": 86, "expectedToExploit": true },
                                { "cardValue": 63, "expectedToExploit": true },
                                { "cardValue": 14, "expectedToExploit": true },
                                { "cardValue": 42, "expectedToExploit": true },
                                { "cardValue": 34, "expectedToExploit": true },
                                { "cardValue": 5,  "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true },
                                { "cardValue": 95, "expectedToExploit": true },
                                { "cardValue": 29, "expectedToExploit": true },
                                { "cardValue": 40, "expectedToExploit": true },
                                { "cardValue": 92, "expectedToExploit": true },
                                { "cardValue": 10, "expectedToExploit": true },
                                { "cardValue": 8,  "expectedToExploit": true },
                                { "cardValue": 23, "expectedToExploit": true },
                                { "cardValue": 33, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 10,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1046,
                            "cardValues": [
                                { "cardValue": 4,  "expectedToExploit": false },
                                { "cardValue": 10, "expectedToExploit": false },
                                { "cardValue": 53, "expectedToExploit": false },
                                { "cardValue": 77, "expectedToExploit": false },
                                { "cardValue": 69, "expectedToExploit": false },
                                { "cardValue": 31, "expectedToExploit": false },
                                { "cardValue": 71, "expectedToExploit": false },
                                { "cardValue": 75, "expectedToExploit": false },
                                { "cardValue": 31, "expectedToExploit": false },
                                { "cardValue": 10, "expectedToExploit": false },
                                { "cardValue": 3,  "expectedToExploit": false },
                                { "cardValue": 66, "expectedToExploit": false },
                                { "cardValue": 14, "expectedToExploit": false },
                                { "cardValue": 76, "expectedToExploit": false },
                                { "cardValue": 53, "expectedToExploit": true },
                                { "cardValue": 6,  "expectedToExploit": true },
                                { "cardValue": 94, "expectedToExploit": true },
                                { "cardValue": 85, "expectedToExploit": true },
                                { "cardValue": 49, "expectedToExploit": true },
                                { "cardValue": 63, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 11,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1624,
                            "cardValues": [
                                { "cardValue": 43, "expectedToExploit": false },
                                { "cardValue": 35, "expectedToExploit": false },
                                { "cardValue": 41, "expectedToExploit": false },
                                { "cardValue": 47, "expectedToExploit": false },
                                { "cardValue": 33, "expectedToExploit": false },
                                { "cardValue": 95, "expectedToExploit": false },
                                { "cardValue": 87, "expectedToExploit": true },
                                { "cardValue": 59, "expectedToExploit": true },
                                { "cardValue": 70, "expectedToExploit": true },
                                { "cardValue": 46, "expectedToExploit": true },
                                { "cardValue": 19, "expectedToExploit": true },
                                { "cardValue": 51, "expectedToExploit": true },
                                { "cardValue": 45, "expectedToExploit": true },
                                { "cardValue": 2,  "expectedToExploit": true },
                                { "cardValue": 64, "expectedToExploit": true },
                                { "cardValue": 78, "expectedToExploit": true },
                                { "cardValue": 19, "expectedToExploit": true },
                                { "cardValue": 28, "expectedToExploit": true },
                                { "cardValue": 84, "expectedToExploit": true },
                                { "cardValue": 38, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 12,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1763,
                            "cardValues": [
                                { "cardValue": 72, "expectedToExploit": false },
                                { "cardValue": 89, "expectedToExploit": false },
                                { "cardValue": 16, "expectedToExploit": true },
                                { "cardValue": 56, "expectedToExploit": true },
                                { "cardValue": 7,  "expectedToExploit": true },
                                { "cardValue": 45, "expectedToExploit": true },
                                { "cardValue": 10, "expectedToExploit": true },
                                { "cardValue": 51, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 45, "expectedToExploit": true },
                                { "cardValue": 69, "expectedToExploit": true },
                                { "cardValue": 15, "expectedToExploit": true },
                                { "cardValue": 5,  "expectedToExploit": true },
                                { "cardValue": 7,  "expectedToExploit": true },
                                { "cardValue": 43, "expectedToExploit": true },
                                { "cardValue": 74, "expectedToExploit": true },
                                { "cardValue": 45, "expectedToExploit": true },
                                { "cardValue": 91, "expectedToExploit": true },
                                { "cardValue": 39, "expectedToExploit": true },
                                { "cardValue": 21, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 13,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1391,
                            "cardValues": [
                                { "cardValue": 10, "expectedToExploit": false },
                                { "cardValue": 41, "expectedToExploit": false },
                                { "cardValue": 17, "expectedToExploit": false },
                                { "cardValue": 76, "expectedToExploit": false },
                                { "cardValue": 40, "expectedToExploit": false },
                                { "cardValue": 59, "expectedToExploit": false },
                                { "cardValue": 82, "expectedToExploit": false },
                                { "cardValue": 40, "expectedToExploit": true },
                                { "cardValue": 50, "expectedToExploit": true },
                                { "cardValue": 98, "expectedToExploit": true },
                                { "cardValue": 12, "expectedToExploit": true },
                                { "cardValue": 79, "expectedToExploit": true },
                                { "cardValue": 80, "expectedToExploit": true },
                                { "cardValue": 22, "expectedToExploit": true },
                                { "cardValue": 70, "expectedToExploit": true },
                                { "cardValue": 49, "expectedToExploit": true },
                                { "cardValue": 61, "expectedToExploit": true },
                                { "cardValue": 59, "expectedToExploit": true },
                                { "cardValue": 14, "expectedToExploit": true },
                                { "cardValue": 4,  "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 14,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1693,
                            "cardValues": [
                                { "cardValue": 32, "expectedToExploit": false },
                                { "cardValue": 77, "expectedToExploit": false },
                                { "cardValue": 88, "expectedToExploit": false },
                                { "cardValue": 18, "expectedToExploit": true },
                                { "cardValue": 30, "expectedToExploit": true },
                                { "cardValue": 70, "expectedToExploit": true },
                                { "cardValue": 51, "expectedToExploit": true },
                                { "cardValue": 52, "expectedToExploit": true },
                                { "cardValue": 21, "expectedToExploit": true },
                                { "cardValue": 6,  "expectedToExploit": true },
                                { "cardValue": 71, "expectedToExploit": true },
                                { "cardValue": 62, "expectedToExploit": true },
                                { "cardValue": 17, "expectedToExploit": true },
                                { "cardValue": 75, "expectedToExploit": true },
                                { "cardValue": 5,  "expectedToExploit": true },
                                { "cardValue": 23, "expectedToExploit": true },
                                { "cardValue": 20, "expectedToExploit": true },
                                { "cardValue": 86, "expectedToExploit": true },
                                { "cardValue": 74, "expectedToExploit": true },
                                { "cardValue": 36, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 15,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1473,
                            "cardValues": [
                                { "cardValue": 36, "expectedToExploit": false },
                                { "cardValue": 12, "expectedToExploit": false },
                                { "cardValue": 42, "expectedToExploit": false },
                                { "cardValue": 55, "expectedToExploit": false },
                                { "cardValue": 83, "expectedToExploit": false },
                                { "cardValue": 20, "expectedToExploit": true },
                                { "cardValue": 42, "expectedToExploit": true },
                                { "cardValue": 82, "expectedToExploit": true },
                                { "cardValue": 62, "expectedToExploit": true },
                                { "cardValue": 11, "expectedToExploit": true },
                                { "cardValue": 37, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 31, "expectedToExploit": true },
                                { "cardValue": 63, "expectedToExploit": true },
                                { "cardValue": 86, "expectedToExploit": true },
                                { "cardValue": 33, "expectedToExploit": true },
                                { "cardValue": 82, "expectedToExploit": true },
                                { "cardValue": 14, "expectedToExploit": true },
                                { "cardValue": 68, "expectedToExploit": true },
                                { "cardValue": 32, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 16,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1876,
                            "cardValues": [
                                { "cardValue": 33, "expectedToExploit": false },
                                { "cardValue": 97, "expectedToExploit": false },
                                { "cardValue": 39, "expectedToExploit": true },
                                { "cardValue": 38, "expectedToExploit": true },
                                { "cardValue": 80, "expectedToExploit": true },
                                { "cardValue": 60, "expectedToExploit": true },
                                { "cardValue": 21, "expectedToExploit": true },
                                { "cardValue": 32, "expectedToExploit": true },
                                { "cardValue": 90, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 26, "expectedToExploit": true },
                                { "cardValue": 64, "expectedToExploit": true },
                                { "cardValue": 60, "expectedToExploit": true },
                                { "cardValue": 3,  "expectedToExploit": true },
                                { "cardValue": 31, "expectedToExploit": true },
                                { "cardValue": 18, "expectedToExploit": true },
                                { "cardValue": 60, "expectedToExploit": true },
                                { "cardValue": 71, "expectedToExploit": true },
                                { "cardValue": 64, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 17,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1740,
                            "cardValues": [
                                { "cardValue": 87, "expectedToExploit": false },
                                { "cardValue": 30, "expectedToExploit": true },
                                { "cardValue": 72, "expectedToExploit": true },
                                { "cardValue": 93, "expectedToExploit": true },
                                { "cardValue": 20, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 8,  "expectedToExploit": true },
                                { "cardValue": 94, "expectedToExploit": true },
                                { "cardValue": 43, "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true },
                                { "cardValue": 58, "expectedToExploit": true },
                                { "cardValue": 81, "expectedToExploit": true },
                                { "cardValue": 3,  "expectedToExploit": true },
                                { "cardValue": 35, "expectedToExploit": true },
                                { "cardValue": 59, "expectedToExploit": true },
                                { "cardValue": 77, "expectedToExploit": true },
                                { "cardValue": 11, "expectedToExploit": true },
                                { "cardValue": 80, "expectedToExploit": true },
                                { "cardValue": 33, "expectedToExploit": true },
                                { "cardValue": 70, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 18,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1840,
                            "cardValues": [
                                { "cardValue": 92, "expectedToExploit": false },
                                { "cardValue": 17, "expectedToExploit": true },
                                { "cardValue": 6,  "expectedToExploit": true },
                                { "cardValue": 64, "expectedToExploit": true },
                                { "cardValue": 84, "expectedToExploit": true },
                                { "cardValue": 76, "expectedToExploit": true },
                                { "cardValue": 43, "expectedToExploit": true },
                                { "cardValue": 39, "expectedToExploit": true },
                                { "cardValue": 58, "expectedToExploit": true },
                                { "cardValue": 8,  "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 39, "expectedToExploit": true },
                                { "cardValue": 49, "expectedToExploit": true },
                                { "cardValue": 28, "expectedToExploit": true },
                                { "cardValue": 65, "expectedToExploit": true },
                                { "cardValue": 50, "expectedToExploit": true },
                                { "cardValue": 91, "expectedToExploit": true },
                                { "cardValue": 10, "expectedToExploit": true },
                                { "cardValue": 28, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 19,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1782,
                            "cardValues": [
                                { "cardValue": 53, "expectedToExploit": false },
                                { "cardValue": 91, "expectedToExploit": false },
                                { "cardValue": 58, "expectedToExploit": true },
                                { "cardValue": 49, "expectedToExploit": true },
                                { "cardValue": 24, "expectedToExploit": true },
                                { "cardValue": 26, "expectedToExploit": true },
                                { "cardValue": 20, "expectedToExploit": true },
                                { "cardValue": 49, "expectedToExploit": true },
                                { "cardValue": 98, "expectedToExploit": true },
                                { "cardValue": 77, "expectedToExploit": true },
                                { "cardValue": 76, "expectedToExploit": true },
                                { "cardValue": 94, "expectedToExploit": true },
                                { "cardValue": 31, "expectedToExploit": true },
                                { "cardValue": 32, "expectedToExploit": true },
                                { "cardValue": 29, "expectedToExploit": true },
                                { "cardValue": 80, "expectedToExploit": true },
                                { "cardValue": 85, "expectedToExploit": true },
                                { "cardValue": 22, "expectedToExploit": true },
                                { "cardValue": 85, "expectedToExploit": true },
                                { "cardValue": 47, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 20,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1803,
                            "cardValues": [
                                { "cardValue": 47, "expectedToExploit": false },
                                { "cardValue": 46, "expectedToExploit": false },
                                { "cardValue": 95, "expectedToExploit": false },
                                { "cardValue": 85, "expectedToExploit": true },
                                { "cardValue": 21, "expectedToExploit": true },
                                { "cardValue": 50, "expectedToExploit": true },
                                { "cardValue": 34, "expectedToExploit": true },
                                { "cardValue": 3,  "expectedToExploit": true },
                                { "cardValue": 98, "expectedToExploit": true },
                                { "cardValue": 98, "expectedToExploit": true },
                                { "cardValue": 99, "expectedToExploit": true },
                                { "cardValue": 13, "expectedToExploit": true },
                                { "cardValue": 83, "expectedToExploit": true },
                                { "cardValue": 78, "expectedToExploit": true },
                                { "cardValue": 67, "expectedToExploit": true },
                                { "cardValue": 38, "expectedToExploit": true },
                                { "cardValue": 32, "expectedToExploit": true },
                                { "cardValue": 57, "expectedToExploit": true },
                                { "cardValue": 82, "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 21,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1640,
                            "cardValues": [
                                { "cardValue": 82, "expectedToExploit": false },
                                { "cardValue": 56, "expectedToExploit": true },
                                { "cardValue": 98, "expectedToExploit": true },
                                { "cardValue": 75, "expectedToExploit": true },
                                { "cardValue": 16, "expectedToExploit": true },
                                { "cardValue": 80, "expectedToExploit": true },
                                { "cardValue": 81, "expectedToExploit": true },
                                { "cardValue": 39, "expectedToExploit": true },
                                { "cardValue": 56, "expectedToExploit": true },
                                { "cardValue": 50, "expectedToExploit": true },
                                { "cardValue": 91, "expectedToExploit": true },
                                { "cardValue": 3,  "expectedToExploit": true },
                                { "cardValue": 71, "expectedToExploit": true },
                                { "cardValue": 98, "expectedToExploit": true },
                                { "cardValue": 6,  "expectedToExploit": true },
                                { "cardValue": 73, "expectedToExploit": true },
                                { "cardValue": 30, "expectedToExploit": true },
                                { "cardValue": 20, "expectedToExploit": true },
                                { "cardValue": 26, "expectedToExploit": true },
                                { "cardValue": 16, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 22,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1898,
                            "cardValues": [
                                { "cardValue": 55, "expectedToExploit": false },
                                { "cardValue": 97, "expectedToExploit": false },
                                { "cardValue": 83, "expectedToExploit": true },
                                { "cardValue": 57, "expectedToExploit": true },
                                { "cardValue": 42, "expectedToExploit": true },
                                { "cardValue": 91, "expectedToExploit": true },
                                { "cardValue": 27, "expectedToExploit": true },
                                { "cardValue": 75, "expectedToExploit": true },
                                { "cardValue": 9,  "expectedToExploit": true },
                                { "cardValue": 93, "expectedToExploit": true },
                                { "cardValue": 33, "expectedToExploit": true },
                                { "cardValue": 72, "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true },
                                { "cardValue": 69, "expectedToExploit": true },
                                { "cardValue": 87, "expectedToExploit": true },
                                { "cardValue": 15, "expectedToExploit": true },
                                { "cardValue": 36, "expectedToExploit": true },
                                { "cardValue": 85, "expectedToExploit": true },
                                { "cardValue": 38, "expectedToExploit": true },
                                { "cardValue": 63, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 23,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1393,
                            "cardValues": [
                                { "cardValue": 68, "expectedToExploit": false },
                                { "cardValue": 15, "expectedToExploit": false },
                                { "cardValue": 38, "expectedToExploit": false },
                                { "cardValue": 58, "expectedToExploit": false },
                                { "cardValue": 79, "expectedToExploit": false },
                                { "cardValue": 35, "expectedToExploit": false },
                                { "cardValue": 52, "expectedToExploit": false },
                                { "cardValue": 51, "expectedToExploit": false },
                                { "cardValue": 51, "expectedToExploit": false },
                                { "cardValue": 86, "expectedToExploit": false },
                                { "cardValue": 15, "expectedToExploit": true },
                                { "cardValue": 53, "expectedToExploit": true },
                                { "cardValue": 31, "expectedToExploit": true },
                                { "cardValue": 82, "expectedToExploit": true },
                                { "cardValue": 11, "expectedToExploit": true },
                                { "cardValue": 62, "expectedToExploit": true },
                                { "cardValue": 24, "expectedToExploit": true },
                                { "cardValue": 2,  "expectedToExploit": true },
                                { "cardValue": 29, "expectedToExploit": true },
                                { "cardValue": 59, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 24,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1436,
                            "cardValues": [
                                { "cardValue": 11, "expectedToExploit": false },
                                { "cardValue": 12, "expectedToExploit": false },
                                { "cardValue": 2,  "expectedToExploit": false },
                                { "cardValue": 83, "expectedToExploit": false },
                                { "cardValue": 35, "expectedToExploit": true },
                                { "cardValue": 12, "expectedToExploit": true },
                                { "cardValue": 47, "expectedToExploit": true },
                                { "cardValue": 75, "expectedToExploit": true },
                                { "cardValue": 37, "expectedToExploit": true },
                                { "cardValue": 7,  "expectedToExploit": true },
                                { "cardValue": 64, "expectedToExploit": true },
                                { "cardValue": 61, "expectedToExploit": true },
                                { "cardValue": 4,  "expectedToExploit": true },
                                { "cardValue": 51, "expectedToExploit": true },
                                { "cardValue": 60, "expectedToExploit": true },
                                { "cardValue": 35, "expectedToExploit": true },
                                { "cardValue": 22, "expectedToExploit": true },
                                { "cardValue": 17, "expectedToExploit": true },
                                { "cardValue": 19, "expectedToExploit": true },
                                { "cardValue": 62, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 25,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1634,
                            "cardValues": [
                                { "cardValue": 55, "expectedToExploit": false },
                                { "cardValue": 61, "expectedToExploit": false },
                                { "cardValue": 22, "expectedToExploit": false },
                                { "cardValue": 88, "expectedToExploit": false },
                                { "cardValue": 84, "expectedToExploit": true },
                                { "cardValue": 72, "expectedToExploit": true },
                                { "cardValue": 17, "expectedToExploit": true },
                                { "cardValue": 68, "expectedToExploit": true },
                                { "cardValue": 39, "expectedToExploit": true },
                                { "cardValue": 28, "expectedToExploit": true },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true },
                                { "cardValue": 99, "expectedToExploit": true },
                                { "cardValue": 90, "expectedToExploit": true },
                                { "cardValue": 17, "expectedToExploit": true },
                                { "cardValue": 83, "expectedToExploit": true },
                                { "cardValue": 20, "expectedToExploit": true },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 51, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 26,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1662,
                            "cardValues": [
                                { "cardValue": 9,  "expectedToExploit": false },
                                { "cardValue": 87, "expectedToExploit": false },
                                { "cardValue": 76, "expectedToExploit": true },
                                { "cardValue": 73, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 27, "expectedToExploit": true },
                                { "cardValue": 81, "expectedToExploit": true },
                                { "cardValue": 29, "expectedToExploit": true },
                                { "cardValue": 27, "expectedToExploit": true },
                                { "cardValue": 95, "expectedToExploit": true },
                                { "cardValue": 2,  "expectedToExploit": true },
                                { "cardValue": 92, "expectedToExploit": true },
                                { "cardValue": 3,  "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 61, "expectedToExploit": true },
                                { "cardValue": 52, "expectedToExploit": true },
                                { "cardValue": 14, "expectedToExploit": true },
                                { "cardValue": 78, "expectedToExploit": true },
                                { "cardValue": 26, "expectedToExploit": true },
                                { "cardValue": 62, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 27,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1480,
                            "cardValues": [
                                { "cardValue": 41, "expectedToExploit": false },
                                { "cardValue": 7,  "expectedToExploit": false },
                                { "cardValue": 38, "expectedToExploit": false },
                                { "cardValue": 82, "expectedToExploit": false },
                                { "cardValue": 71, "expectedToExploit": true },
                                { "cardValue": 39, "expectedToExploit": true },
                                { "cardValue": 95, "expectedToExploit": true },
                                { "cardValue": 3,  "expectedToExploit": true },
                                { "cardValue": 37, "expectedToExploit": true },
                                { "cardValue": 75, "expectedToExploit": true },
                                { "cardValue": 57, "expectedToExploit": true },
                                { "cardValue": 26, "expectedToExploit": true },
                                { "cardValue": 83, "expectedToExploit": true },
                                { "cardValue": 97, "expectedToExploit": true },
                                { "cardValue": 59, "expectedToExploit": true },
                                { "cardValue": 17, "expectedToExploit": true },
                                { "cardValue": 87, "expectedToExploit": true },
                                { "cardValue": 41, "expectedToExploit": true },
                                { "cardValue": 96, "expectedToExploit": true },
                                { "cardValue": 39, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 28,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1274,
                            "cardValues": [
                                { "cardValue": 5,  "expectedToExploit": false },
                                { "cardValue": 24, "expectedToExploit": false },
                                { "cardValue": 59, "expectedToExploit": false },
                                { "cardValue": 40, "expectedToExploit": false },
                                { "cardValue": 1,  "expectedToExploit": false },
                                { "cardValue": 39, "expectedToExploit": false },
                                { "cardValue": 79, "expectedToExploit": false },
                                { "cardValue": 74, "expectedToExploit": true },
                                { "cardValue": 27, "expectedToExploit": true },
                                { "cardValue": 82, "expectedToExploit": true },
                                { "cardValue": 6,  "expectedToExploit": true },
                                { "cardValue": 2,  "expectedToExploit": true },
                                { "cardValue": 13, "expectedToExploit": true },
                                { "cardValue": 87, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 72, "expectedToExploit": true },
                                { "cardValue": 1,  "expectedToExploit": true },
                                { "cardValue": 59, "expectedToExploit": true },
                                { "cardValue": 27, "expectedToExploit": true },
                                { "cardValue": 20, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 29,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1660,
                            "cardValues": [
                                { "cardValue": 83, "expectedToExploit": false },
                                { "cardValue": 72, "expectedToExploit": true },
                                { "cardValue": 6,  "expectedToExploit": true },
                                { "cardValue": 30, "expectedToExploit": true },
                                { "cardValue": 2,  "expectedToExploit": true },
                                { "cardValue": 62, "expectedToExploit": true },
                                { "cardValue": 29, "expectedToExploit": true },
                                { "cardValue": 7,  "expectedToExploit": true },
                                { "cardValue": 86, "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true },
                                { "cardValue": 92, "expectedToExploit": true },
                                { "cardValue": 4,  "expectedToExploit": true },
                                { "cardValue": 7,  "expectedToExploit": true },
                                { "cardValue": 99, "expectedToExploit": true },
                                { "cardValue": 92, "expectedToExploit": true },
                                { "cardValue": 55, "expectedToExploit": true },
                                { "cardValue": 9,  "expectedToExploit": true },
                                { "cardValue": 73, "expectedToExploit": true },
                                { "cardValue": 11, "expectedToExploit": true },
                                { "cardValue": 58, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
                }
            },
            {
                "componentName": "INFORMATIONTASKCOMPONENT",
                "componentConfig": {
                    "numTrials": 20,
                    "roundNum": 30,
                    "isPractice": false,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": {
                            "optimalScore": 1700,
                            "cardValues": [
                                { "cardValue": 85, "expectedToExploit": false },
                                { "cardValue": 5,  "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true },
                                { "cardValue": 66, "expectedToExploit": true },
                                { "cardValue": 8,  "expectedToExploit": true },
                                { "cardValue": 73, "expectedToExploit": true },
                                { "cardValue": 44, "expectedToExploit": true },
                                { "cardValue": 49, "expectedToExploit": true },
                                { "cardValue": 89, "expectedToExploit": true },
                                { "cardValue": 43, "expectedToExploit": true },
                                { "cardValue": 22, "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true },
                                { "cardValue": 19, "expectedToExploit": true },
                                { "cardValue": 20, "expectedToExploit": true },
                                { "cardValue": 79, "expectedToExploit": true },
                                { "cardValue": 33, "expectedToExploit": true },
                                { "cardValue": 24, "expectedToExploit": true },
                                { "cardValue": 88, "expectedToExploit": true },
                                { "cardValue": 48, "expectedToExploit": true },
                                { "cardValue": 57, "expectedToExploit": true }
                            ]
                        }
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
                            "injection": "cached-string",
                            "cacheKey": "information-task-total-score",
                            "textContent": {
                                "en": "Your score was ???",
                                "fr": "Votre score: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-optimal-score",
                            "textContent": {
                                "en": "The optimal score was ???",
                                "fr": "Le score à battre: ???"
                            }
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "information-task-status-text",
                            "textContent": {
                                "en": "???",
                                "fr": "???"
                            }
                        }
                    ]
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
WHERE id = 78;