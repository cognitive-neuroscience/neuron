
-- EVERYDAY CHOICE DUTCH
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Everyday Choice Dutch",
    description = "Everyday choice task with support for Dutch",
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
                    "title": {
                        "en": "Welcome to the Everyday Activities Game",
                        "nl": "Welkom bij het Dagelijkse Activiteiten Spel"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We are trying to understand how people fill their days with activities.",
                                "nl": "Wij proberen te begrijpen hoe mensen hun dagen vullen met activiteiten."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "In this task we will ask you about activities that you may do in your everyday life.",
                                "nl": "Tijdens dit spel stellen we vragen over activiteiten die je zou kunnen doen in je dagelijks leven."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "There are two parts to the task: <br> 1) Answering questions about different activities <br> 2) Indicating your preference between different activities. <br> You will also complete some questionnaires at the end.",
                                "nl": "Deze taak bestaat uit twee delen: <br> 1) Vragen beantwoorden over verschillende activiteiten. <br> 2) Aangeven wat jouw voorkeur is tussen verschillende activiteiten. <br> Je vult ook een paar vragenlijsten in op het einde."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You <b>MUST</b> complete both parts in one sitting, otherwise your progress will be lost!!",
                                "nl": "Je <b>MOET</b> beide delen in een keer afmaken, anders raakt jouw voortgang verloren!!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please note that Part 1 is the longest and takes around 40 minutes. The rest is much shorter, and the entire experiment will last from 1 hour to 1 hour and 20 minutes.",
                                "nl": "Houd er alstublieft rekening mee dat deel 1 het langste is en ongeveer 40 minuten kost. De rest is veel korter en het hele experiment zal tussen 1 uur en 1 uur en 20 minuten duren."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT to continue",
                                "nl": "Klik op VOLGENDE om door te gaan"
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
                        "en": "Everyday Activities Game - Part 1",
                        "nl": " Dagelijkse Activiteiten Spel - Deel 1"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please read the following instructions carefully.",
                                "nl": "Lees de komende instructies alsjeblieft nauwkeurig door."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will ask you a series of questions about how you feel about different activities.",
                                "nl": "We stellen je een serie aan vragen over hoe je denkt over verschillende activiteiten."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will have to provide your response using your mouse.",
                                "nl": "Je kunt jouw muis gebruiken om antwoord te geven."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT to continue",
                                "nl": " Klik op VOLGENDE om door te gaan"
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
                        "en": "Let’s walk through an example",
                        "nl": "Laten we beginnen met een voorbeeld"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Activity: Bring the car to the mechanic",
                                "nl": "Activiteit: Breng jouw auto naar de garage."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will be asked: How much do you look forward to the outcome of it? How mentally effortful does this activity feel to you? ",
                                "nl": "Je zal gevraagd worden: In welke mate kijk je uit naar de uitkomst van deze activiteit? Hoe mentaal inspannend voelt deze activiteit voor jou?"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>We understand that this may or may not apply to you (perhaps you don’t currently own a car), but we ask that you try to picture yourself doing each activity so that you can answer the questions.</b>",
                                "nl": "<b>We begrijpen dat dit wel of niet voor jou van toepassing kan zijn (mogelijk heb je momenteel geen eigen auto), maar we vragen om het je voor te stellen dat jijzelf elke activiteit uitvoert zodat je de vragen kan beantwoorden.  </b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START to practice",
                                "nl": "Klik op START om te oefenen"
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
                "componentName": "RATINGCOMPONENTDUTCH",
                "componentConfig": {
                    "numTrials": 2,
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
                                "activity": {
                                    "en": "Bring the car to the mechanic",
                                    "nl": "Breng jouw auto naar de garage"
                                },
                                "type": "DoSomething",
                                "questions": [
                                    {
                                        "question": {
                                            "en": "How much do you look forward to the outcome of it?",
                                            "nl": "In welke mate kijk je uit naar de uitkomst van deze activiteit?"
                                        },
                                        "legend": [
                                            {
                                                "en": "Not at all",
                                                "nl": "Helemaal niet"
                                            },
                                            {
                                                "en": "Very much",
                                                "nl": "Heel erg"
                                            }
                                        ]
                                    },
                                    {
                                        "question": {
                                            "en": "How mentally effortful does this activity feel to you?",
                                            "nl": " Hoe mentaal inspannend voelt deze activiteit voor jou? "
                                        },
                                        "legend": [
                                            {
                                                "en": "Not at all",
                                                "nl": "Helemaal niet"
                                            },
                                            {
                                                "en": "Very effortful",
                                                "nl": "Heel erg"
                                            }
                                        ]
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
                            "textContent": {
                                "en": "Now you are ready to start.",
                                "nl": "Nu ben je klaar om te beginnen."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We will show you a total of 40 activities and ask you a series of questions about each activity.",
                                "nl": "We zullen je 40 activiteiten laten zien en een serie van vragen over elke activiteit stellen. "
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please take a moment to picture yourself doing each activity before answering the questions.",
                                "nl": "Neem alsjeblieft een moment om jezelf voor te stellen dat je elke activiteit zelf doet voordat je de vragen beantwoordt."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "<b>Again, this is the longest part, and it may feel repetitive, but please be patient. There will be a break in the middle.</b>",
                                "nl": "<b>Nogmaals, dit is het langste deel en kan repetitief voelen, maar heb alsjeblieft geduld. Halverwege zal er een pauze zijn. </b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START when you are ready",
                                "nl": " Klik op START wanneer je er klaar voor bent "
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
                "componentName": "CHOICECOMPONENTDUTCH",
                "componentConfig": {
                    "numTrials": 13,
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
                    "title": {
                        "en": "You may now take a break! It is important that you leave this window open, otherwise your data and progress will be lost.",
                        "nl": "Je mag nu pauze houden! Het is belangrijk dat je deze pagina open houdt, anders is jouw data en voortgang verloren. "
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We simply ask that you keep your break to a maximum of <b>10 minutes.</b>",
                                "nl": "We vragen jou enkel om je pauze onder <b>10 minuten</b> te houden."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Press START when you are ready to continue",
                                "nl": "Klik op START wanneer je klaar bent om verder te gaan"
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
                "componentName": "CHOICECOMPONENTDUTCH",
                "componentConfig": {
                    "numTrials": 13,
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
                            "textContent": {
                                "en": "Thank you for completing Part 1 of the game!",
                                "nl": " Bedankt voor het voltooien van deel 1 van het spel! "
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
                        "en": "Everyday Activities Game - Part 2",
                        "nl": "Dagelijkse Activiteiten Spel – Deel 2"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Please read the following instructions carefully.",
                                "nl": "Lees onderstaande instructies alsjeblieft goed door."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "For this part of the task, you will be asked to choose between two different activities.",
                                "nl": "In dit deel van de taak zal je gevraagd worden om te kiezen tussen twee verschillende activiteiten. "
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Your job is to <b>imagine yourself faced with this choice in your everyday life, and to indicate which activity you would choose.</b>",
                                "nl": "Jouw taak is om <b>jezelf voor te stellen dat je voor deze keuze staat in je dagelijks leven en aan te geven welke activiteit je zou kiezen.</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT for an example",
                                "nl": "Klik op VOLGENDE voor een voorbeeld"
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
                                "en": "For example:",
                                "nl": "Bijvoorbeeld:"
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": {
                                "en": "/assets/images/instructions/everydaychoice-new/choice-example_en.png",
                                "nl": "/assets/images/instructions/everydaychoice-new/choice-example_nl.png"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "We ask that you try to picture the choice you would make in real life, even if some of the choices may not be ones you have ever been faced with.",
                                "nl": "We vragen jou om je de keuze die je in het echte leven zou maken voor te stellen, ook als een deel hiervan geen keuze is die je ooit meegemaakt hebt."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Tell us: <b>which activity would you MOST LIKELY CHOOSE TO DO?</b>",
                                "nl": "Vertel ons: <b>welke activiteit zou je HET MEEST WAARSCHIJNLIJK KIEZEN OM TE DOEN?</b>"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START to practice",
                                "nl": "Klik op START om te oefenen"
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
                "componentName": "CHOICECOMPONENTDUTCH",
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
                                "firstActivity": {
                                    "en": "Bring the car to the mechanic",
                                    "nl": " Breng de auto naar de garage "
                                },
                                "secondActivity": {
                                    "en": "Dust your bookshelves",
                                    "nl": "Stof je boekenkast af"
                                }
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
                                "en": "You finished the practice!",
                                "nl": "Je hebt het oefenen afgemaakt!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Now, please picture yourself doing the activity for each of the following activities, and rate which activity you would MOST LIKELY spend time doing.",
                                "nl": "Nu, stel jezelf alsjeblieft voor dat je elke activiteit zelf doet voor elke van de komende activiteiten en beoordeel welke activiteit je het MEEST WAARSCHIJNLIJK zult gaan doen."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click START when you are ready",
                                "nl": " Klik op START wanneer je er klaar voor bent "
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
                "componentName": "CHOICECOMPONENTDUTCH",
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
                            "textContent": {
                                "en": "Hooray! You have finished the Everyday Activities Game. We appreciate your time and effort in helping with our research.",
                                "nl": "Hoera! Je hebt het Dagelijkse Activiteiten Spel voltooid! We waarderen jouw tijd en moeite voor jouw hulp met ons onderzoek."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Before you go, you will complete some short questionnaires.",
                                "nl": "Voordat je gaat zal je een paar korte vragenlijsten invullen."
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click NEXT to continue",
                                "nl": "Klik op VOLGENDE om door te gaan"
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
WHERE id = 97;