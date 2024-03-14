
-- JH_Bandit task
UPDATE tasks SET 
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "JH_Bandit Task",
    description = "",
    external_url = "https://run.pavlovia.org/Patrick250/jh_bandit",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Patrick250/jh_bandit",
                    "disableNextButtonDurationInSeconds": 1320,
                    "buttons": {
                        "nextButtonText": {
                            "en": "Only press this button when the task is complete",
                            "fr": "Appuyer suelement ce bouton lorsque vous avez terminé la tâche"
                        },
                        "previousButtonText": {
                            "en": "Previous",
                            "fr": "Précédent"
                        }
                    }
                }
            }
        ]
    }'
WHERE id = 85;