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
),
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Probabilistic Learning Task (VERSION 2)",
    "This task is a probablistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501. To see the image set associated with this version of the PLT, visit this link: https://github.com/cognitive-neuroscience/axon/tree/master/src/assets/images/stimuli/version2/plt",
    "",
    '{}'
),
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "POST PLT Questionnaire (FOR PLT VERSION 2)",
    "Questionnaire asking the participant what they thought was the most/least likely stimulus to be correct",
    "",
    '{}'
);