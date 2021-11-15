-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "SART",
    "Sustained Attention to Response Task",
    "",
    '{
        "config": {
            "counterBalanceGroups": {
                "1": "ASCENDING",
                "2": "RANDOM"
            }
        },
        "metadata": [
            {
                "component": "DISPLAYCOMPONENT",
                "content": {
                    "title": "Welcome to the SART Task",
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": "This task instruction set is currently empty."
                        },
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

                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            }
        ]
    }'
);