-- This file will rarely be used, but is meant to populate a database with the given tasks.

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
-- TASKS
-- NUMBERS GAME (digit span)
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "Numbers Game",
    "The participant reads a sequence of numbers and enters them in the same or reverse order",
    "",
    '{}'
),
-- FINGER TAPPING
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "Finger Tapping Game",
    "The participant uses their dominant or non dominant hand to tap the \"P\" and \"Q\" characters as quickly as they can",
    "",
    '{}'
),
-- NBACK
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "N-Back",
    "The participant sees a sequence of letters and presses the left or right arrow arrow key to indicate if they saw that letter 2 letters ago",
    "",
    '{}'
),
-- STROOP
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "Stroop Task",
    "The participant sees either the word RED, BLUE, or GREEN. The participant has to press 1 if the word is colored red, 2 if the word is colored blue, or 3 if the word is colored green",
    "",
    '{}'
),
-- TRAIL MAKING (connect the dots)
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "Trail Making",
    "The participant clicks different buttons in sequential order as fast as possible",
    "",
    '{}'
),
-- TASK SWITCHING
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Task Switching",
    "The participant is given a number from 1 - 4 or from 6 - 9. If the number if blue, then the participant should press the arrow keys to indicate whether the number if odd or even. If the number is orange, the participant should press the arrow keys to indicate whether the number if less than or greater than 5",
    "",
    '{}'
),
-- DEMAND SELECTION
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Demand Selection",
    "The participant selects one of two patches on the screen and is then presented with the task switching task. One patch is more difficult and switches more often than the other",
    "",
    '{}'
),
-- SMILEY FACE
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Smiley Face",
    "The participant is presented with both long and short faces. They have to hit a key to show that they saw a shorter smile, compared to a different key for a longer smile",
    "",
    '{}'
),
-- ODDBALL
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Oddball Task",
    "The participant is presented with various shapes. One shape (the triangle) is the target response. The participant needs to press a specific key whenever they see the target. Otherwise, they should press an alternative key for all other shapes",
    "",
    '{}'
),
-- EVERYDAY CHOICE
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Everyday Choice",
    "Modified rating task where the participant is required to rate their most preferred option when presented with a single activity or a list of activiites",
    "",
    '{}'
),
-- QUESTIONNAIRES
-- DEMOGRAPHICS
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Demographics Questionnaire",
    "Demographics questionnaire without SES questions",
    "",
    '{}'
),
-- PAVLOVIA TASKS
(
    NULL, 
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Corsi",
    "Corsi test task",
    "https://run.pavlovia.org/Sharp_lab/corsi-test/html",
    '{}'
),
-- CONSENT FORMS
-- STRESS CLINICAL FR
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Stress Clinical FR",
    "",
    "",
    '{}'
),
-- STRESS CLINICAL
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Stress Clinical",
    "",
    "",
    '{}'
),
-- STRESS PILOT
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Stress Pilot",
    "",
    "",
    '{}'
),
-- STRESS CLINICAL DEBRIEF
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Stress Clinical Debrief",
    "",
    "",
    '{}'
),
-- WEB PHENO CLINICAL FR
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Web Pheno Clinical FR",
    "",
    "",
    '{}'
),
-- WEB PHENO CLINICAL
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Web Pheno Clinical",
    "",
    "",
    '{}'
),
-- WEB PHENO PILOT
(
    NULL,
    "PSHARPLAB",
    "CONSENT",
    "Web Pheno Pilot",
    "",
    "",
    '{}'
),
-- APATHY AES ENGLISH CLEAN
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Apathy AES English Clean",
    "Apathy Evaluation Scale",
    "",
    '{}'
),
-- APATHY AES FRENCH CLEAN
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Apathy AES French Clean",
    "Apathy Evaluation Scale FR",
    "",
    '{}'
),
-- BIS-11 English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "BIS-11 English Version",
    "The Barratt Impulsiveness Scale",
    "",
    '{}'
),
-- BIS-11 French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "BIS-11 French Version",
    "The Barratt Impulsiveness Scale FR",
    "",
    '{}'
),
-- GDS English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "GDS Short Form English",
    "Geriatric Depression Scale English",
    "",
    '{}'
),
-- GDS French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "GDS Short Form French",
    "Geriatric Depression Scale French",
    "",
    '{}'
),
-- QUIP English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "QUIP",
    "Questionnaire for Impulsive-Compulsive Disorders in Parkinson's Disease - Rating Scale (QUIP-RS)",
    "",
    '{}'
),
-- QUIP French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "QUIP French",
    "Questionnaire sur les troubles impulsifs-compulsifs dans la maladie de Parkinson (QUIP-RS)",
    "",
    '{}'
),
-- SHAPS English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "SHAPS English",
    "Snaith-Hamilton Pleasure Scale English",
    "",
    '{}'
),
-- SHAPS French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "SHAPS French",
    "Échelle de Plaisir de Snaith-Hamilton",
    "",
    '{}'
),
-- PDAQ English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PDAQ English",
    "Penn Parkinson's Daily Activities Questionnaire-15",
    "",
    '{}'
),
-- PDAQ French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PDAQ French",
    "Penn Parkinson's Daily Activities Questionnaire-15 French",
    "",
    '{}'
),
-- AMI
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "AMI",
    "Apathy Motivation Index",
    "",
    '{}'
),
-- Everyday Activities Post Test
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Everyday Activities Post Test",
    "",
    "",
    '{}'
),
-- Demographics Questionnaire With SES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Demographics Questionnaire With SES",
    "",
    "",
    '{}'
),
-- PSS
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Perceived Stress Scale",
    "",
    "",
    '{}'
),
-- Holmes-Rahe Life Stress Inventory
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Holmes-Rahe Life Stress Inventory",
    "",
    "",
    '{}'
),
-- PAVLOVIA TASK Stress Task Pilot Version 4
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Stress Task Pilot Version 4",
    "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    "https://run.pavlovia.org/Sharp_lab/s_study_s_part1",
    '{}'
),
-- PAVLOVIA TASK Control Stress Task Pilot Version 4
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Control Stress Task Pilot Version 4",
    "Includes baseline corsi, math task, videos, emotion ratings, filler task, post task corsi",
    "https://run.pavlovia.org/Sharp_lab/s_study_c_part1",
    '{}'
),
-- PANAS
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PANAS",
    "",
    "",
    '{}'
),
-- Stress Study Post Test
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Stress Study Post Test",
    "",
    "",
    '{}'
),
-- Control Stress Debrief
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Control Stress Debrief",
    "",
    "https://run.pavlovia.org/Sharp_lab/debrief_s_pilot4",
    '{}'
),
-- Stress Study Debrief
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "Stress Study Debrief",
    "",
    "https://run.pavlovia.org/Sharp_lab/debrief_s_s_pilot4",
    '{}'
),
-- Basic Background Questionnaire
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Basic Background Questionnaire",
    "",
    "",
    '{}'
),
-- Parkinsons Treatment Questionnaire
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Parkinson's treatment Questionnaire",
    "Parkinson's treatment Questionnaire",
    "",
    '{}'
),
-- General Health Questionnaire
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "General Health Questionnaire",
    "General Health Questionnaire",
    "",
    '{}'
),
-- Deception Debrief Info Display
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Deception Debrief",
    "Debriefing about the deception used in the study",
    "",
    '{}'
),
-- SART
(
    NULL,
    "PSHARPLAB",
    "NAB",
    "SART",
    "Sustained Attention to Response Task",
    "",
    '{}'
),
-- Break Display Slide INFO DISPLAY
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Break Display Slide",
    "",
    "",
    '{}'
),
-- Welcome Display Slide INFO DISPLAY
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Welcome Display Slide",
    "",
    "",
    '{}'
),
-- End Display Slide INFO DISPLAY
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "End Display Slide",
    "",
    "",
    '{}'
),
-- Stress Study Questionnaire
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Stress Study Questionnaire",
    "",
    "",
    '{}'
),
-- Face Name association task
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Face Name Association Task",
    "",
    "",
    '{}'
),
-- PLT
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "PLT",
    "This task is a probablistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501.",
    "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task/html",
    '{}'
),
-- Stress Study: Post Manipulation Check In
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Stress Study: Post Manipulation Check In",
    "",
    "",
    '{}'
),
-- Stress Study Wait Slide
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Stress Study Wait Slide",
    "",
    "",
    '{}'
);