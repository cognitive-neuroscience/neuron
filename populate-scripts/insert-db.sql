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
-- 94 Judgement Of Line
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Everyday Choice Counterbalanced With Short Version",
    "This is just like the original Everyday Choice task, but with a counterbalance between the two versions. Half of the participants will see the original versionm, and the other half will see the short version where they only rate 3 questions",
    "",
    '{}'
);