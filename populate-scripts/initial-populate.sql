-- DELETE FROM tasks;
-- DROP TABLE participant_data, email_notifications, crowdsourced_users, study_tasks, study_users, tasks, feedback_questionnaire_responses, studies;

-- source /Users/nicholaslee/Work/go/src/github.com/cognitive-neuroscience/neuron/populate-scripts/initial-populate.sql
-- source C:/Users/nlee30/Documents/sidetings/sharplab/goNeuronWorkspace/src/github.com/cognitive-neuroscience/neuron/populate-scripts/initial-populate.sql
-- source /sbin/sharplab/populate-scripts/initial-populate.sql

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
-- TASKS
-- NUMBERS GAME (digit span)
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "Numbers Game",
    "The participant reads a sequence of numbers and enters them in the same or reverse order",
    "",
    '{
        "config": {},
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the Number Game Part 1",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Please read the instructions carefully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "This is a memory test"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "A sequence of numbers appear on the screen <b>one at a time</b>. (Ex: 3, 9, 2)"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Using the keypad shown on the screen, you will need to enter those same numbers <b>in the same order (Ex: 3, 9, 2)</b>."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You must click the \\"Submit\\" key to record your answer"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember when the keypad is shown, you need to enter the numbers <b>in the same order</b> as they were shown and then click submit."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If you don''t remember, press skip"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The game will launch in full-screen. Click \\"START\\" when you are ready for the practice round."
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
                "component": "DIGITSPANCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Good job!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will now play the actual game."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember when the keypad is shown, you need to enter the numbers <b>in the same order</b> as they were shown and click the <b>submit</b> button."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If you don''t remember the numbers, click skip for the next trial."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the actual game"
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
                "component": "DIGITSPANCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the Number Game Part 2",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "A sequence of numbers appear on the screen <b>one at a time</b>. (Ex: 3, 9, 2)"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Using the keypad shown on the screen, you will need to enter those same numbers <b>in REVERSE order (Ex: 2, 9, 3)</b> and then click the \\"Submit\\" key."
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round pt. 2",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Rememebr when the keypad is shown, you need to enter the numbers <b>in reverse order</b> as they were shown and click submit"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If you don''t remember, press skip"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The game will launch in full-screen."
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
                "component": "DIGITSPANCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Good job!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will now play the actual game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember when the keypad is shown, you need to enter the numbers <b>in reverse order</b> as they were shown and click the <b>submit</b> button"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If you don''t remember the numbers, press skip for the the next trial."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the actual game"
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
                "component": "DIGITSPANCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Congratulations!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You finished the game successfully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to continue"
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
),
-- FINGER TAPPING
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "Finger Tapping Game",
    "The participant uses their dominant or non dominant hand to tap the \"P\" and \"Q\" characters as quickly as they can",
    "",
    '{
        "config": {},
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the Finger Tapping Game",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Read the instructions carefully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "This is a test of finger tapping speed"
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
                "component": "SELECTOPTIONCOMPONENT",
                "content": {
                    "question": "Are you left handed or right handed?",
                    "cacheKey": "finger-tapping-handedness",
                    "options": [
                        {
                            "label": "Left Handed",
                            "value": "LEFT"
                        },
                        {
                            "label": "Right Handed",
                            "value": "RIGHT"
                        }
                    ]
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/fingertapping/index-finger-banner.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will have to <b>alternatively tap</b> the <b>P</b> and <b>Q</b> keys of the keyboard <b>as fast as you can</b>"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will do 3 rounds of this."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "We will tell you which hand to use right before each round"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "The keys you will be tapping on the keyboard are the \\"Q\\" and the \\"P\\" keys"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Please go ahead and find these keys now"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "First, let''s practice"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "For the practice, please use your <b>RIGHT</b> index finger"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "(the task will launch in fullscreen)"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Remember, you must use a SINGLE hand, and tap as fast as you can",
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
                "component": "FINGERTAPPINGCOMPONENT",
                "config": {
                    "isPractice": true,
                    "maxResponseTime": 10000,

                    "durationFixationPresented": 50,
                    "useHand": "RIGHT"
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Main round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Good job! Now you will complete the main test."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will be doing 3 rounds"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You’ll get a break between each round and we will tell you which hand to use just before you begin."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to continue"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "In the <b>first two rounds</b>, you have to tap <b>as fast as you can</b> with a <b>SINGLE</b> index finger for 1 full minute"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "We will tell you which hand to use before each round"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "In the <b>third round</b>, you have to use <b>BOTH</b> index fingers, one for each key, and keep tapping <b>as fast as you can</b> for 20 seconds"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to continue"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "First Round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Please use the index finger of your <b>DOMINANT HAND</b> for this round"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "(if you are right-handed, that is your right hand)"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "REMEMBER:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Tap the \\"P\\" and \\"Q\\" keys as fast as you can"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Remember, you must use a SINGLE hand and tap as fast as you can",
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
                "component": "FINGERTAPPINGCOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 60000,
                    "durationFixationPresented": 50,
                    "useHand": "DOMINANT"
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "It''s break time",
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
                            "textContent": "<b>Second Round:</b> Please use your <b>NON-DOMINANT</b> hand for this round."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "(so if you are right-handed, that is your left hand)"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You have to wait for <b> at least 30 seconds</b> before being able to continue"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The next round will automatically start in 2 minutes unless you choose to continue sooner"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
                        }
                    ]
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "You must use a SINGLE hand and tap as fast as you can",
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
                "component": "FINGERTAPPINGCOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 60000,
                    "durationFixationPresented": 50,
                    "useHand": "NONDOMNANT"
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "It''s break time",
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
                            "textContent": "<b>Third round:</b> Please use <b>BOTH INDEX FINGERS</b> for this round."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "This means you must use your LEFT finger to tap \\"Q\\" and your RIGHT finger to tap \\"P\\", and alternate between the two"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You have to wait <b> at least 30 seconds</b> before being able to continue"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The next round will automatically start in 2 minutes unless you choose to continue sooner"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
                        }
                    ]
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "You must use BOTH your index fingers, and tap as fast as you can",
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
                "component": "FINGERTAPPINGCOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 20000,
                    "durationFixationPresented": 50,
                    "useHand": "BOTH"
                }
            }
        ]
    }'
),
-- NBACK
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "N-Back",
    "The participant sees a sequence of letters and presses the left or right arrow arrow key to indicate if they saw that letter 2 letters ago",
    "",
    '{
        "config": {
            "counterBalanceGroups": {
                "1": 1,
                "2": 2,
                "3": 3,
                "4": 4
            }
        },
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the N-Back Task",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Read the instructions carefully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "This is a memory task:"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "In this task, letters will be shown on the screen."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "For each letter, you have to decide if it is the <b>same letter</b> that was presented <b>2 letters ago</b>"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have to press:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "⬅️ (Left arrow) for <b>not the same</b>, if the letter is <b>not the same</b> as the one that was presented 2 letters ago"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<br />"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "➡️ (Right arrow) for <b>the same</b> if the letter is <b>the same</b> as the one that was presented 2 letters ago"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Here is an example",
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/nback/examplePart1.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Note that for the first two letters of the task, there is no letter to compare to, so you just press ⬅️ for these."
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Here is an example",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "The next letter is K:"
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/nback/examplePart2.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Now, you press ➡️ because a K was also <b>presented</b> two letters ago"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Here is an example",
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "center",
                            "imagePath": "/assets/images/instructions/nback/examplePart3.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Note that for the first two letters of the task, there is no letter to compare to, so you just press ⬅️ for these"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice Round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice! You will have very little time to respond, so be ready!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "(the game will launch in fullscreen)"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember, press:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "⬅️ (left arrow) if the letter is <b>NOT THE SAME</b> as 2 letters ago"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "➡️ (right arrow) if the letter is <b>THE SAME</b> as 2 letters ago"
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
                "component": "NBACKCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round is now complete",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will now play the actual game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will earn 10 points for every right answer"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember, press:"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "⬅️ (left arrow) if the letter is <b>NOT THE SAME</b> as 2 letters ago"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "➡️ (right arrow) if the letter is <b>THE SAME</b> as 2 letters ago"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Good luck!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the actual game"
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
                "component": "NBACKCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Game has finished",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Congratulations! You have finished the game successfully"
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "nback-total-score",
                            "textContent": "You scored ??? points"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation. Click \\"CONTINUE\\""
                        }
                    ]
                }
            }
        ]
    }'
),
-- STROOP
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "Stroop Task",
    "The participant sees either the word RED, BLUE, or GREEN. The participant has to press 1 if the word is colored red, 2 if the word is colored blue, or 3 if the word is colored green",
    "",
    '{
        "config": {
            "counterBalanceGroups": {
                "1": 1,
                "2": 2,
                "3": 3,
                "4": 4
            }
        },
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the Stroop Task",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Read the instructions carefully."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "In this task, different words for colors (Ex. \\"BLUE\\") will be presented in different colored ink:"
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": "/assets/images/instructions/strooptask/stroop_ink_examples.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You have to response to the <b>COLOR</b> of the ink that the word is printed in, <b>NOT</b> the word itself."
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": "/assets/images/instructions/strooptask/stroop_ink_instructions.png"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Here are some examples",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "If you see \\"BLUE\\" with red ink then you should respond \\"1\\""
                        },
                        {
                            "sectionType": "text",
                            "textContent": "If you see \\"BLUE\\" with blue ink then you should respond \\"2\\"; etc..."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Again, only the COLOR of the ink matters, NOT the word itself."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Please use the number keys \\"1\\", \\"2\\", \\"3\\" on your keyboard to respond"
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": "/assets/images/instructions/strooptask/stroop_ink_instructions.png"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice Round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Good luck! You will have very little time to respond, so be ready"
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": "/assets/images/instructions/strooptask/stroop_ink_instructions.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The game will launch in fullscreen"
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
                "component": "STROOPCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round is now complete",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will now play the actual game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will earn 10 points for every right answer"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Good luck!"
                        },
                        {
                            "sectionType": "image-square",
                            "imagePath": "/assets/images/instructions/strooptask/stroop_ink_instructions.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready for the actual game"
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
                "component": "STROOPCOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 2000,
                    "interTrialDelay": 0,
                    "showFeedbackAfterEachTrial": false,
                    "showScoreAfterEachTrial": false,
                    "durationOfFeedback": 500,
                    "durationFixationPresented": 1000,
                    "numTrials": 120,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Congratulations! You finished the game successfully",
                    "sections": [
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "total-score",
                            "textContent": "You scored: ??? points"
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
),
-- TRAIL MAKING (connect the dots)
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "Trail Making",
    "The participant clicks different buttons in sequential order as fast as possible",
    "",
    '{
        "config": {},
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to Connect the dots game - Part 1",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Read the instructions carefully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "In this task, you will be shown numbered circles on the screen"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You must start by clicking the number 1, then 2, and then continue in ascending order as fast as possible"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The game will launch in full-screen"
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
                "component": "TRAILMAKINGCOMPONENT",
                "config": {
                    "isPractice": true,
                    "maxResponseTime": 240000,
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round is now complete!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will now play the actual game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You must start by clicking the number 1, then 2, and then continue in ascending order as fast as possible"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
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
                "component": "TRAILMAKINGCOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 240000,
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the Connect the dots game - Part 2",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Read the instructions carefully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "In this task, you will be shown circles with numbers and letters"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Starting with number 1, you must click the circles ALTERNATING between numbers and letters in increasing order as fast as possible."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Like this:"
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/trailmaking/connect-the-dots-2-example.png"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice"
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/trailmaking/connect-the-dots-2-example.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The game will launch in full-screen"
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
                "component": "TRAILMAKINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice round is now complete!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will now play the actual game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Starting with number 1, you must click the circles ALTERNATING between numbers and letters in ascending order as fast as possible"
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/trailmaking/connect-the-dots-2-example.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready"
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
                "component": "TRAILMAKINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Congratulations!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You finished the game successfully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\""
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
),
-- TASK SWITCHING
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Task Switching",
    "The participant is given a number from 1 - 4 or from 6 - 9. If the number if blue, then the participant should press the arrow keys to indicate whether the number if odd or even. If the number is orange, the participant should press the arrow keys to indicate whether the number if less than or greater than 5",
    "",
    '{
        "config": {},
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "TASKSWITCHINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "TASKSWITCHINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "skippable": true,
                "skippableCacheKey": "task-switching-should-skip",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "skippable": true,
                "skippableCacheKey": "task-switching-should-skip",
                "content": {
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
                "component": "TASKSWITCHINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "TASKSWITCHINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "TASKSWITCHINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
),
-- DEMAND SELECTION
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Demand Selection",
    "The participant selects one of two patches on the screen and is then presented with the task switching task. One patch is more difficult and switches more often than the other",
    "",
    '{
        "config": {
            "counterBalanceGroups": {
                "1": "EASIER PATCH",
                "2": "HARDER PATCH"
            }
        },
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "skippable": true,
                "skippableCacheKey": "demandselection-should-skip",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "skippable": true,
                "skippableCacheKey": "demandselection-should-skip",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DEMANDSELECTIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
),
-- SMILEY FACE
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Smiley Face",
    "The participant is presented with both long and short faces. They have to hit a key to show that they saw a shorter smile, compared to a different key for a longer smile",
    "",
    '{
        "config": {
            "counterBalanceGroups": {
                "1": "SHORTFACEREWARDEDMORE",
                "2": "LONGFACEREWARDEDMORE"
            }
        },
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the Smiley Face Game",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will be shown a smiley face."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Your job is to determine if the face has a <b>short</b> or a <b>long</b> mouth."
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "This will be hard because they look very similar!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to practice"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice Round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Put your index fingers in position."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will not have much time - the smiley faces will flash on the screen very quickly!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You must press \\"Z\\" if it is a <b>short</b> mouth, or \\"M\\" if it is a <b>long</b> mouth"
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "In this practice, you will be shown the type of face (short or long) as a guide"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The game will launch in full-screen"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready to start the practice round"
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
                "component": "SMILEYFACECOMPONENT",
                "config": {
                    "isPractice": true,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "showHint": true,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationNoFacePresented": 500,
                    "durationStimulusPresented": 100,
                    "numShortFaces": 5,
                    "numFacesMoreRewarded": 5,
                    "numLongFaces": 5,
                    "numFacesLessRewarded": 5,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Practice Round",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Let''s practice one more time!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Put your index fingers in position."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will not have much time - the smiley faces will flash on the screen very quickly!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You must press \\"Z\\" if it is a <b>short</b> mouth, or \\"M\\" if it is a <b>long</b> mouth"
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "In this practice, you will not be shown the type of face anymore"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The game will launch in full-screen"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready to start the practice round"
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
                "component": "SMILEYFACECOMPONENT",
                "config": {
                    "isPractice": true,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationNoFacePresented": 500,
                    "durationStimulusPresented": 100,
                    "numShortFaces": 5,
                    "numFacesMoreRewarded": 5,
                    "numLongFaces": 5,
                    "numFacesLessRewarded": 5,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Good job!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Now you are ready for the real game."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will get <b>50 points</b> for correct answers <b>but only some of your correct answers will be rewarded</b> with points."
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready to start the game."
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
                "component": "SMILEYFACECOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationStimulusPresented": 100,
                    "durationNoFacePresented": 500,
                    "numShortFaces": 50,
                    "numFacesMoreRewarded": 30,
                    "numLongFaces": 50,
                    "numFacesLessRewarded": 10,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Please take a break. We ask that you keep it under <b>2 minutes</b>.",
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Press \\"START\\" when you are ready to continue"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Get ready!",
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
                "component": "SMILEYFACECOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationStimulusPresented": 100,
                    "durationNoFacePresented": 500,
                    "numShortFaces": 50,
                    "numFacesMoreRewarded": 30,
                    "numLongFaces": 50,
                    "numFacesLessRewarded": 10,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Please take a break. We ask that you keep it under <b>2 minutes</b>.",
                    "sections": [
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Press \\"START\\" when you are ready to continue"
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Get ready!",
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
                "component": "SMILEYFACECOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 3000,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationFixationPresented": 500,
                    "durationStimulusPresented": 100,
                    "durationNoFacePresented": 500,
                    "numShortFaces": 50,
                    "numFacesMoreRewarded": 30,
                    "numLongFaces": 50,
                    "numFacesLessRewarded": 10,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Congratulations!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You finished the game successfully"
                        },
                        {
                            "sectionType": "text",
                            "injection": "cached-string",
                            "cacheKey": "smiley-face-total-score",
                            "textContent": "You won ??? points"
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/smileyface/countdown.png"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"NEXT\\" to continue"
                        }
                    ]
                }
            }
        ]
    }'
),
-- ODDBALL
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Oddball Task",
    "The participant is presented with various shapes. One shape (the triangle) is the target response. The participant needs to press a specific key whenever they see the target. Otherwise, they should press an alternative key for all other shapes",
    "",
    '{
        "config": {
            "counterBalanceGroups": {
                "1": "m",
                "2": "z"
            }
        },
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the Oddball Task",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Read the instructions carefully"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "In this game, you will see \\"+\\" in the middle of the screen."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The \\"+\\" will be replaced by different shapes, which will be presented only briefly."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Your goal is to identify when the triangle appears."
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Press <b>???</b> on the keyboard when you see the TRIANGLE."
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Press <b>???</b> on the keyboard for any other shape."
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will start with a warm-up block and then a practice block where feedback will be provided after each trial."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>Remember:</b>"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Press <b>???</b> on the keyboard when you see the TRIANGLE"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Press <b>???</b> on the keyboard for any other shape"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" to begin the warm-up block"
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
                "component": "ODDBALLCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have completed the warm-up block! Next is a practice block where feedback will be provided."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>Remember:</b>"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Press <b>???</b> on the keyboard when you see the TRIANGLE"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Press <b>???</b> on the keyboard for any other shape"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready to begin the practice"
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
                "component": "ODDBALLCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have reached the end of the practice block! Feedback will no longer be provided. There will be a total of 4 blocks with breaks between each block."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "<b>Remember:</b>"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Press <b>???</b> on the keyboard when you see the TRIANGLE"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Press <b>???</b> on the keyboard for any other shape"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click \\"START\\" when you are ready to begin"
                        }
                    ]
                }
            },
            {
                "component": "ODDBALLCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "You''ve reached the end of the block!",
                    "timerConfig": {
                        "timer": 30000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 0
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You may take a 30 second break"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember:"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Press ??? on the keyboard when you see a triangle"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Press ??? on the keyboard for any other shape"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will be automatically directed to the next block after the break. A \\"Get Ready!\\" slide will appear before you begin. You can also click \\"NEXT\\" to move on to the next round"
                        }
                    ]
                }
            },
            {
                "component": "ODDBALLCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "You''ve reached the end of the block!",
                    "timerConfig": {
                        "timer": 30000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 0
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You may take a 30 second break"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember:"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Press ??? on the keyboard when you see a triangle"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Press ??? on the keyboard for any other shape"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will be automatically directed to the next block after the break. A \\"Get Ready!\\" slide will appear before you begin. You can also click \\"NEXT\\" to move on to the next round"
                        }
                    ]
                }
            },
            {
                "component": "ODDBALLCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "You''ve reached the end of the block!",
                    "timerConfig": {
                        "timer": 30000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 0
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You may take a 30 second break"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember:"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance",
                            "textContent": "Press ??? on the keyboard when you see a triangle"
                        },
                        {
                            "sectionType": "text",
                            "injection": "counterbalance-alternative",
                            "textContent": "Press ??? on the keyboard for any other shape"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will be automatically directed to the next block after the break. A \\"Get Ready!\\" slide will appear before you begin. You can also click \\"NEXT\\" to move on to the next round"
                        }
                    ]
                }
            },
            {
                "component": "ODDBALLCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Game has finished",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation!"
                        }
                    ]
                }
            }
        ]
    }'
),
-- EVERYDAY CHOICE
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Everyday Choice",
    "Modified rating task where the participant is required to rate their most preferred option when presented with a single activity or a list of activiites",
    "",
    '{
        "config": {
            "counterBalanceGroups": {
                "1": "LOWTOHIGH",
                "2": "HIGHTOLOW"
            }
        },
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "RATINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "RATINGCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "CHOICECOMPONENT",
                "config": {
                    "isPractice": true,
                    "maxResponseTime": 15000,
                    "interTrialDelay": 100,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingSlider": 0,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            {
                                "firstActivity": "Bring the car to the mechanic",
                                "secondActivity": "Dust your bookshelves",
                                "legend": ["Strongly choose left", "Strongly choose right"]
                            }
                        ]
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "CHOICECOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 15000,
                    "interTrialDelay": 100,
                    "delayToShowHelpMessage": 10000,
                    "durationHelpMessageShown": 5000,
                    "durationOutOftimeMessageShown": 2000,
                    "delayToShowRatingSlider": 0,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
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
),
-- QUESTIONNAIRES
-- DEMOGRAPHICS
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Demographics Questionnaire",
    "Demographics questionnaire without SES questions",
    "",
    '{
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
    }'
),
-- PAVLOVIA TASKS
(
    NULL, 
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Corsi",
    "Corsi test task",
    "https://run.pavlovia.org/Sharp_lab/corsi-test/html",
    '{}'
),
-- CONSENT FORMS
-- STRESS CLINICAL FR
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Stress Clinical FR",
    "",
    "",
    '{
        "img": "../../../assets/images/consent/consentOrgs.png",
        "title": "AVANT DE PROCÉDER VOUS DEVEZ LIRE CE FORMULAIRE DE CONSENTEMENT",
        "summary": [
            {
                "caption": "Nom de l''étude:",
                "words": [
                    "L''effet du stress sur la cognition et l''humeur dans la maladie de Parkinson : une étude pilote"
                ]
            },
            {
                "caption": "Chercheur responsable du projet de recherche:",
                "words": ["Madeleine Sharp MD MSc, Département de Neurologie et Neurochirurgie, Université McGill"]
            },
            {
                "caption": "Commanditaire:",
                "words": ["interne"]
            },
            {
                "caption": "Protocole:",
                "words": ["2020-6116, version 3"]
            }
        ],
        "body": [
            {
                "caption": "",
                "words": [
                    "Nous vous invitons à prendre à cette recherche parce que vous êtes affecté par la maladie de Parkinson ou parce que vous avez exprimé un intérêt pour la recherche reliée au Parkinson et que vous aimeriez participer en tant que sujet de contrôle. Veuillez prendre le temps de lire l''information suivante."
                ]
            },
            {
                "caption": "OBJECTIF DU PROJET DE RECHERCHE",
                "words": [
                    "Les émotions fortes et le fait d''avoir vécu beaucoup de stress au cours d''une vie influencent nos processus cognitifs : la manière dont nous pensons, notre concentration, etc. Il est possible qu''avec la maladie de Parkinson, la façon que le cerveau gère les émotions et le stress, et la manière dont le corps réagit à ces expériences pourraient être différentes. Le but de cette étude est d''examiner l''impact de la maladie de Parkinson sur les processus émotifs et la réponse corporelle aux émotions. Pour cette étude, nous recrutons un total de 400 participants, hommes et femmes, âgés entre 45 et 80 ans. "
                ]
            },
            {
                "caption": "QU''AUREZ-VOUS À FAIRE?",
                "words": [
                    "Si vous choisissez de participer, nous allons vous demander de:<br><br>",
                    "1. &nbsp;&nbsp; Nous fournir des informations démographiques et sur votre santé (âge, sexe, éducation, médicaments, antécédents de troubles psychiatriques et neurologiques), et, le cas échéant, sur votre maladie de Parkinson (durée, principaux symptômes moteurs et cognitifs).",
                    "2. &nbsp;&nbsp; Compléter des questionnaires à propos de votre humeur et votre cognition et jouer à deux jeux conçus pour investiguer les différents aspects de la cognition.",
                    " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ceci prendra moins de 2 heures. <br><br>",
                    "De plus, nous vous demanderons si vous êtes intéressé à recevoir des offres pour participer à d''autre études de recherche. Si vous l''êtes, vous n''avez qu''à cocher la boîte à la fin de ce formulaire.<br><br>",
                    "Vous pouvez choisir de mettre fin à votre participation à n''importe quel moment."
                ]
            },
            {
                "caption": "CONFIDENTIALITÉ",
                "words": [
                    "Cette étude implique la collection et le stockage de données personnelles et identifiables, il existe donc un risque d''atteinte à la vie privée ou un bris de confidentialité.  Pour minimiser ces risques, votre adresse courriel sera sauvegardée séparément de vos réponses aux questionnaires et aux jeux, dans un fichier protégé par un mot de passe. Vos données de recherche seront identifiées par un code unique et seront sauvegardées de manière sécuritaire sur le serveur de l''Université McGill, protégées par les mesures de sécurité physique et numérique standards, et seront sauvegardées pendant 20 ans. Aucune information personnelle ou identifiable ne sera partagée en dehors de l''équipe du Dr. Sharp. À des fins de surveillance, de contrôle, de protection et de sécurité, votre dossier de recherche pourrait être consulté par des représentants de l''établissement ou du comité d''éthique de la recherche. Ces personnes et ces organismes adhèrent à une politique de confidentialité.<br><br>",
                    "Votre adresse courriel sera conservée pendant toute la durée de l''étude afin que nous puissions vous inclure dans le concours, puis sera supprimée. Elle sera conservée séparément de toutes les autres informations recueillies auprès de vous. Si vous choisissez d''accepter ci-dessous, nous utiliserons également votre adresse courriel pour vous contacter au sujet d''opportunités de recherche similaires ; dans ce cas elle sera sauvegardée en toute sécurité pendant 10 ans. Votre courriel ne sera pas utilisé à d''autres fins, ni partagé avec quiconque."
                ]
            },
            {
                "caption": "AVANTAGES ASSOCIÉS AU PROJET DE RECHERCHE",
                "words": [
                    "Vous ne retirerez pas de bénéfices de votre participation à ce projet de recherche. Nous espérons que les résultats obtenus contribueront à l''avancement des connaissances scientifiques dans ce domaine."
                ]
            },
            {
                "caption": "RISQUES ASSOCIÉS AU PROJET DE RECHERCHE",
                "words": [
                    "Malgré la suppression des informations d''identification et l''utilisation de mesures de sécurité standard pour collecter et sauvegarder les données, il peut être possible, dans certaines circonstances, de réidentifier les individus, mais nous pensons que ce risque est très faible. Nous n''anticipons aucun risque physique associé à votre participation. Vous pourriez trouver les tâches ennuyeuses ou fatigantes."
                ]
            },
            {
                "caption": "PARTICIPATION VOLONTAIRE ET DROIT DE RETRAIT",
                "words": [
                    "Votre participation à ce projet est volontaire. Vous êtes donc libre de refuser d''y participer.  Vous pouvez également vous retirer de ce projet à n''importe quel moment, sans avoir à donner de raisons, mais vous pouvez également envoyer un courriel à sharplab.neuro@mcgill.ca pour en discuter avec nous. Votre décision n''entraînera aucune pénalité.<br><br>",
                    "Si vous décidez de vous retirer de l''étude, l''information déjà recueillie dans le cadre de ce projet sera néanmoins conservée, analysée ou utilisée pour assurer l''intégrité du projet."
                ]
            },
            {
                "caption": "ALLEZ VOUS ÊTRE PAYÉ?",
                "words": [
                    "En participant vous courrez la chance de gagner l''une des quatre cartes-cadeaux électroniques Amazon de $100. "
                ]
            },
            {
                "caption": "IDENTIFICATION DES PERSONNES-RESSOURCES",
                "words": [
                    "Si vous avez des questions ou éprouvez des problèmes en lien avec le projet de recherche, ou si vous souhaitez vous en retirer, vous pouvez communiquer avec le médecin responsable ou avec une personne de l''équipe de recherche au numéro suivant du lundi au vendredi de 9h00 à 17h00 : (514) 398-5174. Vous pouvez aussi rejoindre l''équipe de recherche en envoyant un courriel à sharplab.neuro@mcgill.ca.<br><br>",
                    "Pour toute question concernant vos droits en tant que participant à ce projet de recherche ou si vous avez des plaintes ou des commentaires à formuler, vous pouvez communiquer avec:<br><br>",
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Le Commissaire local aux plaintes et à la qualité des services de l''Hôpital Neurologique de Montréal au numéro suivant: (514) 934-1934 ext. 22223."
                ]
            },
            {
                "caption": "SURVEILLANCE DES ASPECTS ETHIQUES DU PROJET DE RECHERCHE",
                "words": [
                    "Le comité d''éthique de la recherche du Centre Universitaire de santé McGill a approuvé le projet et en assurera le suivi."
                ]
            }
        ],
        "endMessage": "En cliquant \\"ACCEPTER\\" ci-dessous vous confirmez que vous avez pris connaissance de l''information dans le formulaire de consentement et que vous acceptez de participer aux conditions qui y sont énoncées",
        "buttons": {
            "reject": {
                "show": true,
                "text": "DÉCLINER"
            },
            "accept": {
                "show": true,
                "text": "ACCEPTER"
            }
        }
    }'
),
-- STRESS CLINICAL
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Stress Clinical",
    "",
    "",
    '{
        "img": "../../../assets/images/consent/consentOrgs.png",
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
        "body": [
            {
                "caption": "",
                "words": [
                    "We are inviting you to take part in this research study because you are either affected by Parkinson’s disease or are interested in participating as a healthy volunteer. Please take the time to read the following information."
                ]
            },
            {
                "caption": "STUDY PURPOSE",
                "words": [
                    "Strong emotions and lifetime exposure to stress are known to influence our cognitive processes, i.e. how we think, how well we concentrate, etc. In Parkinson’s disease, there is some evidence that emotions are processed differently, and that the way the body reacts may also be different. The purpose of this study is to examine the impact of Parkinson’s disease on emotional processing and the body’s response to emotions. For this research study, we will recruit a total of 400 participants, men and women, aged between 45 and 80."
                ]
            },
            {
                "caption": "WHAT WILL YOU BE ASKED TO DO?",
                "words": [
                    "If you choose to participate you will be asked to:<br><br>",
                    "1. &nbsp;&nbsp; Provide basic information about your demographics and your health (age, sex, education, medication use, history of neurological and psychiatric disorders).",
                    "2. &nbsp;&nbsp; Complete a combination of short ‘brain games’ and questionnaires, designed to examine different aspects of cognition, where you will be required to use the keys of your keyboard to provide responses.",
                    " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This will take under 2 hours <br><br>",
                    "In addition, we will ask you whether you are interested in receiving offers to participate in other online research. If you are, you can check the appropriate box at the end of this consent form.<br><br>",
                    "You can choose to terminate your participation at any time."
                ]
            },
            {
                "caption": "POTENTIAL RISKS AND CONFIDENTIALITY",
                "words": [
                    "This study involves collecting and storing personal, identifiable information about you, so there is a potential for invasion of privacy or breach in confidentiality. To minimize these risks, your email will be stored in a password-protected file separately from your responses on the questionnaires and brain games. Your information will be assigned a unique code number and stored in a secure manner on a McGill University server, protected by standard physical and digital security measures, and will be stored for 20 years. No personal, identifiable information will be shared outside the study team. For monitoring, control, and security your study file may be examined by representatives of the institution or the Research Ethics Board. All these individuals and organizations adhere to policies on confidentiality.",
                    "Your email address will be kept for the duration of the study so that we may enter it in the draw. It will be kept separate from all other information collected from you. If you choose to agree below, we will also use your email address to contact you about similar research opportunities, in which case it will be saved securely for 10 years. Your email address will not be used for any other purposes nor shared with anyone."
                ]
            },
            {
                "caption": "BENEFITS ",
                "words": [
                    "There is no direct benefit to you for participating in this research.  However, we hope that the study results will contribute to the advancement of scientific knowledge in this field."
                ]
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
                    "Your participation in this research project is voluntary. Therefore, you may refuse to participate. You may also withdraw from the project at any time, without giving any reason, though you may also email <a href=\\"#\\">sharplab.neuro@mcgill.ca</a> to discuss this with us. Your decision will not result in any penalty.<br><br>",
                    "If you withdraw from the study, the information already collected for the study will be stored, analyzed and used to ensure the integrity of the study."
                ]
            },
            {
                "caption": "WILL YOU BE PAID?",
                "words": ["You will be entered to win one of four $100 Amazon e-gift cards."]
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
    }'
),
-- STRESS PILOT
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Stress Pilot",
    "",
    "",
    '{
        "img": "../../../assets/images/consent/consentOrgs.png",
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
        }'
),
-- STRESS CLINICAL DEBRIEF
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Stress Clinical Debrief",
    "",
    "",
    '{
        "img": "../../../assets/images/consent/consentOrgs.png",
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
    }'
),
-- WEB PHENO CLINICAL FR
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Web Pheno Clinical FR",
    "",
    "",
    '{
        "img": "../../../assets/images/consent/consentOrgs.png",
        "title": "AVANT DE PROCÉDER VOUS DEVEZ LIRE CE FORMULAIRE DE CONSENTEMENT",
        "summary": [
            {
                "caption": "Nom de l''étude:",
                "words": [
                    "Endophénotypage cognitif de la maladie de Parkinson: développement d''une plateforme et étude pilote"
                ]
            },
            {
                "caption": "Chercheur responsable du projet de recherche:",
                "words": ["Madeleine Sharp MD MSc, Département de Neurologie et Neurochirurgie, Université McGill"]
            },
            {
                "caption": "Commanditaire:",
                "words": ["Parkinson Foundation"]
            },
            {
                "caption": "Protocole:",
                "words": ["2020-6045, version 2"]
            }
        ],
        "body": [
            {
                "caption": "",
                "words": [
                    "Nous vous invitons à prendre à cette recherche parce que vous êtes affecté par la maladie de Parkinson, vous avez un trouble comportemental en sommeil paradoxal, ou parce que vous avez exprimé un intérêt pour la recherche reliée au Parkinson et que vous aimeriez participer en tant que sujet de contrôle. Veuillez prendre le temps de lire l''information suivante."
                ]
            },
            {
                "caption": "OBJECTIF DU PROJET DE RECHERCHE",
                "words": [
                    "Les symptômes cognitifs associés à la maladie de Parkinson varient énormément. Certains patients développent une apathie significative ou des problèmes de concentration tandis que d''autres s''adonnent à la boxe ou planifient des groupes de soutien locaux. Présentement, les outils disponibles pour identifier ces symptômes ne permettent pas de comprendre leur mécanisme au niveau du cerveau. Cette étude vise à utiliser des tests informatiques de la fonction cognitive pour mieux comprendre les mécanismes de dysfonctionnement cognitif chez les patients atteints de la maladie de Parkinson. Pour cette étude, nous recrutons un total de 1000 participants, hommes et femmes, âgés entre 50 et 90 ans."
                ]
            },
            {
                "caption": "QU''AUREZ-VOUS À FAIRE?",
                "words": [
                    "Si vous choisissez de participer, nous allons vous demander de: <br><br>",
                    "1. &nbsp;&nbsp; Créer un nom d''utilisateur (votre adresse courriel) et un mot de passe de votre choix.",
                    "2. &nbsp;&nbsp; Nous fournir des informations démographiques et sur votre santé (âge, sexe, éducation, médicaments, antécédents de troubles psychiatriques et neurologiques), et, le cas échéant, sur votre maladie de Parkinson (durée, principaux symptômes moteurs et cognitifs).",
                    "3. &nbsp;&nbsp; Compléter sept questionnaires à propos de votre humeur et votre cognition et jouer à quatre jeux conçus pour investiguer les différents aspects de la cognition.",
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ceci prendra moins de 2 heures et vous aurez l''opportunité de prendre une pause et d''y revenir plus tard.",
                    "4. &nbsp;&nbsp; Chaque année, pour un maximum de 5 ans, vous recevrez un courriel du site web de l''étude vous demandant de participer à nouveau. Lors de ces suivis, les tests seront similaires mais pas identiques à la première session.",
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; De plus, nous vous demanderons si vous êtes intéressés à recevoir des offres pour participer à d''autre études de recherche. Si vous l''êtes, vous n''avez qu''à cocher la boîte à la fin de ce formulaire.",
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vous pouvez choisir de mettre fin à votre participation à n''importe quel moment et après n''importe quel nombre de visites."
                ]
            },
            {
                "caption": "CONFIDENTIALITÉ",
                "words": [
                    "Cette étude implique la collection et le stockage de données personnelles et identifiables, il existe donc un risque d''atteinte à la vie privée ou un bris de confidentialité.  Pour minimiser ces risques, votre adresse courriel sera sauvegardée séparément de vos réponses aux questionnaires et aux jeux, dans un fichier protégé par un mot de passe. Vos données de recherche seront identifiées par un code unique et seront sauvegardées de manière sécuritaire sur le serveur de l''Université McGill, protégées par les mesures de sécurité physique et numérique standards, et seront sauvegardées pendant 20 ans. Aucune information personnelle ou identifiable ne sera partagée en dehors de l''équipe du Dr. Sharp. À des fins de surveillance, de contrôle, de protection et de sécurité, votre dossier de recherche pourrait être consulté par des représentants de l''établissement ou du comité d''éthique de la recherche. Ces personnes et ces organismes adhèrent à une politique de confidentialité.<br><br>",
                    "Votre adresse courriel sera conservée pendant toute la durée de l''étude afin que nous puissions vous contacter pour les visites de suivi, puis sera supprimée. Elle sera conservée séparément de toutes les autres informations recueillies auprès de vous. So vous choisissez d''accepter ci-dessous, nous utiliserons également votre adresse courriel pour fournir des mises à jour (pas plus de deux fois par an) et pour vous contacter au sujet d''opportunités de recherche similaires, auquel cas elle sera sauvegardée en toute sécurité pendant 10 ans. Votre courriel ne sera pas utilisé à d''autres fins, ni partagé avec quiconque."
                ]
            },
            {
                "caption": "AVANTAGES ASSOCIÉS AU PROJET DE RECHERCHE",
                "words": [
                    "Vous ne retirerez pas de bénéfices de votre participation à ce projet de recherche. Nous espérons que les résultats obtenus contribueront à l''avancement des connaissances scientifiques dans ce domaine et au développement de meilleurs traitements pour les patients."
                ]
            },
            {
                "caption": "RISQUES ASSOCIÉS AU PROJET DE RECHERCHE ",
                "words": [
                    "Malgré la suppression des informations d''identification et l''utilisation de mesures de sécurité standard pour collecter et sauvegarder les données, il peut être possible, dans certaines circonstances, de réidentifier les individus, mais nous pensons que ce risque est très faible. Nous n''anticipons aucun risque physique associé à votre participation. Vous pourriez trouver les tâches ennuyeuses ou fatigantes."
                ]
            },
            {
                "caption": "PARTICIPATION VOLONTAIRE ET DROIT DE RETRAIT",
                "words": [
                    "Votre participation à ce projet est volontaire. Vous êtes donc libre de refuser d''y participer.  Vous pouvez également vous retirer de ce projet à n''importe quel moment, sans avoir à donner de raisons, mais vous pouvez également envoyer un courriel à sharplab.neuro@mcgill.ca pour en discuter avec nous. Votre décision n''entraînera aucune pénalité. <br><br>",
                    "Si vous décidez de vous retirer de l''étude, l''information déjà recueillie dans le cadre de ce projet sera néanmoins conservée, analysée ou utilisée pour assurer l''intégrité du projet."
                ]
            },
            {
                "caption": "ALLEZ VOUS ÊTRE PAYÉ?",
                "words": [
                    "En participant vous courrez la chance de gagner l''une des dix cartes-cadeaux électroniques Amazon de $100. "
                ]
            },
            {
                "caption": "IDENTIFICATION DES PERSONNES-RESSOURCES",
                "words": [
                    "Si vous avez des questions ou éprouvez des problèmes en lien avec le projet de recherche, ou si vous souhaitez vous en retirer, vous pouvez communiquer avec le médecin responsable ou avec une personne de l''équipe de recherche au numéro suivant du lundi au vendredi de 9h00 à 17h00 : (514) 398-5174. Vous pouvez aussi rejoindre l''équipe de recherche en envoyant un courriel à sharplab.neuro@mcgill.ca.<br><br>",
                    "Pour toute question concernant vos droits en tant que participant à ce projet de recherche ou si vous avez des plaintes ou des commentaires à formuler, vous pouvez communiquer avec:<br><br>",
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Le Commissaire local aux plaintes et à la qualité des services de l''Hôpital Neurologique de Montréal au numéro suivant : (514) 934-1934 ext. 22223."
                ]
            },
            {
                "caption": "SURVEILLANCE DES ASPECTS ETHIQUES DU PROJET DE RECHERCHE",
                "words": [
                    "Le comité d''éthique de la recherche du Centre Universitaire de santé McGill a approuvé le projet et en assurera le suivi."
                ]
            }
        ],
        "endMessage": "En cochant la boîte “Participer” ci-dessous vous confirmez que vous avez pris connaissance de l''information dans le formulaire de consentement et que vous acceptez de participer aux conditions qui y sont énoncées. ",
        "buttons": {
            "reject": {
                "show": true,
                "text": "DÉCLINER"
            },
            "accept": {
                "show": true,
                "text": "ACCEPTER"
            }
        }
    }'
),
-- WEB PHENO CLINICAL
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Web Pheno Clinical",
    "",
    "",
    '{
        "img": "../../../assets/images/consent/consentOrgs.png",
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
        "body": [
            {
                "caption": "",
                "words": [
                    "We are inviting you to take part in this research study because you are either affected by Parkinson’s disease, have REM-sleep behaviour disorder, or are interested in participating as a healthy volunteer. Please take the time to read the following information."
                ]
            },
            {
                "caption": "STUDY PURPOSE",
                "words": [
                    "Cognitive symptoms in Parkinson’s disease vary immensely. Some patients develop significant apathy or difficulty multi-tasking, others take up boxing or plan local support groups. Current tools used to identify symptoms fall short of being able to help us understand this variability because they don’t provide clues about the underlying brain mechanisms. The purpose of this study is to use computer tests of cognitive function, inspired by the tests used in laboratory animals, to arrive at a better understanding of the mechanisms underlying cognitive symptoms in Parkinson’s disease. For this research study, we will recruit a total of 1000 participants, men and women, aged between 50 and 90."
                ]
            },
            {
                "caption": "WHAT WILL YOU BE ASKED TO DO?",
                "words": [
                    "If you choose to participate you will be asked to: <br><br>",
                    "1. &nbsp;&nbsp; Create a username (your email address) and password of your choice",
                    "2. &nbsp;&nbsp; Provide basic information about your demographics and your health (age, sex, education, medication use, history of neurological and psychiatric disorders), and, if applicable, about your Parkinson’s disease (duration, main motor and cognitive symptoms).",
                    "3. &nbsp;&nbsp; Complete seven questionnaires about your mood and cognition, and play four ‘brain games’, designed to examine different aspects of cognition.",
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This will take under 2 hours and you will have the opportunity to pause part-way through and to return to it later.",
                    "4. &nbsp;&nbsp; Every year, for a maximum of 5 years, you will receive an email from the study website asking you to participate again. At these follow-up sessions, testing will be similar but not identical to the first session.",
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In addition, we will ask you whether you are interested in receiving offers to participate in other online research. If you are, you can check the appropriate box at the end of this consent form.",
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You can choose to terminate your participation at any time and after any number of visits."
                ]
            },
            {
                "caption": "POTENTIAL RISKS AND CONFIDENTIALITY",
                "words": [
                    "This study involves collecting and storing personal, identifiable information about you, so there is a potential for invasion of privacy or breach in confidentiality. To minimize these risks, your email will be stored in a password-protected file separately from your responses on the questionnaires and brain games. Your information will be assigned a unique code number and stored in a secure manner on a McGill University server, protected by standard physical and digital security measures, and will be stored for 20 years. No personal, identifiable information will be shared outside the study team. For monitoring, control, and security your study file may be examined by representatives of the institution or the Research Ethics Board. All these individuals and organizations adhere to policies on confidentiality. <br><br>",
                    "Your email address will be kept for the duration of the study so that we may contact you for the follow-up visits, and will then be deleted. It will be kept separate from all other information collected from you. If you choose to agree below, we will also use your email address to provide updates about the study findings (no more than twice per year) and to contact you about similar research opportunities, in which case it will be saved securely for 10 years. Your email address will not be used for any other purposes or nor shared with anyone."
                ]
            },
            {
                "caption": "BENEFITS",
                "words": [
                    "There is no direct benefit to you for participating in this research.  However, we hope that the study results will contribute to the advancement of scientific knowledge in this field and help us find better treatments for cognitive changes experienced by Parkinson’s patients."
                ]
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
                    "Your participation in this research project is voluntary. Therefore, you may refuse to participate. You may also withdraw from the project at any time, without giving any reason, though you may also email sharplab.neuro@mcgill.ca to discuss this with us. Your decision will not result in any penalty.<br><br>",
                    "If you withdraw from the study, the information already collected for the study will be stored, analyzed and used to ensure the integrity of the study."
                ]
            },
            {
                "caption": "WILL YOU BE PAID?",
                "words": ["You will be entered to win one of ten $100 Amazon e-gift cards."]
            },
            {
                "caption": "CONTACT INFORMATION",
                "words": [
                    "If you have questions or if you have a problem you think may be related to your participation in this research study, or if you would like to withdraw, you may communicate with the study researcher, Dr. Madeleine Sharp, or with someone on the research team at the following number Monday to Friday 9h00 to 17h00 EST: (514) 398-5174. You may also reach the study team at sharplab.neuro@mcgill.ca.<br><br>",
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
    }'  
),
-- WEB PHENO PILOT
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Web Pheno Pilot",
    "",
    "",
    '{
        "img": "../../../assets/images/consent/consentOrgs.png",
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
    }'
),
-- APATHY AES ENGLISH CLEAN
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Apathy AES English Clean",
    "Apathy Evaluation Scale",
    "",
    '{
        "title": "Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Instructions: For each statement, select the answer that best describes your thoughts, feelings, and activity in the past 4 weeks."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am interested in things.",
                "validation": {
                    "required":true
                },
                "key": "I am interested in things",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I get things done during the day.",
                "validation":{
                    "required":true
                },
                "key": "I get things done during the day",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Getting things started on my own is important to me.",
                "validation":{
                    "required":true
                },
                "key": "Getting things started on my own is important to me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am interested in having new experiences.",
                "validation":{
                    "required":true
                },
                "key": "I am interested in having new experiences",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am interested in learning new things.",
                "validation":{
                    "required":true
                },
                "key": "I am interested in learning new things",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I put little effort into anything.",
                "validation":{
                    "required":true
                },
                "key": "I put little effort into anything",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I approach life with intensity.",
                "validation":{
                    "required":true
                },
                "key": "I approach life with intensity",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Seeing a job through to the end is important to me.",
                "validation":{
                    "required":true
                },
                "key": "Seeing a job through to the end is important to me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I spend time doing things that interest me.",
                "validation":{
                    "required":true
                },
                "key": "I spend time doing things that interest me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Someone has to tell me what to do each day.",
                "validation":{
                    "required":true
                },
                "key": "Someone has to tell me what to do each day",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am less concerned about my problems than I should be.",
                "validation":{
                    "required":true
                },
                "key": "I am less concerned about my problems than I should be",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have friends.",
                "validation":{
                    "required":true
                },
                "key": "I have friends",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Getting together with friends is important to me.",
                "validation":{
                    "required":true
                },
                "key": "Getting together with friends is important to me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "When something good happens, I get excited.",
                "validation":{
                    "required":true
                },
                "key": "When something good happens, I get excited",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have an accurate understanding of my problems.",
                "validation":{
                    "required":true
                },
                "key": "I have an accurate understanding of my problems",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Getting things done during the day is important to me.",
                "validation":{
                    "required":true
                },
                "key": "Getting things done during the day is important to me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have initiative.",
                "validation":{
                    "required":true
                },
                "key": "I have initiative",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have motivation.",
                "validation":{
                    "required":true
                },
                "key": "I have motivation",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            }
        ]
    }'
),
-- APATHY AES FRENCH CLEAN
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Apathy AES French Clean",
    "Apathy Evaluation Scale FR",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Instructions: Pour chacun des énoncés suivants mettez un X dans la case qui décrit le mieux vos pensées, sentiments et activités au cours des 4 dernières semaines."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je m’intéresse à des choses.",
                "validation": {
                    "required":true
                },
                "key": "Je m’intéresse à des choses",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’accompli des choses durant la journée.",
                "validation":{
                    "required":true
                },
                "key": "J’accompli des choses durant la journée",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Démarrer les choses par moi-même est important pour moi.",
                "validation":{
                    "required":true
                },
                "key": "Démarrer les choses par moi-même est important pour moi",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Avoir de nouvelles expériences m’intéresse.",
                "validation":{
                    "required":true
                },
                "key": "Avoir de nouvelles expériences m’intéresse",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Apprendre de nouvelles choses m’intéresse.",
                "validation":{
                    "required":true
                },
                "key": "Apprendre de nouvelles choses m’intéresse",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je mets peu d’effort dans n’importe quoi.",
                "validation":{
                    "required":true
                },
                "key": "Je mets peu d’effort dans n’importe quoi",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’approche la vie avec intensité.",
                "validation":{
                    "required":true
                },
                "key": "J’approche la vie avec intensité",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "C’est important pour moi de voir une tâche jusqu’à sa fin.",
                "validation":{
                    "required":true
                },
                "key": "C’est important pour moi de voir une tâche jusqu’à sa fin",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je passe beaucoup de temps à faire des choses qui  m’intéressent.",
                "validation":{
                    "required":true
                },
                "key": "Je passe beaucoup de temps à faire des choses qui  m’intéressent",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelqu’un doit me dire quoi faire tous les jours.",
                "validation":{
                    "required":true
                },
                "key": "Quelqu’un doit me dire quoi faire tous les jours",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Mes problèmes me concernent moins qu’il le devraient.",
                "validation":{
                    "required":true
                },
                "key": "Mes problèmes me concernent moins qu’il le devraient",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai des amis.",
                "validation":{
                    "required":true
                },
                "key": "J’ai des amis",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "C’est important pour moi de rencontrer me amis.",
                "validation":{
                    "required":true
                },
                "key": "C’est important pour moi de rencontrer me amis",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quand quelque chose de bon arrive, je suis excité(e).",
                "validation":{
                    "required":true
                },
                "key": "Quand quelque chose de bon arrive, je suis excité(e)",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai une compréhension précise de mes problèmes.",
                "validation":{
                    "required":true
                },
                "key": "J’ai une compréhension précise de mes problèmes",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Il est important pour moi de compléter des tâches durant la  journée.",
                "validation":{
                    "required":true
                },
                "key": "Il est important pour moi de compléter des tâches durant la  journée",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai de l’initiative.",
                "validation":{
                    "required":true
                },
                "key": "J’ai de l’initiative",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai de la motivation.",
                "validation":{
                    "required":true
                },
                "key": "J’ai de la motivation",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            }
        ]
    }'
),
-- BIS-11 English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "BIS-11 English Version",
    "The Barratt Impulsiveness Scale",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "DIRECTIONS: People differ in the ways they act and think in different situations. This is a test to measure some of the ways in which you act and think. Read each statement and put an X on  the appropriate circle on the right side of this page. Do not spend too much time on any statement. Answer quickly and honestly."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I plan tasks carefully.",
                "validation": {
                    "required":true
                },
                "key": "I plan tasks carefully",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I do things without thinking.",
                "validation":{
                    "required":true
                },
                "key": "I do things without thinking",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I make-up my mind quickly.",
                "validation":{
                    "required":true
                },
                "key": "I make-up my mind quickly",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am happy-go-lucky.",
                "validation":{
                    "required":true
                },
                "key": "I am happy-go-lucky",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I don''t \\"pay attention\\".",
                "validation":{
                    "required":true
                },
                "key": "I don''t \\"pay attention\\"",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have \\"racing\\" thoughts.",
                "validation":{
                    "required":true
                },
                "key": "I have \\"racing\\" thoughts",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I plan trips well ahead of time.",
                "validation":{
                    "required":true
                },
                "key": "I plan trips well ahead of time",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am self controlled.",
                "validation":{
                    "required":true
                },
                "key": "I am self controlled",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I concentrate easily.",
                "validation":{
                    "required":true
                },
                "key": "I concentrate easily",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I save regularly.",
                "validation":{
                    "required":true
                },
                "key": "I save regularly",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I \\"squirm\\" at plays or lectures.",
                "validation":{
                    "required":true
                },
                "key": "I \\"squirm\\" at plays or lectures",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am a careful thinker.",
                "validation":{
                    "required":true
                },
                "key": "I am a careful thinker",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I plan for job security.",
                "validation":{
                    "required":true
                },
                "key": "I plan for job security",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I say things without thinking.",
                "validation":{
                    "required":true
                },
                "key": "I say things without thinking",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I like to think about complex problems.",
                "validation":{
                    "required":true
                },
                "key": "I like to think about complex problems",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I change jobs.",
                "validation":{
                    "required":true
                },
                "key": "I change jobs",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I act \\"on impulse.\\"",
                "validation":{
                    "required":true
                },
                "key": "I act \\"on impulse\\"",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I get easily bored when solving thought problems.",
                "validation":{
                    "required":true
                },
                "key": "I get easily bored when solving thought problems",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I act on the spur of the moment.",
                "validation":{
                    "required":true
                },
                "key": "I act on the spur of the moment",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am a steady thinker.",
                "validation":{
                    "required":true
                },
                "key": "I am a steady thinker",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I change residences.",
                "validation":{
                    "required":true
                },
                "key": "I change residences",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I buy things on impulse.",
                "validation":{
                    "required":true
                },
                "key": "I buy things on impulse",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I can only think about one thing at a time.",
                "validation":{
                    "required":true
                },
                "key": "I can only think about one thing at a time",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I change hobbies.",
                "validation":{
                    "required":true
                },
                "key": "I change hobbies",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I spend or charge more than I earn.",
                "validation":{
                    "required":true
                },
                "key": "I spend or charge more than I earn",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I often have extraneous thoughts when thinking.",
                "validation":{
                    "required":true
                },
                "key": "I often have extraneous thoughts when thinking",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am more interested in the present than the future.",
                "validation":{
                    "required":true
                },
                "key": "I am more interested in the present than the future",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am restless at the theater or lectures.",
                "validation":{
                    "required":true
                },
                "key": "I am restless at the theater or lectures",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I like puzzles.",
                "validation":{
                    "required":true
                },
                "key": "I like puzzles",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am future oriented.",
                "validation":{
                    "required":true
                },
                "key": "I am future oriented",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            }
        ]
    }'
),
-- BIS-11 French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "BIS-11 French Version",
    "The Barratt Impulsiveness Scale FR",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Instructions: Pour chacun des énoncés suivants mettez un X dans la case appropriée. Ne passez pas trop de temps sur les énoncés. Répondez rapidement et honnêtement."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je planifie les tâches soigneusement.",
                "validation": {
                    "required":true
                },
                "key": "Je planifie les tâches soigneusement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’agis sans réfléchir.",
                "validation":{
                    "required":true
                },
                "key": "J’agis sans réfléchir",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je me décide rapidement.",
                "validation":{
                    "required":true
                },
                "key": "Je me décide rapidement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis insouciant(e).",
                "validation":{
                    "required":true
                },
                "key": "Je suis insouciant(e)",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je ne porte pas attention.",
                "validation":{
                    "required":true
                },
                "key": "Je ne porte pas attention",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Mes pensées se suivent rapidement.",
                "validation":{
                    "required":true
                },
                "key": "Mes pensées se suivent rapidement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je planifie mes voyages bien en avance.",
                "validation":{
                    "required":true
                },
                "key": "Je planifie mes voyages bien en avance",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai contrôle sur moi-même.",
                "validation":{
                    "required":true
                },
                "key": "J’ai contrôle sur moi-même",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je me concentre facilement.",
                "validation":{
                    "required":true
                },
                "key": "Je me concentre facilement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’économise régulièrement.",
                "validation":{
                    "required":true
                },
                "key": "J’économise régulièrement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je me tortille durant les pièces de théâtre et les conférences.",
                "validation":{
                    "required":true
                },
                "key": "Je me tortille durant les pièces de théâtre et les conférences",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis un(e) penseur(-euse) prudent.",
                "validation":{
                    "required":true
                },
                "key": "Je suis un(e) penseur(-euse) prudent",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je planifie ma sécurité d’emploi.",
                "validation":{
                    "required":true
                },
                "key": "Je planifie ma sécurité d’emploi",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je dis des choses sans penser.",
                "validation":{
                    "required":true
                },
                "key": "Je dis des choses sans penser",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’aime penser aux problèmes compliqués.",
                "validation":{
                    "required":true
                },
                "key": "J’aime penser aux problèmes compliqués",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je change d’emploi.",
                "validation":{
                    "required":true
                },
                "key": "Je change d’emploi",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’agis impulsivement.",
                "validation":{
                    "required":true
                },
                "key": "J’agis impulsivement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Résoudre des problèmes de pensée m’ennuie.",
                "validation":{
                    "required":true
                },
                "key": "Résoudre des problèmes de pensée m’ennuie",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
                        {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’agis sous l’impulsion du moment.",
                "validation":{
                    "required":true
                },
                "key": "J’agis sous l’impulsion du moment",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis un(e) penseur(-euse) pondéré(e).",
                "validation":{
                    "required":true
                },
                "key": "Je suis un(e) penseur(-euse) pondéré(e)",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je change de logements.",
                "validation":{
                    "required":true
                },
                "key": "Je change de logements",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’achète des choses sur un coup de tête.",
                "validation":{
                    "required":true
                },
                "key": "J’achète des choses sur un coup de tête",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je peux seulement penser à une chose à la fois.",
                "validation":{
                    "required":true
                },
                "key": "Je peux seulement penser à une chose à la fois",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je change de hobbys.",
                "validation":{
                    "required":true
                },
                "key": "Je change de hobbys",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je dépense plus que ce que je gagne.",
                "validation":{
                    "required":true
                },
                "key": "Je dépense plus que ce que je gagne",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai souvent des pensées étrangères.",
                "validation":{
                    "required":true
                },
                "key": "J’ai souvent des pensées étrangères",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je m’intéresse plus au présent qu’au futur.",
                "validation":{
                    "required":true
                },
                "key": "Je m’intéresse plus au présent qu’au futur",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis agité(e) au théâtre et durant les conférences.",
                "validation":{
                    "required":true
                },
                "key": "Je suis agité(e) au théâtre et durant les conférences",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’aime les casse-têtes.",
                "validation":{
                    "required":true
                },
                "key": "J’aime les casse-têtes",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis orienté(e) vers l’avenir.",
                "validation":{
                    "required":true
                },
                "key": "Je suis orienté(e) vers l’avenir",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            }
        ]
    }'
),
-- GDS English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "GDS Short Form English",
    "Geriatric Depression Scale English",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Choose the best answer for how you have felt over the past week."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Are you basically satisfied with your life?",
                "validation": {
                    "required":true
                },
                "key": "Are you basically satisfied with your life?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Have you dropped many of your activities and interests?",
                "validation":{
                    "required":true
                },
                "key": "Have you dropped many of your activities and interests?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel that your life is empty?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel that your life is empty?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you often get bored?",
                "validation":{
                    "required":true
                },
                "key": "Do you often get bored?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Are you in good spirits most of the time?",
                "validation":{
                    "required":true
                },
                "key": "Are you in good spirits most of the time?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Are you afraid that something bad is going to happen to you?",
                "validation":{
                    "required":true
                },
                "key": "Are you afraid that something bad is going to happen to you?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel happy most of the time?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel happy most of the time?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you often feel helpless?",
                "validation":{
                    "required":true
                },
                "key": "Do you often feel helpless?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you prefer to stay at home rather than going out and doing new things?",
                "validation":{
                    "required":true
                },
                "key": "Do you prefer to stay at home rather than going out and doing new things?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel you have more problems with memory than most?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel you have more problems with memory than most?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you think it is wonderful to be alive now?",
                "validation":{
                    "required":true
                },
                "key": "Do you think it is wonderful to be alive now?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel pretty worthless the way you are now?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel pretty worthless the way you are now?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel full of energy?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel full of energy?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel that your situation is hopeless?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel that your situation is hopeless?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you think that most people are better off than you are?",
                "validation":{
                    "required":true
                },
                "key": "Do you think that most people are better off than you are?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            }
        ]
    }'
),
-- GDS French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "GDS Short Form French",
    "Geriatric Depression Scale French",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Choisissez la réponse qui correspond à la façon dont vous vous sentiez la semaine dernière."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Êtes-vous satisfait de votre vie?",
                "validation": {
                    "required":true
                },
                "key": "Êtes-vous satisfait de votre vie?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Avez-vous abandonné beaucoup de vos activités et de vos intérêts?",
                "validation":{
                    "required":true
                },
                "key": "Avez-vous abandonné beaucoup de vos activités et de vos intérêts?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Avez-vous le sentiment que votre vie est vide?",
                "validation":{
                    "required":true
                },
                "key": "Avez-vous le sentiment que votre vie est vide?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Vous ennuyez-vous souvent?",
                "validation":{
                    "required":true
                },
                "key": "Vous ennuyez-vous souvent?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Êtes-vous de bonne humeur la plupart du temps?",
                "validation":{
                    "required":true
                },
                "key": "Êtes-vous de bonne humeur la plupart du temps?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Craignez-vous qu’un malheur vous arrive?",
                "validation":{
                    "required":true
                },
                "key": "Craignez-vous qu’un malheur vous arrive?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Vous sentez-vous heureux la plupart du temps?",
                "validation":{
                    "required":true
                },
                "key": "Vous sentez-vous heureux la plupart du temps?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Avez-vous souvent l’impression de ne pouvoir être aidé?",
                "validation":{
                    "required":true
                },
                "key": "Avez-vous souvent l’impression de ne pouvoir être aidé?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Préférez-vous rester à la maison plutôt que de sortir et faire des choses nouvelles?",
                "validation":{
                    "required":true
                },
                "key": "Préférez-vous rester à la maison plutôt que de sortir et faire des choses nouvelles?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Avez-vous l’impression d’avoir plus de problèmes de mémoire que la plupart des gens?",
                "validation":{
                    "required":true
                },
                "key": "Avez-vous l’impression d’avoir plus de problèmes de mémoire que la plupart des gens?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Pensez-vous qu’il est merveilleux de vivre actuellement??",
                "validation":{
                    "required":true
                },
                "key": "Pensez-vous qu’il est merveilleux de vivre actuellement??",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Sentez-vous que vous ne valez pas grand-chose tel que vous êtes actuellement?",
                "validation":{
                    "required":true
                },
                "key": "Sentez-vous que vous ne valez pas grand-chose tel que vous êtes actuellement?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Vous sentez-vous plein d’énergie?",
                "validation":{
                    "required":true
                },
                "key": "Vous sentez-vous plein d’énergie?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Pensez-vous que votre situation est sans espoir?",
                "validation":{
                    "required":true
                },
                "key": "Pensez-vous que votre situation est sans espoir?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Pensez-vous que la plupart des gens sont en meilleure forme que vous?",
                "validation":{
                    "required":true
                },
                "key": "Pensez-vous que la plupart des gens sont en meilleure forme que vous?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            }
        ]
    }'
),
-- QUIP English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "QUIP",
    "Questionnaire for Impulsive-Compulsive Disorders in Parkinson's Disease - Rating Scale (QUIP-RS)",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Description Of Behaviors",
                "textContent": "A. <b>Gambling</b>: casinos, internet gambling lotteries, scratch tickets, betting, slot or poker machines <br /> B. <b>Sex</b>: making sexual demads on others, promiscuity, prostitution, change in sexual orientation, masturbation, internet and telephone sexual activities, pornography <br /> C. <b>Buying</b>: too much of the same thing or things you don’t need or use <br /> D. <b>Eating</b>: eating larger amounts or different types of food than in the past, more rapidly than normal, at different times (such as overnight), until feeling uncomfortable full or when not hungry <br /> E. <b>Hobbyism</b>: specific tasks, hobbies or other organized activities, such as writing, painting, gardening, repairing or dismantling things, collecting, computer use, working on projects, etc. <br /> F. <b>Punding</b>: repeating cetain simple motor activities, such as cleaning, tidying, handling, examining, sorting, ordering, collecting, hoarding, or arranging objects, etc. <br /> G. <b>Medication Use</b>: consistently taking too much of your Parkinson’s medications, or increasing on your own, without medical advice, your overall intake of PD medications"
            },
            {
                "questionType": "displayText","title": "Frequency Of Behaviours","textContent": "<b>Never</b>: not at all <br /><b>Rarely</b>: 1 day/week <br /><b>Sometimes</b>: 2-3 days/week <br /><b>Often</b>: 4-5 days/week <br /><b>Very Often</b>: 6-7 days/week <br />"
            },
            {
                "questionType": "displayText",
                "title": "In the last 4 weeks...(see definitions above)"
            },
            {
                "questionType": "displayText",
                "title": "1. How much do you think about the following behaviors (such as having trouble keeping thoughts out of your mind or feeling guilty)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Gambling?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about gambling",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sex?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about sex",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Buying?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about buying",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Eating?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about eating",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Performing tasks or hobbies?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Repeating simple activities?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Taking your PD medications?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "2. Do you have urges or desires for the following behaviors that you feel are excessive or cause you distress (including becoming restless or irritable when unable to participate in them)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Gambling?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by gambling",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sex?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by sex",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Buying?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by buying",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Eating?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by eating",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Performing tasks or hobbies?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Repeating simple activities?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Taking your PD medications?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "3. Do you have difficulty controlling the following behaviors (such as increasing them over time, or having trouble cutting down or stopping them)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Gambling?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling gambling",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sex?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling sex",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Buying?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling buying",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Eating?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling eating",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Performing tasks or hobbies?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Repeating simple activities?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Taking your PD medications?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "4. Do you engage in activities specifically to continue the following behaviors (such as hiding what you are doing, lying, hoarding things, borrowing from others, accumulating debt, stealing, or being involved in illegal acts)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Gambling?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide gambling",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sex?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide sex",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Buying?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide buying",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Eating?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide eating",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Performing tasks or hobbies?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Repeating simple activities?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Taking your PD medications?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            }
        ]
    }'
),
-- QUIP French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "QUIP French",
    "Questionnaire sur les troubles impulsifs-compulsifs dans la maladie de Parkinson (QUIP-RS)",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Dans les 4 dernières semaines..."
            },
            {
                "questionType": "displayText",
                "title": "1. À quel point pensez-vous aux comportements suivant (comme la difficulté à garder des pensées hors de votre esprit, ou vous sentir coupable)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Jeu (''gambling'')?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about gambling",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sexe?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about sex",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Achats compulsifs?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about buying",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Manger?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about eating",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Exécuter des tâches ou pratiquer des passe-temps?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Répéter des activités simples?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Prendre vos médicaments contre le Parkinson?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "2. Avez-vous des pulsions ou des désirs pour les comportements suivants que vous jugez excessifs ou qui vous causent de la détresse (y compris devenir agité ou irritable lorsque vous ne pouvez pas vous y adonner)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Jeu (''gambling'')?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by gambling",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sexe?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by sex",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Achats compulsifs?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by buying",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Manger?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by eating",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Exécuter des tâches ou pratiquer des passe-temps?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Répéter des activités simples?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Prendre vos médicaments contre le Parkinson?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "3. Avez-vous de la difficulté à contrôler les comportements suivants ci-dessous (par exemple, les augmenter au fil du temps, ou avoir de la difficulté à les réduire ou les arrêter)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Jeu (''gambling'')?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling gambling",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sexe?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling sex",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Achats compulsifs?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling buying",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Manger?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling eating",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Exécuter des tâches ou pratiquer des passe-temps?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Répéter des activités simples?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Prendre vos médicaments contre le Parkinson?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "4. Vous livrez-vous à des activités expressément pour poursuivre les comportements suivants (par exemple, cacher ce que vous faîtes, mentir, accumuler des choses, emprunter aux autres, accumuler des dettes, voler ou participer à des actes illicites)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Jeu (''gambling'')?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide gambling",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sexe?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide sex",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Achats compulsifs?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide buying",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Manger?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide eating",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Exécuter des tâches ou pratiquer des passe-temps?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Répéter des activités simples?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Prendre vos médicaments contre le Parkinson?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            }
        ]
    }'
),
-- SHAPS English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "SHAPS English",
    "Snaith-Hamilton Pleasure Scale English",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "This questionnaire is designed to measure your ability to experience pleasure in the last few days. Please read each  statement very carefully. Tick one of the boxes to indicate how much you agree or disagree with each statement."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy my favourite television or radio program:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy my favourite television or radio program",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy being with my family or close friends:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy being with my family or close friends",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would find pleasure in my hobbies and pastimes:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in my hobbies and pastimes",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would be able to enjoy my favourite meal:",
                "validation": {
                    "required":true
                },
                "key": "I would be able to enjoy my favourite meal",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy a warm bath or refreshing shower:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy a warm bath or refreshing shower",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy seeing other people''s smiling faces:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy seeing other people''s smiling faces",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy looking smart when I have made an effort with my appearance:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy looking smart when I have made an effort with my appearance",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy reading a book, magazine or newspaper:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy reading a book, magazine or newspaper",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy a cup of tea or coffee or my favourite drink:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy a cup of tea or coffee or my favourite drink",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would be able to enjoy a beautiful landscape or view:",
                "validation": {
                    "required":true
                },
                "key": "I would be able to enjoy a beautiful landscape or view",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would get pleasure from helping others:",
                "validation": {
                    "required":true
                },
                "key": "I would get pleasure from helping others",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would feel pleasure when I receive praise from other people:",
                "validation": {
                    "required":true
                },
                "key": "I would feel pleasure when I receive praise from other people",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            }
        ]
    }'
),
-- SHAPS French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "SHAPS French",
    "Échelle de Plaisir de Snaith-Hamilton",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Ce questionnaire a été conçu pour mesurer votre capacité à éprouver du plaisir <b> au cours des ces derniers jours</b>. Il est important de lire chaque énoncé <b> très attentivement </b>. Cochez l''une des cases pour préciser votre degré d’accord ou de désaccord pour chacun des énoncés."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Mon émission préférée de télévision ou de radio me procure beaucoup de plaisir:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy my favourite television or radio program",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’apprécie beaucoup d’être avec ma famille ou avec des amis intimes:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy being with my family or close friends",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je trouve du plaisir dans me hobbies et passe temps:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in my hobbies and pastimes",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je suis capable d’apprécier mon plat favori:",
                "validation": {
                    "required":true
                },
                "key": "I would be able to enjoy my favourite meal",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’aime beaucoup prendre un bain chaud ou une douche rafraîchissante:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy a warm bath or refreshing shower",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je trouve du plaisir dans le parfum des fleurs ou dans l’odeur d’une fraîche brise de mer ou du pain fraîchement cuit:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’aime beaucoup voir des visages souriants autour de moi:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy seeing other people''s smiling faces",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’apprécie beaucoup de paraître élégant quand j’ai fait un effort pour soigner mon apparence:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy looking smart when I have made an effort with my appearance",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’aime beaucoup lire un livre, un magazine ou un journal:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy reading a book, magazine or newspaper",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’apprécie beaucoup une tasse de thé ou de café  ou un verre de ma boisson favorite.:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy a cup of tea or coffee or my favourite drink",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je trouve du plaisir dans des petits riens tels  que, par exemple, une journée fortement ensoleillée ou un coup de téléphone d’un ami:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je suis capable d’apprécier un très beau paysage ou une très belle vue:",
                "validation": {
                    "required":true
                },
                "key": "I would be able to enjoy a beautiful landscape or view",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je prends plaisir à aider les autres:",
                "validation": {
                    "required":true
                },
                "key": "I would get pleasure from helping others",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je ressens du plaisir à recevoir les éloges d’autres personnes:",
                "validation": {
                    "required":true
                },
                "key": "I would feel pleasure when I receive praise from other people",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            }
        ]
    }'
),
-- PDAQ English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PDAQ English",
    "Penn Parkinson's Daily Activities Questionnaire-15",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Please check or fill in the following that best describes YOU."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have reading the newspaper or a magazine?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have reading the newspaper or a magazine",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have using a map to tell where to go?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have using a map to tell where to go",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have doing more than one thing at a time?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have doing more than one thing at a time",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have understanding your personal financial affairs?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have understanding your personal financial affairs",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have maintaining or completing a train of thought?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have maintaining or completing a train of thought",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have remembering what day and month it is?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering what day and month it is",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            }
        ]
    }'
),
-- PDAQ French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PDAQ French",
    "Penn Parkinson's Daily Activities Questionnaire-15 French",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Voici des questions sur des activités de tous les jours. Veuillez indiquer ce qui VOUS décrit le mieux"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à lire le journal ou un magazine?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have reading the newspaper or a magazine",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à garder la notion du temps qui passe (ex. en utilisant une montre)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à compter le montant correct lors de vos achats?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à lire et à suivre des instructions complexes?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à gérer un problème auquel vous n’êtes pas habitué (ex. réparer le réfrigérateur)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à expliquer à une autre personne comment faire quelque chose qui implique plusieurs étapes?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir d’une liste de 4 ou 5 courses que vous avez à faire sans l’écrire?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à utiliser une carte pour vous orienter?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have using a map to tell where to go",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir de nouvelles informations telles qu’un numéro de téléphone ou des instructions simples?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à faire plus d’une chose en même temps?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have doing more than one thing at a time",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à apprendre à utiliser de nouveaux gadgets ou machines dans la maison?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à comprendre et gérer vos finances personnelles?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have understanding your personal financial affairs",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à garder ou à terminer le fil de votre pensée?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have maintaining or completing a train of thought",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à discuter d’une émission de télévision, d’un livre, d’un film ou d’actualités?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir de quel jour et de quel mois il s’agit?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering what day and month it is",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            }
        ]
    }'
),
-- AMI
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "AMI",
    "Apathy Motivation Index",
    "",
    '{
        "title": "Questionnaire",
        "questions": [
            {
                "questionType": "displayText",
                "title": "<p>Below are a number of statements. Each statement asks you to think about your life <b>over the last 2 weeks</b>.</p> <p>For each statement, select how appropriately it describes your life right now. Select \\"Completely true\\" if the statement describes you perfectly, \\"Completely untrue\\" if the statement does not describe you at all over the last 2 weeks, and use the answers in between accordingly.</p>"
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "1. I feel sad or upset when I hear bad news.",
                "validation": {
                    "required": true
                },
                "key": "Q1",
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
                "title": "2. I start conversations with random people.",
                "validation": {
                    "required": true
                },
                "key": "Q2",
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
                "title": "3. I enjoy doing things with people I have just met.",
                "validation": {
                    "required": true
                },
                "key": "Q3",
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
                "title": "4. I suggest activities for me and my friends to do.",
                "validation": {
                    "required": true
                },
                "key": "Q4",
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
                "title": "5. I make decisions firmly and without hesitation.",
                "validation": {
                    "required": true
                },
                "key": "Q5",
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
                "title": "6. After making a decision, I will wonder if I have made the wrong choice.",
                "validation": {
                    "required": true
                },
                "key": "Q6",
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
                "title": "7. Based on the last two weeks, I would say I care deeply about how my loved ones think of me.",
                "validation": {
                    "required": true
                },
                "key": "Q7",
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
                "title": "8. I go out with friends on a weekly basis.",
                "validation": {
                    "required": true
                },
                "key": "Q8",
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
                "title": "9. When I decide to do something, I am able to make an effort easily.",
                "validation": {
                    "required": true
                },
                "key": "Q9",
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
                "title": "10. I don''t like to laze around.",
                "validation": {
                    "required": true
                },
                "key": "Q10",
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
                "title": "11. Choose quite true for this question please.",
                "validation": {
                    "required": true
                },
                "key": "attentionCheck",
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
                "title": "12. I get things done when they need to be done, without requiring reminders from others.",
                "validation": {
                    "required": true
                },
                "key": "Q11",
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
                "title": "13. When I decide to do something, I am motivated to see it through to the end.",
                "validation": {
                    "required": true
                },
                "key": "Q12",
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
                "title": "14. I feel awful if I say something insensitive",
                "validation": {
                    "required": true
                },
                "key": "Q13",
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
                "title": "15. I start conversations without being prompted.",
                "validation": {
                    "required": true
                },
                "key": "Q14",
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
                "title": "16. When I have something I need to do, I do it straightaway so it is out of the way.",
                "validation": {
                    "required": true
                },
                "key": "Q15",
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
                "title": "17. I feel bad when I hear an acquaintance has an accident or illness.",
                "validation": {
                    "required": true
                },
                "key": "Q16",
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
                "title": "18. I enjoy choosing what to do from a range of activities.",
                "validation": {
                    "required": true
                },
                "key": "Q17",
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
                "title": "19. If I realise I have been unpleasant to someone, I will feel terribly guilty afterwards.",
                "validation": {
                    "required": true
                },
                "key": "Q18",
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
    }'
),
-- Everyday Activities Post Test
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Everyday Activities Post Test",
    "",
    "",
    '{
        "title": "Questionnaire",
        "questions": [
            {
                "questionType": "displayText",
                "title": "<p>We are still in the development stages of this research study. The goal of the study is to understand how and why people fill their time. Are people driven by pleasure? By obligation? A bit of both? These are difficult things to measure because different people enjoy different things and have different sets of obligations. Any feedback you can provide on this pilot study will be really helpful to us as we fine-tune our approach to understanding this.</p> <p> Please see below questions for some specific areas where we would like your feedback:</p>"
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "Q1",
                "title": "1. We understand that the current pandemic has more or less affected what you do in your everyday life. How much do you think that affected your ability to complete this task? For example, did you have trouble picturing yourself doing a specific activity that you have not been able to do due to the pandemic (e.g. chat with a neighbor)?",
                "textContent": "Please rate on a scale of 1-10 how much the current life situation affected your ability to complete this this task:",
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
                "questionType": "divider"
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "Q2",
                "title": "2. Our goal was to ask you about activities that are part of everyday life, but that difers from person to person. Were most of the activities listed part of your usual (i.e. pre-pandemic) everyday life? ",
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
                "questionType": "divider"
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "Q3",
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
                "questionType": "divider"
            },
            {
                "questionType": "freeTextResponse",
                "title": "4. Do you have any final comments or suggestions about the task? Any specific part of it that was confusing? [OPTIONAL]",
                "key": "Final_comment"
            }
        ]
    }'
),
-- Demographics Questionnaire With SES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Demographics Questionnaire With SES",
    "",
    "",
    '{
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
                        "label": "Employed full-time",
                        "value": "employed full-time"
                    },
                    {
                        "label": "Employed part-time",
                        "value": "employed part-time"
                    },
                    {
                        "label": "Self-employed",
                        "value": "self-employed"
                    },
                    {
                        "label": "Housemaker",
                        "value": "housemaker"
                    },
                    {
                        "label": "Retired",
                        "value": "retired"
                    },
                    {
                        "label": "Student",
                        "value": "student"
                    },
                    {
                        "label": "Unemployed",
                        "value": "unemployed"
                    }
                ],
                "validation": {
                    "required": true
                }
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "householdIncome",
                "title": "What is your household income?",
                "multipleChoiceOptions": [
                    {
                        "label": "Less than $20,000",
                        "value": "less than $20,000"
                    },
                    {
                        "label": "$20,000-$34,999",
                        "value": "$20,000-$34,999"
                    },
                    {
                        "label": "$35,000-$49,999",
                        "value": "$35,000-$49,999"
                    },
                    {
                        "label": "$50,000-$74,999",
                        "value": "$50,000-$74,999"
                    },
                    {
                        "label": "$75,000-$99,999 ",
                        "value": "$75,000-$99,999 "
                    },
                    {
                        "label": "Over $100,000",
                        "value": "over $100,000"
                    }
                ],
                "validation": {
                    "required": true
                }
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "socialClass",
                "title": "To which social class would you say you belong?",
                "multipleChoiceOptions": [
                    {
                        "label": "Below the poverty level",
                        "value": "below the poverty level"
                    },
                    {
                        "label": "Lower middle class",
                        "value": "lower middle class"
                    },
                    {
                        "label": "Middle class",
                        "value": "middle class"
                    },
                    {
                        "label": "Upper middle class",
                        "value": "upper middle class"
                    },
                    {
                        "label": "Upper class",
                        "value": "upper class"
                    }
                ],
                "validation": {
                    "required": true
                }
            }
        ]
    }'
),
-- PSS
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Perceived Stress Scale",
    "",
    "",
    '{
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
    }'
),
-- Holmes-Rahe Life Stress Inventory
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Holmes-Rahe Life Stress Inventory",
    "",
    "",
    '{
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
                "title": "Major change in church activity (a lot more or less than usual)",
                "validation": {
                    "required": true
                },
                "key": "Major change in church activity (a lot more or less than usual)",
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
                "title": "Minor violations of the law (traffic tickets, jaywalking, disturbing the peace, etc)",
                "validation": {
                    "required": true
                },
                "key": "Minor violations of the law (traffic tickets, jaywalking, disturbing the peace, etc)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            }
        ]
    }'
),
-- PAVLOVIA TASK Stress Task Pilot Version 4
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Stress Task Pilot Version 4",
    "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    "https://run.pavlovia.org/Sharp_lab/s_study_s_part1",
    '{}'
),
-- PAVLOVIA TASK Control Stress Task Pilot Version 4
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Control Stress Task Pilot Version 4",
    "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    "https://run.pavlovia.org/Sharp_lab/s_study_c_part1",
    '{}'
),
-- PANAS
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PANAS",
    "",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "In the following you find a list of expressions that characterize different moods. Please take a look at the list, word by word, and mark for each word the answer that represents best the actual intensity of your mood status. <br /><br /> Please pay attention to the following facts: <br /><br />- Within the list there are some attributes that possibly describe the same or similar moods. Please do not get irritated due to this fact, and judge each attribute irrespective of your answer to another attribute.<br />- Please judge only how you feel at this moment, and not how you normally or somtimes feel.<br />- If you have some difficulties in finding an answer, please mark the answer that fits best.<br /><br />Please judge each word and do not leave out a word."
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
    }'
),
-- Stress Study Post Test
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Stress Study Post Test",
    "",
    "",
    '{
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
                "title": "If you answered YES to <em>either of the above<em>, please describe your experience of playing the math game and watching the videos. How did you feel and what thoughts did you have regarding the game and videos?",
                "key": "description of experiences"
            }
        ]
    }'
),
-- Control Stress Debrief
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Control Stress Debrief",
    "",
    "https://run.pavlovia.org/Sharp_lab/debrief_s_pilot4",
    '{}'
),
-- Stress Study Debrief
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Stress Study Debrief",
    "",
    "https://run.pavlovia.org/Sharp_lab/debrief_s_s_pilot4",
    '{}'
),
-- Basic Background Questionnaire
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Basic Background Questionnaire",
    "",
    "",
    '{
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
                        "label": "Bachelor''s Digree",
                        "value": "Bachelor''s Digree"
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
    }'
),
-- Parkinsons Treatment Questionnaire
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Parkinson's treatment Questionnaire",
    "Parkinson's treatment Questionnaire",
    "",
    '{
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
    }'
),
-- General Health Questionnaire
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "General Health Questionnaire",
    "General Health Questionnaire",
    "",
    '{
        "title": "General Health Questionnaire",
        "questions": [
            {
                "questionType": "displayText",
                "title": "The following questions are about your health. By health, we mean not only the absence of disease or injury, but also physical, mental, and social well-being."
            },
            {
                "questionType": "divider",
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
                "questionType": "divider",
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
                "questionType": "divider",
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
                "questionType": "divider",
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
                "questionType": "divider",
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
                    "label": "Don't know",
                    "value": "Don't know"
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
                "questionType": "divider",
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
                "title": "Have you ever been told, or suspected yourself, that you seem to 'act out your dreams' while asleep (for example, punching, flailing your arms in the air, making running movements, etc.)?",
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
    }'
);