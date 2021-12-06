-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "End Display Slide",
    "",
    "",
    '{
        "title": "You have successfully completed the Neurocognition on the Web study!",
        "sections": [
            {
                "header": "Thank you for participating in our study!",
                "textContent": ""
            },
            {
                "header": "",
                "textContent": "If you have any questions about our study, please feel free to contact us through our email."
            },
            {
                "header": "",
                "textContent": "If you haven''t already, please also contact us (sharplab.neuro@mcgill.ca) to schedule your in-person session."
            },
            {
                "header": "",
                "textContent": "Furthermore, we would love to hear your feedback and your experience using our platform, as this project is still a work in progress."
            },
            {
                "header": "",
                "textContent": "If you are in full-screen mode, you can press ''esc'' to exit, then close the window or browser."
            },
            {
                "header": "",
                "textContent": "Thank you so much for participating!"
            },
            {
                "header": "",
                "textContent": "<b>Contact Email:</b> sharplab.neuro@mcgill.ca"
            }
        ],
        "buttons": {
            "displayContinueButton": true
        }
    }'
);