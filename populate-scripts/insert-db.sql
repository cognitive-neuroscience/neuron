-- File used to update the DB for existing tasks
-- source C:/Users/nlee30/Documents/sidetings/sharplab/goNeuronWorkspace/src/github.com/cognitive-neuroscience/neuron/populate-scripts/insert-db.sql
-- source /sbin/sharplab/populate-scripts/insert-db.sql

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Stress Task Pilot Version 4",
    "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    "https://run.pavlovia.org/Sharp_lab/s_study_s_part1",
    "{}"
),
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Control Stress Task Pilot Version 4",
    "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    "https://run.pavlovia.org/Sharp_lab/s_study_c_part1",
    "{}"
);