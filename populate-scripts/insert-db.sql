-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Face Name Association Task",
    "",
    "",
    '{
        "config": {},
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "FACENAMEASSOCIATIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "FACENAMEASSOCIATIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
                "component": "FACENAMEASSOCIATIONCOMPONENT",
                "config": {
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
                "component": "DISPLAYCOMPONENT",
                "content": {
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
);