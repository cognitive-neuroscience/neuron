
-- CORSI
UPDATE tasks set
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Corsi",
    description = "This task is a 3-9 block corsi task with 2 trials per level. The task ends when a participant has responded inaccurately for an entire level.",
    external_url = "https://run.pavlovia.org/Sharp_lab/corsi/html",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/corsi/html"
                }
            }
        ]
    }'
WHERE id = 12;