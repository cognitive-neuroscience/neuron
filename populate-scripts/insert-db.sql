-- File used to update the DB for existing tasks
-- source C:/Users/nlee30/Documents/sidetings/sharplab/goNeuronWorkspace/src/github.com/cognitive-neuroscience/neuron/populate-scripts/insert-db.sql
-- source /sbin/sharplab/populate-scripts/insert-db.sql

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PANAS",
    "",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "In the following you find a list of expressions that characterize different moods. Please take a look at the list, word by word, and mark for each word the answer that represents best the actual intensity of your mood status. <br /><br /> Please pay attention to the following facts: <br /><br />- Within the list there are some attributes that possibly describe the same or similar moods. Please do not get irritated due to this fact, and judge each attribute irrespective of your answer to another attribute.<br />- Please judge only how you feel at this moment, and not how you normally or somtimes feel.<br />- If you have some difficulties in finding an answer, please mark the answer that fits best.<br /><br />Please judge each word and do not leave out a word."
            },
            {
                "questionType": "displayText",
                "title": "Use your mouse to drag the marker in order to select your answer"
            },
            {
                "questionType": "slider",
                "title": "How CONTENT do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How CONTENT do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How RESTLESS do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How RESTLESS do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How BAD do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How BAD do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How COMPOSED do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How COMPOSED do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How GREAT do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How GREAT do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How UNEASY do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How UNEASY do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How UNCOMFORTABLE do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How UNCOMFORTABLE do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How RELAXED do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How RELAXED do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How GOOD do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How GOOD do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How AT EASE do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How AT EASE do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How UNHAPPY do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How UNHAPPY do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How DISCONTENT do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How DISCONTENT do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
                    {
                "questionType": "slider",
                "title": "How TENSE do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How TENSE do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How HAPPY do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How HAPPY do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How NERVOUS do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How NERVOUS do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            },
            {
                "questionType": "slider",
                "title": "How CALM do you feel?",
                "validation": {
                    "required":true
                },
                "key": "How CALM do you feel?",
                "legend": [
                    "Definitely Not Feeling This",
                    "Extremely"
                ]
            }
        ]
    }'
),
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Stress Study Post Test",
    "",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "freeTextResponse",
                "title": "Please describe your experience of playing the math game and watching the videos. How did you feel and what thoughts did you have regarding the game and videos?",
                "validation": {
                    "required":true
                },
                "key": "description of experiences"
            }
        ]
    }'
);



