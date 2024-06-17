
-- DEMOGRAPHICS QUESTIONNAIRE
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "[ARCHIVED] Demographics Questionnaire",
    description = "Demographics questionnaire without SES questions. This should no longer be used.",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title":"Questionnaire",
                    "questions": [
                        {
                            "questionType":"input",
                            "title":"What is your age (in years)?",
                            "validation":{
                                "required":true,
                                "isNumeric":true,
                                "min":18
                            },
                            "key":"age"
                        },
                        {
                            "questionType":"multipleChoiceSelect",
                            "allowMultipleSelections": true,
                            "title":"What sex were you assigned at birth?",
                            "validation":{
                                "required":true
                            },
                            "key":"sex",
                            "options":[
                                {
                                    "label":"Female",
                                    "value":"female"
                                },
                                {
                                    "label":"Male",
                                    "value":"male"
                                }
                            ]
                        },
                        {
                            "questionType":"multipleChoiceSelect",
                            "title":"How do you describe yourself?",
                            "key":"selfIdentification",
                            "options":[
                                {
                                "label":"Female",
                                "value":"female"
                                },
                                {
                                "label":"Male",
                                "value":"male"
                                },
                                {
                                "label":"Transgender",
                                "value":"transgender"
                                },
                                {
                                "label":"Do not identify as female, male, or transgender",
                                "value":"none"
                                }
                            ],
                            "validation":{
                                "required":true
                            }
                        },
                        {
                            "questionType":"input",
                            "key":"yearsOfEducation",
                            "title":"How many years of education do you have (completing high school equals 12 years)?",
                            "validation":{
                                "isNumeric":true,
                                "required":true
                            }
                        },
                        {
                            "questionType":"multipleChoiceSelect",
                            "key":"hasNeuroConditions",
                            "title":"Do you have any of the following neurological conditions: neurodegenerative disorder (e.g. Parkinson''s or Alzheimer''s), seizures/epilepsy, brain tumor, stroke?",
                            "options":[
                                {
                                "label":"Yes",
                                "value":"yes"
                                },
                                {
                                "label":"No",
                                "value":"no"
                                }
                            ],
                            "validation":{
                                "required":true
                            }
                        },
                        {
                            "questionType":"multipleChoiceSelect",
                            "key":"hasPsychConditions",
                            "title":"Do you have any of the following psychiatric conditions: currently active major depression, bipolar disorder, schizophrenia?",
                            "options":[
                                {
                                "label":"Yes",
                                "value":"yes"
                                },
                                {
                                "label":"No",
                                "value":"no"
                                }
                            ],
                            "validation":{
                                "required":true
                            }
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 11;