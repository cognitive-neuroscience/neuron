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
                    "title": "Welcome to the Face Name Game",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "This is some placeholder text. It will be replaced later"
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
                    "title": "Congrats!",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "This is more placeholder text."
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
            }
        ]
    }'
);