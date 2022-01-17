-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Stress Study Questionnaire",
    "",
    "",
    '{
        "title": "Stress Study Questionnaire",
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
                        "label": "Nonbinary",
                        "value": "Nonbinary"
                    },
                    {
                        "label": "Do not identify as female, male, or Nonbinary",
                        "value": "none"
                    }
                ],
                "validation": {
                    "required": true
                }
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "Do you consider yourself to be:",
                "key": "sexuality",
                "validation": {
                "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Heterosexual (sexual relations with people of the opposite sex)",
                    "value": "Heterosexual"
                },
                {
                    "label": "Homosexual, that is lesbian or gay (sexual relations with people of your own sex)",
                    "value": "Homosexual"
                },
                {
                    "label": "Bisexual (sexual relations with people of both sexes)",
                    "value": "Bisexual"
                },
                {
                    "label": "Other",
                    "value": "Other"
                },
                {
                    "label": "Do not wish to answer",
                    "value": "Do not wish to answer"
                }
                ]
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
                "key": "currentEmploymentStatus",
                "title": "What is your current employment status?",
                "multipleChoiceOptions": [{
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
                "multipleChoiceOptions": [{
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
                "multipleChoiceOptions": [{
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
                "multipleChoiceOptions": [{
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
            },
            {
                "questionType": "displayText",
                "title": "The following questions are about your health. By health, we mean not only the absence of disease or injury, but also physical, mental, and social well-being."
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "Physical Health"
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "Have you ever been diagnosed with: (Please check all that apply)",
                "key": "physicalHealthDiagnosis",
                "validation": {
                    "required": true
                },
                "allowMultipleSelections": true,
                "multipleChoiceOptions": [{
                    "label": "Cancer",
                    "value": "Cancer"
                },
                {
                    "label": "Myocardial infarction or angina (heart attack)",
                    "value": "Myocardial infarction or angina"
                },
                {
                    "label": "Transient ischemic attack (TIA)",
                    "value": "TIA"
                },
                {
                    "label": "Cerebrovascular accident (stroke)",
                    "value": "Stroke"
                },
                {
                    "label": "Epilepsy or seizures",
                    "value": "Epilepsy or seizures"
                },
                {
                    "label": "Major head injury/trauma with lasting consequences",
                    "value": "Major head injury/trauma with lasting consequences"
                },
                {
                    "label": "Respiratory problems",
                    "value": "Respiratory problems"
                },
                {
                    "label": "Lung disease",
                    "value": "Lung disease"
                },
                {
                    "label": "Anemia or other blood disease",
                    "value": "Anemia or other blood disease"
                },
                {
                    "label": "Hypertension (high blood pressure)",
                    "value": "Hypertension"
                },
                {
                    "label": "Hypotension (low blood pressure)",
                    "value": "Hypotension"
                },
                {
                    "label": "Diabetes",
                    "value": "Diabetes"
                },
                {
                    "label": "Hypercholesterolemia (high cholesterol)",
                    "value": "Hypercholesterolemia"
                },
                {
                    "label": "Ulcers or stomach disease",
                    "value": "Ulcers or stomach disease"
                },
                {
                    "label": "Inflammatory bowel disease (IBD)",
                    "value": "IBD"
                },
                {
                    "label": "Liver disease",
                    "value": "Liver disease"
                },
                {
                    "label": "Kidney disease",
                    "value": "Kidney disease"
                },
                {
                    "label": "Osteoarthritis (degenerative)",
                    "value": "Osteoarthritis (degenerative)"
                },
                {
                    "label": "Rheumatoid Arthritis (i.e. autoimmune arthritis)",
                    "value": "Rheumatoid Arthritis"
                },
                {
                    "label": "Other",
                    "value": "Other"
                },
                {
                    "label": "None of these",
                    "value": "None of these"
                }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "Mental Health"
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "Have you ever been diagnosed with: (Please check all that apply)",
                "key": "mentalHealthDiagnosis",
                "validation": {
                    "required": true
                },
                "allowMultipleSelections": true,
                "multipleChoiceOptions": [{
                    "label": "Depression - currently under treatment",
                    "value": "Depression - currently under treatment"
                },
                {
                    "label": "Depression - but not currently receiving treatment",
                    "value": "Depression - but not currently receiving treatment"
                },
                {
                    "label": "Anxiety - currently under treatment",
                    "value": "Anxiety - currently under treatment"
                },
                {
                    "label": "Anxiety - but not currently receiving treatment",
                    "value": "Anxiety - but not currently receiving treatment"
                },
                {
                    "label": "Obsessive Compulsive Disorder",
                    "value": "Obsessive Compulsive Disorder"
                },
                {
                    "label": "Bipolar Disorder",
                    "value": "Bipolar Disorder"
                },
                {
                    "label": "Schizophrenia",
                    "value": "Schizophrenia"
                },
                {
                    "label": "Other",
                    "value": "Other"
                },
                {
                    "label": "No history of mental health problems",
                    "value": "No history of mental health problems"
                }
                ]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "Is your eyesight (including using glasses or corrective lenses if you use them):",
                "key": "eyesight",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Excellent",
                    "value": "Excellent"
                },
                {
                    "label": "Good",
                    "value": "Good"
                },
                {
                    "label": "Poor",
                    "value": "Poor"
                }
                ]
            },
            {
                "questionType": "radiobuttons",
                "title": "Do you have color-blindness?",
                "key": "color-blindness",
                "validation": {
                    "required": true
                },
                "radiobuttonPresentation": "vertical",
                "multipleChoiceOptions": [{
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
                "title": "In the past 12 months, how many times have you been injured in a fall that limited your normal activities?",
                "key": "injury",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "1",
                    "value": "1"
                },
                {
                    "label": "2 to 5",
                    "value": "2 to 5"
                },
                {
                    "label": "6 to 10",
                    "value": "6 to 10"
                },
                {
                    "label": "More than 10",
                    "value": "More than 10"
                }
                ]
            },
            {
                "questionType": "displayText",
                "title": "Habits"
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "Do you currently use any of the following? (check all that apply)",
                "key": "substanceUse",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Alcohol",
                    "value": "Alcohol"
                },
                {
                    "label": "Cigarettes",
                    "value": "Cigarettes"
                },
                {
                    "label": "Other tobacco products",
                    "value": "Other tobacco products"
                },
                {
                    "label": "Recreational drugs",
                    "value": "Recreational drugs"
                },
                {
                    "label": "Cannabis",
                    "value": "Cannabis"
                },
                {
                    "label": "None of the above",
                    "value": "None of the above"
                }
                ]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "Have you smoked at least 100 cigarettes in your life?",
                "key": "cigarettes",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Yes",
                    "value": "Yes"
                },
                {
                    "label": "No",
                    "value": "No"
                },
                {
                    "label": "Don''t know",
                    "value": "Don''t know"
                }]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "What is your current smoking status?",
                "key": "smoking",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Current smoker: 20 or more cigarettes per day",
                    "value": "Current smoker: 20 or more cigarettes per day"
                },
                {
                    "label": "Current smoker: 10-19 cigarettes per day",
                    "value": "Current smoker: 10-19 cigarettes per day"
                },
                {
                    "label": "Current smoker: 0-9 cigarettes per day",
                    "value": "Current smoker: 0-9 cigarettes per day"
                },
                {
                    "label": "Quit in last year",
                    "value": "Quit in last year"
                },
                {
                    "label": "Quit in last 5 years",
                    "value": "Quit in last 5 years"
                },
                {
                    "label": "Quit in last 15 years",
                    "value": "Quit in last 15 years"
                },
                {
                    "label": "Quit in last 15 years",
                    "value": "Quit in last 15 years"
                },
                {
                    "label": "Quit >25 years ago",
                    "value": "Quit >25 years ago"
                }
                ]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "Have you ever drank alcohol?",
                "key": "alcohol",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Yes",
                    "value": "Yes"
                },
                {
                    "label": "No",
                    "value": "No"
                },
                {
                    "label": "Do not wish to answer",
                    "value": "Do not wish to answer"
                }]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "About how often during the past 12 months did you drink alcohol?",
                "key": "alcoholUse",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Almost every day (6-7 times a week)",
                    "value": "Almost every day"
                },
                {
                    "label": "4-5 times a week",
                    "value": "4-5 times a week"
                },
                {
                    "label": "2-3 times a week",
                    "value": "2-3 times a week"
                },
                {
                    "label": "Once a week",
                    "value": "Once a week"
                },
                {
                    "label": "2-3 times a month",
                    "value": "2-3 times a month"
                },
                {
                    "label": "About once a month",
                    "value": "Once a month"
                },
                {
                    "label": "Less than once a month",
                    "value": "Less than once a month"
                },
                {
                    "label": "Never",
                    "value": "Never"
                },
                {
                    "label": "Do not wish to answer",
                    "value": "Do not wish to answer"
                }
                ]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "How much time do you spend engaging in mental exercise (e.g. playing board games, cards, crossword puzzles, jigsaw puzzles, sudoku, playing a musical instrument)",
                "key": "mentalExercise",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Every day",
                    "value": "Every day"
                },
                {
                    "label": "Several times a week",
                    "value": "Several times a week"
                },
                {
                    "label": "Several times a month",
                    "value": "Several times a month"
                },
                {
                    "label": "Several times a year",
                    "value": "Several times a year"
                },
                {
                    "label": "Once a year or less",
                    "value": "Once a year or less"
                }
                ]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "How often do you exercise?",
                "key": "exercise",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Less than 1 time per week",
                    "value": "Less than 1 time per week"
                },
                {
                    "label": "1 to 2 days per week",
                    "value": "1 to 2 days per week"
                },
                {
                    "label": "3 to 5 days per week",
                    "value": "3 to 5 days per week"
                },
                {
                    "label": "6 to 7 days per week",
                    "value": "6 to 7 days per week"
                }
                ]
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "How long is one exercise session approximately?",
                "key": "exerciseSession",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "Less than 30 minutes",
                    "value": "Less than 30 minutes"
                },
                {
                    "label": "30 to 60 minutes",
                    "value": "30 to 60 minutes"
                },
                {
                    "label": "1 to 2 hours",
                    "value": "1 to 2 hours"
                },
                {
                    "label": "More than 2 hours",
                    "value": "More than 2 hours"
                }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "Sleep"
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "How often is your sleep restless?",
                "key": "restlessSleep",
                "validation": {
                    "required": true
                },
                "multipleChoiceOptions": [{
                    "label": "All of the time (5-7 days per week)",
                    "value": "All of the time"
                },
                {
                    "label": "Occasionally (3-4 days per week)",
                    "value": "Occasionally"
                },
                {
                    "label": "Some of the time (1-2 days per week)",
                    "value": "Some of the time"
                },
                {
                    "label": "Rarely or never (less than 1 day per week)",
                    "value": "Rarely or never"
                }
                ]
            },
            {
                "questionType": "radiobuttons",
                "title": "Have you ever been told, or suspected yourself, that you seem to \\"act out your dreams\\" while asleep (for example, punching, flailing your arms in the air, making running movements, etc.)?",
                "key": "actOutSleep",
                "validation": {
                    "required": true
                },
                "radiobuttonPresentation": "vertical",
                "multipleChoiceOptions": [{
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
                "title": "If you answered previously that you do take Parkinson''s disease medication, how long ago did you take it?"
            },
            {
                "questionType": "input",
                "textContent": "If you answered that you don''t take any Parkinson''s medication in the last question, please write \\"0\\".",
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
            }
        ]
    }'
);
