-- This file is for populating the nicktest study. It populates the tasks with fewer requirements in the configs so that
-- we can test the overall flow.

-- TASKS
-- NUMBERS GAME (digit span)
UPDATE study_tasks SET config = 
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
                "maxResponseTime": 10000,
                "interTrialDelay": 0,
                "showFeedbackAfterEachTrial": true,
                "durationDigitPresented": 1000,
                "durationPauseBetweenDigits": 300,
                "durationOfFeedback": 1000,
                "delayToShowHelpMessage": 5000,
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
                "maxResponseTime": 10000,
                "interTrialDelay": 0,
                "showFeedbackAfterEachTrial": false,
                "durationDigitPresented": 1000,
                "durationPauseBetweenDigits": 300,
                "durationOfFeedback": 1000,
                "delayToShowHelpMessage": 5000,
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
                "maxResponseTime": 10000,
                "interTrialDelay": 0,
                "showFeedbackAfterEachTrial": true,
                "durationDigitPresented": 1000,
                "durationPauseBetweenDigits": 300,
                "durationOfFeedback": 1000,
                "delayToShowHelpMessage": 5000,
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
                "maxResponseTime": 10000,
                "interTrialDelay": 0,
                "showFeedbackAfterEachTrial": false,
                "durationDigitPresented": 1000,
                "durationPauseBetweenDigits": 300,
                "durationOfFeedback": 1000,
                "delayToShowHelpMessage": 5000,
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
WHERE
study_id = 1 AND 
task_id = 1 AND
task_order = 2;

-- FINGER TAPPING
UPDATE study_tasks SET config = 
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
                "maxResponseTime": 10000,
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
                    "skipAvailableAfterXSeconds": 5,
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
                "maxResponseTime": 10000,
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
                "maxResponseTime": 10000,
                "durationFixationPresented": 50,
                "useHand": "BOTH"
            }
        }
    ]
}'
WHERE 
study_id = 1 AND 
task_id = 2 AND
task_order = 3;

-- NBACK
UPDATE study_tasks SET config = 
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
                "numTrials": 5,
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
                "numTrials": 10,
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
WHERE 
study_id = 1 AND 
task_id = 3 AND
task_order = 4;

-- STROOP
UPDATE study_tasks SET config = 
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
                    "numCongruent": 8,
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
                    "numTrials": 60,
                    "numCongruent": 40,
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
                            "cacheKey": "stroop-total-score",
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
WHERE 
study_id = 1 AND 
task_id = 4 AND
task_order = 5;

-- TRAIL MAKING (connect the dots)
UPDATE study_tasks SET config = 
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
WHERE 
study_id = 1 AND 
task_id = 5 AND
task_order = 6;

-- TASK SWITCHING
UPDATE study_tasks SET config = 
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
WHERE 
study_id = 1 AND 
task_id = 6 AND
task_order = 7;

-- DEMAND SELECTION
UPDATE study_tasks SET config = 
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
                "numTrials": 5,
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
                        "textContent": "You got ??? out of 5 correct"
                    },
                    {
                        "sectionType": "text",
                        "textContent": "Let''s practice again."
                    },
                    {
                        "sectionType": "text",
                        "textContent": "Click \\"NEXT\\" when you are ready for the next stage"
                    }
                ]
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
                "numTrials": 5,
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
                        "textContent": "You got ??? out of 5 correct"
                    }
                ]
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
                "numTrials": 5,
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
                "numTrials": 5,
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
                "numTrials": 5,
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
                "numTrials": 5,
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
                "numTrials": 3,
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
                "numTrials": 3,
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
WHERE
study_id = 1 AND
task_id = 7 AND
task_order = 8;

-- SMILEY FACE
UPDATE study_tasks SET config =
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
                "facesMoreRewardedPercentage": 5,
                "numLongFaces": 5,
                "facesLessRewardedPercentage": 5,
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
                "numShortFaces": 5,
                "numFacesMoreRewarded": 100,
                "numLongFaces": 5,
                "numFacesLessRewarded": 100,
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
                "numShortFaces": 5,
                "numFacesMoreRewarded": 100,
                "numLongFaces": 5,
                "numFacesLessRewarded": 100,
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
WHERE
study_id = 1 AND
task_id = 8 AND
task_order = 9;

-- ODDBALL
UPDATE study_tasks SET config = 
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
                "numTrials": 5,
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
                "numTrials": 5,
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
                "numTrials": 10,
                "numTargetTrials": 5,
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
                "numTrials": 10,
                "numTargetTrials": 5,
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
                "numTrials": 18,
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
                "numTrials": 18,
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
WHERE
study_id = 1 AND
task_id = 9 AND
task_order = 10;

-- EVERYDAY CHOICE
UPDATE study_tasks SET config = 
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
                "maxResponseTime": 10000,
                "interTrialDelay": 100,
                "interActivityDelay": 1000,
                "delayToShowHelpMessage": 5000,
                "durationHelpMessageShown": 5000,
                "durationOutOftimeMessageShown": 2000,
                "delayToShowRatingSlider": 0,
                "numDoSomethingActivities": 2,
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
                "numDoSomethingActivities": 2,
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
WHERE
study_id = 1 AND
task_id = 10 AND
task_order = 11;