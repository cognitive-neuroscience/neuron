
-- PAVLOVIA PLT 2 FR
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "PLT 2 FR",
    description = "Pavlovia PLT 2 FR",
    external_url = "https://run.pavlovia.org/Sharp_lab/plt-2-fr/html",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl":  "https://run.pavlovia.org/Sharp_lab/plt-2-fr/html"
                }
            }
        ]
    }'
WHERE id = 71;