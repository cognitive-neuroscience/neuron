
-- Stress Study Debrief
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Stress Study Debrief",
    description = "Stress Study Debrief",
    external_url = "https://run.pavlovia.org/Sharp_lab/debrief_s_s_pilot4",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/debrief_s_s_pilot4"
                }
            }
        ]
    }'
WHERE id = 42;