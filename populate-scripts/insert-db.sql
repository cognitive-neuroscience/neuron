-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "POST PLT Questionnaire",
    "Questionnaire asking the participant what they thought was the most/least likely stimulus to be correct",
    "",
    '{}'
);