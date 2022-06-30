-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "DSST 1",
    "Digit Symbol Substitution Task 1",
    "https://run.pavlovia.org/Sharp_lab/digit-symbol-substitution-task/html/",
    '{}'
),
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "DSST 2",
    "Digit Symbol Substitution Task 2",
    "https://run.pavlovia.org/Sharp_lab/digit-symbol-substitution-task-2/html/",
    '{}'
);