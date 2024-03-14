
-- PAVLOVIA TASK Stress Task Pilot Version 4
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "Stress Task Pilot Version 4",
    description = "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    external_url = "https://run.pavlovia.org/Sharp_lab/s_study_s_part1",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/s_study_s_part1"
                }
            }
        ]
    }'
WHERE id = 37;