-- File used to update the DB for existing tasks
-- source C:/Users/nlee30/Documents/sidetings/sharplab/goNeuronWorkspace/src/github.com/cognitive-neuroscience/neuron/populate-scripts/insert-db.sql
-- source /sbin/sharplab/populate-scripts/insert-db.sql

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PSS",
    "Perceived Stress Scale",
    "",
    '{
        "title": "Questionnaire",
        "questions": [
            {
                "questionType": "displayText",
                "title": "<p>The questions in this scale ask you about your feelings and thoughts during the last month. In each case, you will be asked to indicate how often you felt or thought a certain way.</p>"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you been upset because of something that happened unexpectedly?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you been upset because of something that happened unexpectedly",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you felt that you were unable to control the important things in your life?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you felt that you were unable to control the important things in your life",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you felt nervous and \\"stressed\\"?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you felt nervous and \\"stressed\\"",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you felt confident about your ability to handle your personal problems?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you felt confident about your ability to handle your personal problems",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you felt that things were going your way?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you felt that things were going your way",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you found that you could not cope with all the things that you had to do?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you found that you could not cope with all the things that you had to do",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you been able to control irritations in your life?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you been able to control irritations in your life",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you felt that you were on top of things?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you felt that you were on top of things",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you been angered because of things that were outside of your control?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you been angered because of things that were outside of your control",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?",
                "validation": {
                    "required": true
                },
                "key": "In the last month, how often have you felt difficulties were piling up so high that you could not overcome them",
                "multipleChoiceOptions": [
                    {"label": "0 - Never", "value": "0"},
                    {"label": "1 - Almost never", "value": "1"},
                    {"label": "2 - Sometimes", "value": "2"},
                    {"label": "3 - Fairly often", "value": "3"},
                    {"label": "4 - Very often", "value": "4"}
                ]
            } 
        ]
    }'
),
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Holmes-Rahe Life Stress Inventory",
    "",
    "",
    '{
        "title": "Questionnaire",
        "questions": [
            {
                "questionType": "displayText",
                "title": "<p>Please indicate whether the following life events have happened to you during the previous year.</p>"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Death of spouse",
                "validation": {
                    "required": true
                },
                "key": "Death of spouse",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Divorce",
                "validation": {
                    "required": true
                },
                "key": "Divorce",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Marital separation from mate",
                "validation": {
                    "required": true
                },
                "key": "Marital separation from mate",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Detention in jail or other institution",
                "validation": {
                    "required": true
                },
                "key": "Detention in jail or other institution",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Death of a close family member",
                "validation": {
                    "required": true
                },
                "key": "Death of a close family member",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major personal injury or illness",
                "validation": {
                    "required": true
                },
                "key": "Major personal injury or illness",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Marriage",
                "validation": {
                    "required": true
                },
                "key": "Marriage",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Being fired at work",
                "validation": {
                    "required": true
                },
                "key": "Being fired at work",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Marital reconciliation with mate",
                "validation": {
                    "required": true
                },
                "key": "Marital reconciliation with mate",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Retirement from work",
                "validation": {
                    "required": true
                },
                "key": "Retirement from work",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in the health or behaviour of a family member",
                "validation": {
                    "required": true
                },
                "key": "Major change in the health or behaviour of a family member",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Pregnancy",
                "validation": {
                    "required": true
                },
                "key": "Pregnancy",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Sexual difficulties",
                "validation": {
                    "required": true
                },
                "key": "Sexual difficulties",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Gaining a new family member (i.e…. Birth, adoption, older adult moving in, etc.)",
                "validation": {
                    "required": true
                },
                "key": "Gaining a new family member (i.e…. Birth, adoption, older adult moving in, etc.)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major business readjustment",
                "validation": {
                    "required": true
                },
                "key": "Major business readjustment",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in financial state (i.e. a lot worse or better off than usual)",
                "validation": {
                    "required": true
                },
                "key": "Major change in financial state (i.e. a lot worse or better off than usual)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Death of a close friend",
                "validation": {
                    "required": true
                },
                "key": "Death of a close friend",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Changing to a different line of work",
                "validation": {
                    "required": true
                },
                "key": "Changing to a different line of work",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in the number of arguments with spouse (i.e…. Either a lot more or a lot less than usual regarding child rearing, personal habits, etc.)",
                "validation": {
                    "required": true
                },
                "key": "Major change in the number of arguments with spouse (i.e…. Either a lot more or a lot less than usual regarding child rearing, personal habits, etc.)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Taking on a mortgage (for home, business, etc…)",
                "validation": {
                    "required": true
                },
                "key": "Taking on a mortgage (for home, business, etc…)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Foreclosure on a mortgage or a loan",
                "validation": {
                    "required": true
                },
                "key": "Foreclosure on a mortgage or a loan",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in responsibilities at work (i.e. promotion, demotion, etc.)",
                "validation": {
                    "required": true
                },
                "key": "Major change in responsibilities at work (i.e. promotion, demotion, etc.)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Son or daughter leaving home (marriage, attending college, joined mil.)",
                "validation": {
                    "required": true
                },
                "key": "Son or daughter leaving home (marriage, attending college, joined mil.)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "In-law troubles",
                "validation": {
                    "required": true
                },
                "key": "In-law troubles",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Outstanding personal achievement",
                "validation": {
                    "required": true
                },
                "key": "Outstanding personal achievement",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Spouse beginning or ceasing work outside the home",
                "validation": {
                    "required": true
                },
                "key": "Spouse beginning or ceasing work outside the home",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Beginning or ceasing of formal schooling",
                "validation": {
                    "required": true
                },
                "key": "Beginning or ceasing of formal schooling",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in living condition (new home, remodeling, deterioration of neighborhood or home etc.)",
                "validation": {
                    "required": true
                },
                "key": "Major change in living condition (new home, remodeling, deterioration of neighborhood or home etc.)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Revision of personal habits (dress manners, associations, quitting smoking)",
                "validation": {
                    "required": true
                },
                "key": "Revision of personal habits (dress manners, associations, quitting smoking)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Troubles with the boss",
                "validation": {
                    "required": true
                },
                "key": "Troubles with the boss",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major changes in working hours or conditions",
                "validation": {
                    "required": true
                },
                "key": "Major changes in working hours or conditions",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Changes in residence",
                "validation": {
                    "required": true
                },
                "key": "Changes in residence",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Changing to a new school",
                "validation": {
                    "required": true
                },
                "key": "Changing to a new school",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in usual type and/or amount of recreation",
                "validation": {
                    "required": true
                },
                "key": "Major change in usual type and/or amount of recreation",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in church activity (a lot more or less than usual)",
                "validation": {
                    "required": true
                },
                "key": "Major change in church activity (a lot more or less than usual)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in social activities (clubs, movies, visiting, etc.)",
                "validation": {
                    "required": true
                },
                "key": "Major change in social activities (clubs, movies, visiting, etc.)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Taking on a loan (car, tv, freezer, etc.)",
                "validation": {
                    "required": true
                },
                "key": "Taking on a loan (car, tv, freezer, etc.)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in sleeping habits (a lot more or a lot less than usual)",
                "validation": {
                    "required": true
                },
                "key": "Major change in sleeping habits (a lot more or a lot less than usual)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in number of family get-togethers",
                "validation": {
                    "required": true
                },
                "key": "Major change in number of family get-togethers",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major change in eating habits (a lot more or less food intake, or very different meal hours or surroundings)",
                "validation": {
                    "required": true
                },
                "key": "Major change in eating habits (a lot more or less food intake, or very different meal hours or surroundings)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Vacation",
                "validation": {
                    "required": true
                },
                "key": "Vacation",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Major holidays",
                "validation": {
                    "required": true
                },
                "key": "Major holidays",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Minor violations of the law (traffic tickets, jaywalking, disturbing the peace, etc)",
                "validation": {
                    "required": true
                },
                "key": "Minor violations of the law (traffic tickets, jaywalking, disturbing the peace, etc)",
                "multipleChoiceOptions": [
                    {"label": "Yes", "value": "yes"},
                    {"label": "No", "value": "no"}
                ]
            }
        ]
    }'
);