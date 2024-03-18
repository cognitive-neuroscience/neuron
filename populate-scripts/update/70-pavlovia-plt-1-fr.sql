
-- PAVLOVIA PLT 1 FR
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "PLT 1 FR",
    description = "Pavlovia PLT 1 FR",
    external_url = "https://run.pavlovia.org/Sharp_lab/plt-1-fr/html",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl":  "https://run.pavlovia.org/Sharp_lab/plt-1-fr/html"
                }
            }
        ]
    }'
WHERE id = 70;