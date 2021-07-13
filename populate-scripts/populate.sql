-- DELETE FROM tasks;
-- DROP TABLE participant_data, email_notifications, crowdsourced_users, study_tasks, study_users, tasks, feedback_questionnaire_responses, studies;

-- source /Users/nicholaslee/Work/go/src/github.com/cognitive-neuroscience/neuron/populate-scripts/populate.sql
-- source /sbin/sharplab/populate-scripts/populate.sql

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
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will <br> 1) answer the questions on the questionnaire, and click CONTINUE to the next questionnaire <br> 2) repeat until you finish the last questionnaire, and click SUBMIT YOUR ANSWERS <br> 3) clicking NEXT to obtain your completion code."
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
    "Demographics Questionnaire","Demographics questionnaire without SES questions",
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
);
