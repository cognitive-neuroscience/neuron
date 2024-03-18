
-- PAVLOVIA DSST 1 FR
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "DSST 1 FR",
    description = "Pavlovia Digit Symbol Substitution Task 1 (FR)",
    external_url = "https://run.pavlovia.org/Sharp_lab/dsst-1-Fr/html",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl":  "https://run.pavlovia.org/Sharp_lab/dsst-1-Fr/html"
                }
            }
        ]
    }'
WHERE id = 67;