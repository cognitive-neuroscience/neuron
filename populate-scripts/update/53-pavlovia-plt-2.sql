
-- PAVLOVIA PLT 2
UPDATE tasks SET
    from_platform = "PAVLOVIA",
    task_type = "EXPERIMENTAL",
    name = "PLT 1",
    description = "This task is a probablistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501.",
    external_url = "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task/html",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "EMBEDDEDPAGECOMPONENT",
                "componentConfig": {
                    "externalUrl": "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task/html"
                }
            }
        ]
    }'
WHERE id = 53;