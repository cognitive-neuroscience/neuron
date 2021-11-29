-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Break Display Slide",
    "",
    "",
    '{
        "title": "Thank you for your participation and for sticking with it so far!",
        "sections": [
            {
                "header": "A few reminders:",
                "textContent": ""
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "1. You can take breaks if you want to. We simply ask that you wait until the end of a game or of a questionnaire, otherwise your data will be lost."
            },
            {
                "header": "",
                "indent": 2,
                "textContent": "<b>To take a break:</b> simply close this window."
            },
            {
                "header": "",
                "indent": 2,
                "textContent": "<b>To get back to it:</b> use the link you were sent in the email. It will take you to the log-in page."
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "2. Please complete the full set of brain games within 1 week from when you started."
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "3. We also ask that you do the games when you are feeling ''ON'', i.e. when the PD medications are in effect (typically best about 1-2 hours after your last dose)."
            },
            {
                "header": "",
                "textContent": "<b>QUESTIONS OR EXPERIENCING DIFFICULTIES?</b>"
            },
            {
                "header": "",
                "textContent": "sharplab.neuro@mcgill.ca"
            },
            {
                "header": "",
                "textContent": "To take a break now, close the window."
            },
            {
                "header": "",
                "textContent": "To continue, please click NEXT"
            }
        ],
        "buttons": {
            "displayContinueButton": true
        }
    }'
),
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Welcome Display Slide",
    "",
    "",
    '{
        "title": "Welcome to the study of Neurocognition on the Web for PD - Evaluation of Reliability",
        "sections": [
            {
                "header": "Thank you for participating in our study!",
                "textContent": ""
            },
            {
                "header": "",
                "textContent": "You will be playing a series of brain games to help us better understand the thinking and memory changes experienced by people with Parkinson''s disease."
            },
            {
                "header": "",
                "textContent": "You can do this all in one sitting, or leave (by closing the window) and come back another day."
            },
            {
                "header": "",
                "textContent": "Please aim to do all the games over the course of one week. You can see your progress in your dashboard when you first log in."
            },
            {
                "header": "",
                "textContent": "Throughout this study, please feel free to take breaks! We simply ask that you wait until the end of a game or of a questionnaire, otherwise your data will be lost."
            },
            {
                "header": "",
                "textContent": "<b>To take a break:</b> simply close this window."
            },
            {
                "header": "",
                "textContent": "<b>To get back to it:</b> use the link you were sent in the email. It will take you to the log-in page."
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "We also ask that you do the games when you are feeling ''ON'', i.e. when the PD medications are in effect (typically best about 1-2 hours after your last dose)."
            },
            {
                "textContent": "<b>QUESTIONS OR EXPERIENCING DIFFICULTIES?</b>"
            },
            {
                "header": "",
                "textContent": "sharplab.neuro@mcgill.ca"
            },
            {
                "header": "",
                "textContent": "To take a break now, close the window."
            },
            {
                "header": "",
                "textContent": "To continue, please click NEXT"
            }
        ],
        "buttons": {
            "displayContinueButton": true
        }
    }'
);