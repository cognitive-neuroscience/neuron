
-- Face Name Association
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "Face Name Association Task",
    description = "Participants learn face name pairs and are then tested on these pairs",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Welcome to the Face Name Association Game",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You will be shown a face and a name on the screen"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will start by memorizing the phase name pairings. You will see these pairs twice in random order."
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
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "phase": "learning-phase",
                    "maxResponseTime": 10000,
                    "stimulusSet": 1,
                    "interTrialDelay": 500,
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
                    "title": "Take a break",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have been shown the face name pairs."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will be shown the face name pairs again in a different random order"
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
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "phase": "learning-phase",
                    "maxResponseTime": 10000,
                    "stimulusSet": 1,
                    "interTrialDelay": 500,
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
                    "title": "Testing phase",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "You have been shown the face name pairs."
                        },
                        {
                            "sectionType": "text",
                            "textContent": "You will now be tested on the different face name pairings"
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
                "componentName": "FACENAMEASSOCIATIONCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "phase": "test-phase",
                    "maxResponseTime": 10000,
                    "stimulusSet": 1,
                    "interTrialDelay": 500,
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
                            "textContent": "You have completed the entire task"
                        },
                        {
                            "sectionType": "text",
                            "textContent": "Thank you for your participation"
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