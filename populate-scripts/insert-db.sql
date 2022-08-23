-- File used to insert new tasks into the DB

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "POST PLT Questionnaire (FOR PLT VERSION 1)",
    "Questionnaire asking the participant what they thought was the most/least likely stimulus to be correct",
    "",
    '{}'
);