-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Everyday Choice Task Clinical Info Questionnaire",
    "",
    "",
    '{}'
),
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Everyday Choice Demographics Questionnaire",
    "",
    "",
    '{}'
),
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Everyday Choice Welcome Display Page",
    "",
    "",
    '{}'
);