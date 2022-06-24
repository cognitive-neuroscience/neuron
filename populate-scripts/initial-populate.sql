-- This file will rarely be used, but is meant to populate a database with the given tasks.

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
-- TASKS
-- NUMBERS GAME (digit span)
(
    1,
    "PSHARPLAB",
    "NAB",
    "Numbers Game",
    "The participant reads a sequence of numbers and enters them in the same or reverse order",
    "",
    '{}'
),
-- FINGER TAPPING
(
    2,
    "PSHARPLAB",
    "NAB",
    "Finger Tapping Game",
    "The participant uses their dominant or non dominant hand to tap the \"P\" and \"Q\" characters as quickly as they can",
    "",
    '{}'
),
-- NBACK
(
    3,
    "PSHARPLAB",
    "NAB",
    "N-Back",
    "The participant sees a sequence of letters and presses the left or right arrow arrow key to indicate if they saw that letter 2 letters ago",
    "",
    '{}'
),
-- STROOP
(
    4,
    "PSHARPLAB",
    "NAB",
    "Stroop Task",
    "The participant sees either the word RED, BLUE, or GREEN. The participant has to press 1 if the word is colored red, 2 if the word is colored blue, or 3 if the word is colored green",
    "",
    '{}'
),
-- TRAIL MAKING (connect the dots)
(
    5,
    "PSHARPLAB",
    "NAB",
    "Trail Making",
    "The participant clicks different buttons in sequential order as fast as possible",
    "",
    '{}'
),
-- TASK SWITCHING
(
    6,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Task Switching",
    "The participant is given a number from 1 - 4 or from 6 - 9. If the number if blue, then the participant should press the arrow keys to indicate whether the number if odd or even. If the number is orange, the participant should press the arrow keys to indicate whether the number if less than or greater than 5",
    "",
    '{}'
),
-- DEMAND SELECTION
(
    7,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Demand Selection",
    "The participant selects one of two patches on the screen and is then presented with the task switching task. One patch is more difficult and switches more often than the other",
    "",
    '{}'
),
-- SMILEY FACE
(
    8,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Smiley Face",
    "The participant is presented with both long and short faces. They have to hit a key to show that they saw a shorter smile, compared to a different key for a longer smile",
    "",
    '{}'
),
-- ODDBALL
(
    9,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Oddball Task",
    "The participant is presented with various shapes. One shape (the triangle) is the target response. The participant needs to press a specific key whenever they see the target. Otherwise, they should press an alternative key for all other shapes",
    "",
    '{}'
),
-- EVERYDAY CHOICE
(
    10,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Everyday Choice",
    "Modified rating task where the participant is required to rate their most preferred option when presented with a single activity or a list of activiites",
    "",
    '{}'
),
-- DEMOGRAPHICS QUESTIONNAIRE
(
    11,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Demographics Questionnaire",
    "Demographics questionnaire without SES questions",
    "",
    '{}'
),
-- CORSI PAVLOVIA TASK
(
    12, 
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Corsi",
    "Corsi test task",
    "https://run.pavlovia.org/Sharp_lab/corsi-test/html",
    '{}'
),
-- STRESS CLINICAL CONSENT
(
    14,
    "PSHARPLAB",
    "CONSENT",
    "Stress Clinical",
    "",
    "",
    '{}'
),
-- STRESS PILOT CONSENT
(
    15,
    "PSHARPLAB",
    "CONSENT",
    "Stress Pilot",
    "",
    "",
    '{}'
),
-- WEB PHENO CLINICAL CONSENT
(
    18,
    "PSHARPLAB",
    "CONSENT",
    "Web Pheno Clinical",
    "",
    "",
    '{}'
),
-- WEB PHENO PILOT CONSENT
(
    19,
    "PSHARPLAB",
    "CONSENT",
    "Web Pheno Pilot",
    "",
    "",
    '{}'
),
-- APATHY AES QUESTIONNAIRE
(
    20,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Apathy AES English Clean",
    "Apathy Evaluation Scale",
    "",
    '{}'
),
-- BIS-11 QUESTIONNAIRE
(
    22,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "BIS-11 English Version",
    "The Barratt Impulsiveness Scale",
    "",
    '{}'
),
-- GDS QUESTIONNAIRE
(
    24,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "GDS Short Form English",
    "Geriatric Depression Scale English",
    "",
    '{}'
),
-- QUIP QUESTIONNAIRE
(
    26,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "QUIP",
    "Questionnaire for Impulsive-Compulsive Disorders in Parkinson's Disease - Rating Scale (QUIP-RS)",
    "",
    '{}'
),
-- SHAPS QUESTIONNAIRE
(
    28,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "SHAPS English",
    "Snaith-Hamilton Pleasure Scale English",
    "",
    '{}'
),
-- PDAQ QUESTIONNAIRE
(
    30,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PDAQ English",
    "Penn Parkinson's Daily Activities Questionnaire-15",
    "",
    '{}'
),
-- AMI QUESTIONNAIRE
(
    32,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "AMI",
    "Apathy Motivation Index",
    "",
    '{}'
),
-- Everyday Activities Post Test QUESTIONNAIRE
(
    33,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Everyday Activities Post Test",
    "",
    "",
    '{}'
),
-- Demographics Questionnaire With SES QUESTIONNAIRE
(
    34,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Demographics Questionnaire With SES",
    "",
    "",
    '{}'
),
-- PSS QUESTIONNAIRE
(
    35,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Perceived Stress Scale",
    "",
    "",
    '{}'
),
-- Holmes-Rahe Life Stress Inventory QUESTIONNAIRE
(
    36,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Holmes-Rahe Life Stress Inventory",
    "",
    "",
    '{}'
),
-- PAVLOVIA TASK Stress Task Pilot Version 4 CORSI
(
    37,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Stress Task Pilot Version 4",
    "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    "https://run.pavlovia.org/Sharp_lab/s_study_s_part1",
    '{}'
),
-- PAVLOVIA TASK Control Stress Task Pilot Version 4 CORSI
(
    38,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Control Stress Task Pilot Version 4",
    "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    "https://run.pavlovia.org/Sharp_lab/s_study_c_part1",
    '{}'
),
-- MDMQ QUESTIONNAIRE
(
    39,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PANAS",
    "",
    "",
    '{}'
),
-- Stress Study Post Test QUESTIONNAIRE
(
    40,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Stress Study Post Test",
    "",
    "",
    '{}'
),
-- Control Stress Debrief PAVLOVIA
(
    41,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Control Stress Debrief",
    "",
    "https://run.pavlovia.org/Sharp_lab/debrief_s_pilot4",
    '{}'
),
-- Stress Study Debrief PAVLOVIA
(
    42,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Stress Study Debrief",
    "",
    "https://run.pavlovia.org/Sharp_lab/debrief_s_s_pilot4",
    '{}'
),
-- Basic Background Questionnaire QUESTIONNAIRE
(
    43,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Basic Background Questionnaire",
    "",
    "",
    '{}'
),
-- Parkinsons Treatment QUESTIONNAIRE
(
    44,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Parkinson's treatment Questionnaire",
    "Parkinson's treatment Questionnaire",
    "",
    '{}'
),
-- General Health QUESTIONNAIRE
(
    45,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "General Health Questionnaire",
    "General Health Questionnaire",
    "",
    '{}'
),
-- Deception Debrief INFO DISPLAY
(
    46,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Deception Debrief",
    "Debriefing about the deception used in the study",
    "",
    '{}'
),
-- SART 
(
    47,
    "PSHARPLAB",
    "NAB",
    "SART",
    "Sustained Attention to Response Task",
    "",
    '{}'
),
-- Break Display Slide INFO DISPLAY
(
    48,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Break Display Slide",
    "",
    "",
    '{}'
),
-- Welcome Display Slide INFO DISPLAY
(
    49,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Welcome Display Slide",
    "",
    "",
    '{}'
),
-- End Display Slide INFO DISPLAY
(
    50,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "End Display Slide",
    "",
    "",
    '{}'
),
-- Stress Study QUESTIONNAIRE
(
    51,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Stress Study Questionnaire",
    "",
    "",
    '{}'
),
-- Face Name association task
(
    52,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Face Name Association Task",
    "",
    "",
    '{}'
),
-- PLT
(
    53,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "PLT",
    "This task is a probablistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501.",
    "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task/html",
    '{}'
),
-- Stress Study: Post Manipulation Check In 
(
    54,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Stress Study: Post Manipulation Check In",
    "",
    "",
    '{}'
),
-- Stress Study Wait Slide
(
    55,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Stress Study Wait Slide",
    "",
    "",
    '{}'
),
-- PLT
(
    56,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Probabilistic Learning Task",
    "This task is a probablistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501.",
    "",
    '{}'
);