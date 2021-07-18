-- File used to update the DB for existing tasks
-- source C:/Users/nlee30/Documents/sidetings/sharplab/goNeuronWorkspace/src/github.com/cognitive-neuroscience/neuron/populate-scripts/insert-db.sql
-- source /sbin/sharplab/populate-scripts/insert-db.sql

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "AMI",
    "Apathy Motivation Index",
    "",
    '{
        "title": "Questionnaire",
        "questions": [
            {
                "questionType": "displayText",
                "title": "<p>Below are a number of statements. Each statement asks you to think about your life <b>over the last 2 weeks</b>.</p> <p>For each statement, select how appropriately it describes your life right now. Select \\"Completely true\\" if the statement describes you perfectly, \\"Completely untrue\\" if the statement does not describe you at all over the last 2 weeks, and use the answers in between accordingly.</p>"
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "1. I feel sad or upset when I hear bad news.",
                "validation": {
                    "required": true
                },
                "key": "Q1",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "2. I start conversations with random people.",
                "validation": {
                    "required": true
                },
                "key": "Q2",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "3. I enjoy doing things with people I have just met.",
                "validation": {
                    "required": true
                },
                "key": "Q3",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "4. I suggest activities for me and my friends to do.",
                "validation": {
                    "required": true
                },
                "key": "Q4",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "5. I make decisions firmly and without hesitation.",
                "validation": {
                    "required": true
                },
                "key": "Q5",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "6. After making a decision, I will wonder if I have made the wrong choice.",
                "validation": {
                    "required": true
                },
                "key": "Q6",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "7. Based on the last two weeks, I would say I care deeply about how my loved ones think of me.",
                "validation": {
                    "required": true
                },
                "key": "Q7",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "8. I go out with friends on a weekly basis.",
                "validation": {
                    "required": true
                },
                "key": "Q8",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "9. When I decide to do something, I am able to make an effort easily.",
                "validation": {
                    "required": true
                },
                "key": "Q9",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "10. I don''t like to laze around.",
                "validation": {
                    "required": true
                },
                "key": "Q10",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "11. Choose quite true for this question please.",
                "validation": {
                    "required": true
                },
                "key": "attentionCheck",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "12. I get things done when they need to be done, without requiring reminders from others.",
                "validation": {
                    "required": true
                },
                "key": "Q11",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "13. When I decide to do something, I am motivated to see it through to the end.",
                "validation": {
                    "required": true
                },
                "key": "Q12",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "14. I feel awful if I say something insensitive",
                "validation": {
                    "required": true
                },
                "key": "Q13",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "15. I start conversations without being prompted.",
                "validation": {
                    "required": true
                },
                "key": "Q14",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "16. When I have something I need to do, I do it straightaway so it is out of the way.",
                "validation": {
                    "required": true
                },
                "key": "Q15",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "17. I feel bad when I hear an acquaintance has an accident or illness.",
                "validation": {
                    "required": true
                },
                "key": "Q16",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "18. I enjoy choosing what to do from a range of activities.",
                "validation": {
                    "required": true
                },
                "key": "Q17",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "19. If I realise I have been unpleasant to someone, I will feel terribly guilty afterwards.",
                "validation": {
                    "required": true
                },
                "key": "Q18",
                "multipleChoiceOptions": [
                    {
                        "label": "Completely UNTRUE",
                        "value": "Completely UNTRUE"
                    },
                    {
                        "label": "Mostly untrue",
                        "value": "Mostly untrue"
                    },
                    {
                        "label": "Neither true nor untrue",
                        "value": "Neither true nor untrue"
                    },
                    {
                        "label": "Quite true",
                        "value": "Quite true"
                    },
                    {
                        "label": "Completely TRUE",
                        "value": "Completely TRUE"
                    }
                ]
            }
        ]
    }'
),
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Everyday Activities Post Test",
    "",
    "",
    '{
        "title": "Questionnaire",
        "questions": [
            {
                "questionType": "displayText",
                "title": "<p>We are still in the development stages of this research study. The goal of the study is to understand how and why people fill their time. Are people driven by pleasure? By obligation? A bit of both? These are difficult things to measure because different people enjoy different things and have different sets of obligations. Any feedback you can provide on this pilot study will be really helpful to us as we fine-tune our approach to understanding this.</p> <p> Please see below questions for some specific areas where we would like your feedback:</p>"
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "Q1",
                "title": "1. We understand that the current pandemic has more or less affected what you do in your everyday life. How much do you think that affected your ability to complete this task? For example, did you have trouble picturing yourself doing a specific activity that you have not been able to do due to the pandemic (e.g. chat with a neighbor)?",
                "textContent": "Please rate on a scale of 1-10 how much the current life situation affected your ability to complete this this task:",
                "multipleChoiceOptions": [
                    {
                        "label": "1 - Not at all: I had no difficulty picturing myself doing most of these activities",
                        "value": "1"
                    },
                    {
                        "label": "2",
                        "value": "2"
                    },
                    {
                        "label": "3",
                        "value": "3"
                    },
                    {
                        "label": "4",
                        "value": "4"
                    },
                    {
                        "label": "5",
                        "value": "5"
                    },
                    {
                        "label": "6",
                        "value": "6"
                    },
                    {
                        "label": "7",
                        "value": "7"
                    },
                    {
                        "label": "8",
                        "value": "8"
                    },
                    {
                        "label": "9",
                        "value": "9"
                    },
                    {
                        "label": "10 - Very much so: I could not picture doing most of the activities given the present circumstances",
                        "value": "10"
                    }
                ]
            },
            {
                "questionType": "freeTextResponse",
                "textContent": "If you have any specific comments, please include them here [OPTIONAL]",
                "key": "Q1_comment"
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "Q2",
                "title": "2. Our goal was to ask you about activities that are part of everyday life, but that difers from person to person. Were most of the activities listed part of your usual (i.e. pre-pandemic) everyday life? ",
                "textContent": "Please respond using the 1-10 scale:",
                "multipleChoiceOptions": [
                    {
                        "label": "1 - Most of the activities are foreign to me",
                        "value": "1"
                    },
                    {
                        "label": "2",
                        "value": "2"
                    },
                    {
                        "label": "3",
                        "value": "3"
                    },
                    {
                        "label": "4",
                        "value": "4"
                    },
                    {
                        "label": "5",
                        "value": "5"
                    },
                    {
                        "label": "6",
                        "value": "6"
                    },
                    {
                        "label": "7",
                        "value": "7"
                    },
                    {
                        "label": "8",
                        "value": "8"
                    },
                    {
                        "label": "9",
                        "value": "9"
                    },
                    {
                        "label": "10 - Most of the activities do feature in my everyday life",
                        "value": "10"
                    }
                ]
            },
            {
                "questionType": "freeTextResponse",
                "textContent": "Any specific comments? (e.g. did any of the activities stand out as NOT being usual activities for you?)",
                "key": "Q2_comment"
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "Q3",
                "title": "3. In one part of this task, you were asked to choose between two activities, but we understand these were ‘pretend’ choices.",
                "textContent": "Please rate on a scale of 1-10 how much you think your choices generally reflected how you would choose in real life:",
                "multipleChoiceOptions": [
                    {
                        "label": "1 -  Not at all reflective – I made random choices in the game",
                        "value": "1"
                    },
                    {
                        "label": "2",
                        "value": "2"
                    },
                    {
                        "label": "3",
                        "value": "3"
                    },
                    {
                        "label": "4",
                        "value": "4"
                    },
                    {
                        "label": "5",
                        "value": "5"
                    },
                    {
                        "label": "6",
                        "value": "6"
                    },
                    {
                        "label": "7",
                        "value": "7"
                    },
                    {
                        "label": "8",
                        "value": "8"
                    },
                    {
                        "label": "9",
                        "value": "9"
                    },
                    {
                        "label": "10 - Exactly as I would choose in real life",
                        "value": "10"
                    }
                ]
            },
            {
                "questionType": "freeTextResponse",
                "textContent": "Additional comments?",
                "key": "Q3_comment"
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "freeTextResponse",
                "title": "4. Do you have any final comments or suggestions about the task? Any specific part of it that was confusing? [OPTIONAL]",
                "key": "Final_comment"
            }
        ]
    }'
),
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Demographics Questionnaire With SES",
    "",
    "",
    '{
        "title": "Questionnaire",
        "questions": [
            {
                "questionType": "input",
                "title": "What is your age (in years)?",
                "validation": {
                    "required": true,
                    "isNumeric": true,
                    "min": 18
                },
                "key": "age"
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "What sex were you assigned at birth?",
                "validation": {
                    "required": true
                },
                "key": "sex",
                "multipleChoiceOptions": [{
                        "label": "Female",
                        "value": "female"
                    },
                    {
                        "label": "Male",
                        "value": "male"
                    }
                ]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "How do you describe yourself?",
                "key": "selfIdentification",
                "multipleChoiceOptions": [{
                        "label": "Female",
                        "value": "female"
                    },
                    {
                        "label": "Male",
                        "value": "male"
                    },
                    {
                        "label": "Transgender",
                        "value": "transgender"
                    },
                    {
                        "label": "Do not identify as female, male, or transgender",
                        "value": "none"
                    }
                ],
                "validation": {
                    "required": true
                }
            },
            {
                "questionType": "input",
                "key": "yearsOfEducation",
                "title": "How many years of education do you have (completing high school equals 12 years)?",
                "validation": {
                    "isNumeric": true,
                    "required": true
                }
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "hasNeuroConditions",
                "title": "Do you have any of the following neurological conditions: neurodegenerative disorder (e.g. Parkinson''s or Alzheimer''s), seizures/epilepsy, brain tumor, stroke?",
                "multipleChoiceOptions": [{
                        "label": "Yes",
                        "value": "yes"
                    },
                    {
                        "label": "No",
                        "value": "no"
                    }
                ],
                "validation": {
                    "required": true
                }
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "hasPsychConditions",
                "title": "Do you have any of the following psychiatric conditions: currently active major depression, bipolar disorder, schizophrenia?",
                "multipleChoiceOptions": [{
                        "label": "Yes",
                        "value": "yes"
                    },
                    {
                        "label": "No",
                        "value": "no"
                    }
                ],
                "validation": {
                    "required": true
                }
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "currentEmploymentStatus",
                "title": "What is your current employment status?",
                "multipleChoiceOptions": [{
                        "label": "Employed full-time",
                        "value": "employed full-time"
                    },
                    {
                        "label": "Employed part-time",
                        "value": "employed part-time"
                    },
                    {
                        "label": "Self-employed",
                        "value": "self-employed"
                    },
                    {
                        "label": "Housemaker",
                        "value": "housemaker"
                    },
                    {
                        "label": "Retired",
                        "value": "retired"
                    },
                    {
                        "label": "Student",
                        "value": "student"
                    },
                    {
                        "label": "Unemployed",
                        "value": "unemployed"
                    }
                ],
                "validation": {
                    "required": true
                }
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "householdIncome",
                "title": "What is your household income?",
                "multipleChoiceOptions": [
                    {
                        "label": "Less than $20,000",
                        "value": "less than $20,000"
                    },
                    {
                        "label": "$20,000-$34,999",
                        "value": "$20,000-$34,999"
                    },
                    {
                        "label": "$35,000-$49,999",
                        "value": "$35,000-$49,999"
                    },
                    {
                        "label": "$50,000-$74,999",
                        "value": "$50,000-$74,999"
                    },
                    {
                        "label": "$75,000-$99,999 ",
                        "value": "$75,000-$99,999 "
                    },
                    {
                        "label": "Over $100,000",
                        "value": "over $100,000"
                    }
                ],
                "validation": {
                    "required": true
                }
            },
            {
                "questionType": "multipleChoiceSelect",
                "key": "socialClass",
                "title": "To which social class would you say you belong?",
                "multipleChoiceOptions": [
                    {
                        "label": "Below the poverty level",
                        "value": "below the poverty level"
                    },
                    {
                        "label": "Lower middle class",
                        "value": "lower middle class"
                    },
                    {
                        "label": "Middle class",
                        "value": "middle class"
                    },
                    {
                        "label": "Upper middle class",
                        "value": "upper middle class"
                    },
                    {
                        "label": "Upper class",
                        "value": "upper class"
                    }
                ],
                "validation": {
                    "required": true
                }
            }
        ]
    }'
);