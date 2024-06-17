
-- Control Stress Debrief
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Control Stress Debrief",
    description = "",
    external_url = "https://run.pavlovia.org/Sharp_lab/debrief_s_pilot4",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/debrief_s_pilot4"
                }
            }
        ]
    }'
WHERE id = 41;