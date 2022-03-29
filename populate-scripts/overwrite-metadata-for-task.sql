UPDATE study_tasks SET
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
                    "questions": [
                        {
                            "questionType": "displayText",
                            "title": "The following questions are general questions about you. If you don''t have Parkinson''s disease (PD), not all of them will apply to you, so select the \\"I don''t have Parkinson''s disease\\" option."
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": "Do you have a diagnosis of Parkinson’s disease given to you by a doctor (e.g. family doctor or neurologist)?",
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "vertical",
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "No, but I think I have Parkinson''s disease",
                                    "value": "No, but I think I have Parkinson''s disease"
                                }
                            ],
                            "key": "havePD"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you currently take medication for Parkinson''s disease?",
                            "validation": {
                                "required": true
                            },
                            "key": "takePDMed",
                            "multipleChoiceOptions": [
                                {
                                    "label": "I don''t have Parkinson''s disease",
                                    "value": "I don''t have Parkinson''s disease"
                                },
                                {
                                    "label": "I have PD but don''t take medications for it",
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": "I have PD and I take medications for it",
                                    "value": "I have PD and I take medications for it"
                                }
                            ]
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "displayText",
                            "title": "If you answered previously that you do take Parkinson’s disease medication, how long ago did you take it?"
                        },
                        {
                            "questionType": "input",
                            "textContent": "If you answered that you don''t take any Parkinson’s medication in the last question, please write \\"0\\".",
                            "key": "lastDoseHour",
                            "label": "Hours",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 24,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "input",
                            "key": "lastDoseMinute",
                            "label": "Minutes",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 60,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "divider"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you feel ON (i.e. can feel that the PD medications are taking effect) or OFF (i.e. medications are not currently taking effect)?",
                            "key": "onOffMed",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "I don''t have Parkinson''s disease",
                                    "value": "I don''t have Parkinson''s disease"
                                },
                                {
                                    "label": "I have PD but don''t take medications for it",
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": "I feel ON",
                                    "value": "I feel ON"
                                },
                                {
                                    "label": "I feel OFF",
                                    "value": "I feel OFF"
                                },
                                {
                                    "label": "I can not tell the difference",
                                    "value": "I can not tell the difference"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have a diagnosis of dementia or Alzheimer''s disease given to you by a doctor?",
                            "key": "diagnosisPD",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "No, but I think I have dementia",
                                    "value": "No, but I think I have dementia"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have a diagnosis of Mild Cognitive Impairment (MCI) given to you by a doctor?",
                            "key": "diagnosisMCI",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "No, but I think I have cognitive impairment",
                                    "value": "No, but I think I have cognitive impairment"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have a family history of Parkinson’s disease?",
                            "key": "familyHistory",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes, my biological mother or father has/had Parkinson’s disease",
                                    "value": "Yes, biological mother or father"
                                },
                                {
                                    "label": "Yes, one of my siblings has/had Parkinson’s disease",
                                    "value": "Yes, siblings"
                                },
                                {
                                    "label": "Yes, one of my children has/had Parkinson’s disease",
                                    "value": "Yes, children"
                                },
                                {
                                    "label": "Yes, an uncle/aunt/cousin or other blood relative has/had Parkinson’s disease",
                                    "value": "Yes, relative"
                                },
                                {
                                    "label": "No, no family history",
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "input",
                            "title": "What is your current age?",
                            "key": "age",
                            "label": "Age",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 120,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What sex were you assigned at birth?",
                            "key": "sex",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Female",
                                    "value": "Female"
                                },
                                {
                                    "label": "Male",
                                    "value": "Male"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "How do you describe yourself?",
                            "key": "gender",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Female",
                                    "value": "Female"
                                },
                                {
                                    "label": "Male",
                                    "value": "Male"
                                },
                                {
                                    "label": "Transgender",
                                    "value": "Transgender"
                                },
                                {
                                    "label": "Do not identify as female, male, or transgender",
                                    "value": "Do not identify as female, male, or transgender"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is the highest level of education you have completed?",
                            "key": "education",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "None",
                                    "value": "None"
                                },
                                {
                                    "label": "Grade (Elementary) school",
                                    "value": "Grade (Elementary) school"
                                },
                                {
                                    "label": "High school",
                                    "value": "High school"
                                },
                                {
                                    "label": "Trade Certificate/Diploma",
                                    "value": "Trade Certificate/Diploma"
                                },
                                {
                                    "label": "Non-University Diploma",
                                    "value": "Non-University Diploma"
                                },
                                {
                                    "label": "Bachelor''s Degree",
                                    "value": "Bachelor''s Degree"
                                },
                                {
                                    "label": "Postgraduate Degree",
                                    "value": "Postgraduate Degree"
                                }
                            ]
                        },
                        {
                            "questionType": "input",
                            "title": "How many years of education did you complete?",
                            "textContent": "E.g. completed up to grade 9 = 9 years; completed grade 12 and 3 years of university = 15 years",
                            "key": "educationYears",
                            "label": "Years of education",
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 40,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "What is your handedness?",
                            "key": "handedness",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [{
                                "label": "Right-handed",
                                "value": "Right"
                            },
                            {
                                "label": "Left-handed",
                                "value": "Left"
                            },
                            {
                                "label": "Ambidextrous",
                                "value": "Ambidextrous"
                            }]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "We expect to reach people from many different cultural and racial backgrounds with this internet study. To which group do you belong? (Select all that apply)",
                            "key": "background",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "White / Caucasian",
                                    "value": "White/Caucasian"
                                },
                                {
                                    "label": "French Canadian",
                                    "value": "French Canadian"
                                },
                                {
                                    "label": "First Nations",
                                    "value": "First Nations"
                                },
                                {
                                    "label": "Hispanic or Latino",
                                    "value": "Hispanic or Latino"
                                },
                                {
                                    "label": "African / Carribean / Afro American",
                                    "value": "African/Carribean/Afro American"
                                },
                                {
                                    "label": "North African",
                                    "value": "North African"
                                },
                                {
                                    "label": "Middle Eastern",
                                    "value": "Middle Eastern"
                                },
                                {
                                    "label": "Chinese",
                                    "value": "Chinese"
                                },
                                {
                                    "label": "South Asian (E.g. Indian, Pakistani, Sri Lankan)",
                                    "value": "South Asian"
                                },
                                {
                                    "label": "Southeast Asian (E.g. Filipino, Cambodian, Indonesian, Laotian, Vietnamese)",
                                    "value": "Southeast Asian"
                                },
                                {
                                    "label": "Japanese",
                                    "value": "Japanese"
                                },
                                {
                                    "label": "Korean",
                                    "value": "Korean"
                                },
                                {
                                    "label": "Other",
                                    "value": "Other"
                                },
                                {
                                    "label": "Don''t know",
                                    "value": "Don''t know"
                                },
                                {
                                    "label": "Prefer not to answer",
                                    "value": "Prefer not to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Which of the following languages do you consider yourself fluent in (can read and speak)? Select all that apply.",
                            "key": "fluentLan",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "multipleChoiceOptions": [
                                {
                                    "label": "English",
                                    "value": "English"
                                },
                                {
                                    "label": "French",
                                    "value": "French"
                                },
                                {
                                    "label": "Neither",
                                    "value": "Neither"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you have color-blindness?",
                            "key": "colorBlindnss",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "Unsure",
                                    "value": "Unsure"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Do you feel that your memory and thinking have gotten worse?",
                            "textContent": "If you have Parkinson''s disease, consider the change since your diagnosis, or, if you don''t have Parkinson''s disease, consider the change in the last few years.",
                            "key": "memory",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                },
                                {
                                    "label": "Not sure",
                                    "value": "Not sure"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Would you like to be contacted by email about future opportunities to participate in online research?",
                            "key": "futureOnlineResearch",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "title": "If you answered yes, and would also be willing to receive a phone call, please include it here:",
                            "key": "futureOnlineResearchPhone",
                            "label": "eg. 123-456-7890",
                            "validation": {
                                "required": false
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Would you like to receive updates about the findings from this study?",
                            "key": "updateFindings",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Yes",
                                    "value": "Yes"
                                },
                                {
                                    "label": "No",
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": "Please indicate which site of the Canadian Open Parkinson''s Network (C-OPN) contacted you:",
                            "key": "siteCOPN",
                            "validation": {
                                "required": true
                            },
                            "multipleChoiceOptions": [
                                {
                                    "label": "Vancouver",
                                    "value": "Vancouver"
                                },
                                {
                                    "label": "Calgary",
                                    "value": "Calgary"
                                },
                                {
                                    "label": "Edmonton",
                                    "value": "Edmonton"
                                },
                                {
                                    "label": "Toronto",
                                    "value": "Toronto"
                                },
                                {
                                    "label": "Ottawa",
                                    "value": "Ottawa"
                                },
                                {
                                    "label": "Montreal",
                                    "value": "Montreal"
                                },
                                {
                                    "label": "Don''t know",
                                    "value": "Don''t know"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE study_id = 40 AND task_id = 43 AND task_order = 1;