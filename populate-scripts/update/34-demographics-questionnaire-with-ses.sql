
-- DEMOGRAPHICS QUESTIONNAIRE WITH SES
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "[ARCHIVED] Demographics Questionnaire With SES",
    description = "This should no longer be used.",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
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
                            "options": [{
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
                            "options": [{
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
                            "options": [{
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
                            "options": [{
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
                            "options": [{
                                "label": "Employed Full-time (30+ hours a week)",
                                "value": "Full-time"
                            },
                            {
                                "label": "Employed Part-time",
                                "value": "Part-time"
                            },
                            {
                                "label": "Unemployed",
                                "value": "Unemployed"
                            },
                            {
                                "label": "Disability Leave",
                                "value": "Disability Leave"
                            },
                            {
                                "label": "Homemaker",
                                "value": "Homemaker"
                            },
                            {
                                "label": "Student",
                                "value": "Student"
                            },
                            {
                                "label": "Volunteer",
                                "value": "Volunteer"
                            },
                            {
                                "label": "Retired",
                                "value": "Retired"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your best estimate of the total household income received by all household members, from all sources, before taxes and deductions, in the past 12 months?",
                            "key": "householdIncome",
                            "validation": {
                                "required": true
                            },
                            "options": [{
                                "label": "Less than $20,000",
                                "value": "Less than $20,000"
                            },
                            {
                                "label": "$20,000 or more, but less than $50,000",
                                "value": "$20,000 or more, but less than $50,000"
                            },
                            {
                                "label": "$50,000 or more, but less than $100,000",
                                "value": "$50,000 or more, but less than $100,000"
                            },
                            {
                                "label": "$150,000 or more",
                                "value": "$150,000 or more"
                            },
                            {
                                "label": "Do not know",
                                "value": "Do not know"
                            },
                            {
                                "label": "Do not wish to answer",
                                "value": "Do not wish to answer"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your current marital/partner status?",
                            "key": "marital",
                            "validation": {
                                "required": true
                            },
                            "options": [{
                                "label": "Single, never married, or never lived with a partner",
                                "value": "Single, never married, or never lived with a partner"
                            },
                            {
                                "label": "Married/Living with a partner in a domestic relationship",
                                "value": "Married/Living with a partner in a domestic relationship"
                            },
                            {
                                "label": "Widowed",
                                "value": "Widowed"
                            },
                            {
                                "label": "Divorced/Separated",
                                "value": "Divorced/Separated"
                            },
                            {
                                "label": "Do not wish to disclose",
                                "value": "Do not wish to disclose"
                            }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Which best describes your living situation?",
                            "key": "living",
                            "validation": {
                                "required": true
                            },
                            "options": [{
                                "label": "Living alone",
                                "value": "Living alone"
                            },
                            {
                                "label": "Living with spouse/partner/significant other",
                                "value": "Living with spouse/partner/significant other"
                            },
                            {
                                "label": "Living with adult child/children",
                                "value": "Living with adult child/children"
                            },
                            {
                                "label": "Living with other family",
                                "value": "Living with other family"
                            },
                            {
                                "label": "Living with paid in-home care provider/aide",
                                "value": "Living with paid in-home care provider/aide"
                            },
                            {
                                "label": "Living in assisted living facility",
                                "value": "Living in assisted living facility"
                            },
                            {
                                "label": "Living in nursing home",
                                "value": "Living in nursing home"
                            },
                            {
                                "label": "Other",
                                "value": "Other"
                            }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 34;