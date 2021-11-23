-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "SART",
    "Sustained Attention to Response Task",
    "",
    '{
        "config": {
            "counterBalanceGroups": {
                "1": "ascending",
                "2": "random"
            }
        },
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the Spot The Number Game!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will see numbers flash on the screen very quickly, followed by an X."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Your job is to press the LEFT arrow ( ⬅️ ) for every number <b>EXCEPT</b> for the <b>number 3</b>."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "When you see the <b>number 3</b> you must <b>NOT</b> press any key at all, simply wait for the next number."
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imageAlignment": "left",
                            "imagePath": "/assets/images/instructions/SART/visual_instructions.png"
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
                    "title": "Let''s practice!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Remember, press the ( ⬅️ ) for all numbers except for 3"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "When you see 3, don''t press anything and wait for the next number to appear."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The numbers will appear very quickly, so be ready!"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click START to begin the practice"
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
                "component": "SARTCOMPONENT",
                "config": {
                    "isPractice": true,
                    "maxResponseTime": 900,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
                    "durationStimulusPresented": 250,
                    "trialSize": 18,
                    "nogoTrialNum": 2,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Well done!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Now you are ready for the real game"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Remember, press the ( ⬅️ ) key for all numbers except for 3"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "When you see 3, don''t press anything and wait for the next number to appear"
                        },
                        {
                            "sectionType": "",
                            "textContent": "Click START to begin"
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
                "component": "SARTCOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 900,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "It''s break time",
                    "timerConfig": {
                        "timer": 35000,
                        "showTimer": true,
                        "canSkipTimer": true,
                        "skipAvailableAfterXSeconds": 20
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have to wait for at least 20 seconds before being able to continue"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "The next round will automatically start in 35 seconds unless you choose to continue sooner"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Click START when you are ready"
                        }
                    ]
                }
            },
            {
                "component": "SARTCOMPONENT",
                "config": {
                    "isPractice": false,
                    "maxResponseTime": 900,
                    "interTrialDelay": 0,
                    "durationFeedbackPresented": 1000,
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
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "You have completed the task, thank you!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "Click next to continue"
                        }
                    ]
                }
            }
        ]
    }'
);