-- File used to insert new tasks into the DB

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) VALUES
-- (
--     NULL,
--     "PSHARPLAB",
--     "QUESTIONNAIRE",
--     "Parkinson Anxiety Scale (PAS)",
--     "",
--     "",
--     '{}'
-- ),
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "SDMT",
    "Symbol Digit Modalities Task",
    "",
    '{}'
);