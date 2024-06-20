
-- Iowa Gambling Task
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "SDMT",
    description = "Symbol Digit Modalities Task. The participant needs to use a key that maps images to numbers. They must look at a grid of images, and input the associated numbers",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "SDMTCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "numRows": 1,
                    "numnCols": 9,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            },
            {
                "componentName": "SDMTCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 120000,
                    "numRows": 9,
                    "numnCols": 16,
                    "stimuliConfig": {
                        "type": "generated",
                        "stimuli": null
                    }
                }
            }
        ]
    }'
WHERE id = 93;