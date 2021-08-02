-- File used to update the DB for existing tasks
-- source C:/Users/nlee30/Documents/sidetings/sharplab/goNeuronWorkspace/src/github.com/cognitive-neuroscience/neuron/populate-scripts/insert-db.sql
-- source /sbin/sharplab/populate-scripts/insert-db.sql

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Control Stress Debrief",
    "",
    "https://run.pavlovia.org/Sharp_lab/debrief_s_pilot4",
    '{}'
),
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Stress Study Debrief",
    "",
    "https://run.pavlovia.org/Sharp_lab/debrief_s_s_pilot4",
    '{}'
);