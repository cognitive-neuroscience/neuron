
-- PAVLOVIA DSST 1
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "DSST 1",
    description = "Digit Symbol Substitution Task 1",
    external_url = "https://run.pavlovia.org/Sharp_lab/digit-symbol-substitution-task/html/",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl":  "https://run.pavlovia.org/Sharp_lab/digit-symbol-substitution-task/html/"
                }
            }
        ]
    }'
WHERE id = 60;