-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PAVLOVIA",
    "EXPERIMENTAL",
    "PLT",
    "This task is a probablistic learning task based on the reinforcement learning model. The current version is based on the paper by Frank, Woroch and Curran. (2005). Neuron, 47(4), 495-501.",
    "https://run.pavlovia.org/Sharp_lab/probabilistic-learning-task/html",
    '{}'
),
(
    NULL,
    "PSHARPLAB",
    "EXPERIMENTAL",
    "Stress Study: Post Manipulation Check In",
    "",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Please consider how you are feeling in this current moment when answering the following questions. Drag the marker to the appropriate position on the 0-100 scale with 0 being \\"not feeling this at all\\" and 100 being \\"extremely feeling this\\"."
            },
            {
                "questionType": "displayText",
                "title": "Use your mouse to drag the marker in order to select your answer"
            },
            {
                "questionType": "slider",
                "title": "How stressed do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How stressed do you feel?",
                "legend": [
                    "Not feeling this at all",
                    "Extremely feeling this"
                ]
            },
            {
                "questionType": "slider",
                "title": "How pleased do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How pleased do you feel?",
                "legend": [
                    "Not feeling this at all",
                    "Extremely feeling this"
                ]
            },
            {
                "questionType": "slider",
                "title": "How calm do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How calm do you feel?",
                "legend": [
                    "Not feeling this at all",
                    "Extremely feeling this"
                ]
            }
        ]
    }'
),
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Stress Study Wait Slide",
    "",
    "",
    '{
        "title": "Thank you for all your participation so far!",
        "sections": [
            {
                "textContent": "Once you have reached this slide, please <b>wait</b> and <b>do not</b> press any buttons until you are instructed by the researcher to proceed to the next task."
            },
            {
                "textContent": "The researcher will return shortly."
            }
        ],
        "buttons": {
            "displayContinueButton": true
        }
    }'
);