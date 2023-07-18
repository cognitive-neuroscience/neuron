-- File used to insert new tasks into the DB

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) VALUES
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "JH_Bandit Task",
    "",
    "",
    '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Patrick250/jh_bandit"
                }
            }
        ]
    }'
);