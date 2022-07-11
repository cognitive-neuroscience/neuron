-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "PLT 2",
    "Probabilistic Learning Task 2",
    "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task-2/html/",
    '{}'
);