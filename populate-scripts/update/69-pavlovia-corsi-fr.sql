
-- PAVLOVIA Corsi FR
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Corsi FR",
    description = "Pavlovia Corsi FR",
    external_url = "https://run.pavlovia.org/Sharp_lab/corsi-fr/html",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl":  "https://run.pavlovia.org/Sharp_lab/corsi-fr/html"
                }
            }
        ]
    }'
WHERE id = 69;