
-- PAVLOVIA PLT 2
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "PLT 2",
    description = "Probabilistic Learning Task 2",
    external_url = "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task-2/html/",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl":  "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task-2/html/"
                }
            }
        ]
    }'
WHERE id = 62;