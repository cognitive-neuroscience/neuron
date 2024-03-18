
-- PAVLOVIA DSST 2
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "DSST 2",
    description = "Digit Symbol Substitution Task 2",
    external_url = "https://run.pavlovia.org/Sharp_lab/digit-symbol-substitution-task-2/html/",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl":  "https://run.pavlovia.org/Sharp_lab/digit-symbol-substitution-task-2/html/"
                }
            }
        ]
    }'
WHERE id = 61;