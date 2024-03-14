
-- PD-Percep Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "PD-Percep Questionnaire",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Experience With Parkinson''s Disease",
                        "fr": ""
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "Thank you for taking part in this survey. The purpose of this survey is to better understand your experience with Parkinson''s disease (PD), what you know about it, and what you want to know about it. This survey will ask you about your Parkinson''s symptoms and how you feel the disease affects your thinking and mood. You will also be asked about what you know about Parkinson''s disease, how you learned it, and what you feel others know about it.",
                                "fr": ""
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText1_1",
                            "title": {
                                "en": "Throughout this survey, we will be making references to your \\"<b>health care team</b>.\\" Your <b>health care team</b> can include any of the health professionals that assist in the management of your Parkinson''s disease, such as a neurologist, nurses, occupational therapist, social workers, primary care physicians, etc.",
                                "fr": ""
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "1-diagnosed-with-parkinsons",
                            "allowMultipleSelections": false,
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                }
                            ],
                            "textContent": {
                                "en": "Have you been diagnosed with Parkinson''s disease?",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "2-parkinsons-currently-treated-by",
                            "allowMultipleSelections": true,
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "My Parkinson''s disease is currently being treated by a... (Please select all that apply)",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Movement Disorder Specialist",
                                        "fr": ""
                                    },
                                    "value": "movement-disorder-specialist"
                                },
                                {
                                    "label": {
                                        "en": "General Neurologist",
                                        "fr": ""
                                    },
                                    "value": "general-neurologist"
                                },
                                {
                                    "label": {
                                        "en": "Family Doctor/Primary Care Doctor",
                                        "fr": ""
                                    },
                                    "value": "family-doctor-primary-care-doctor"
                                },
                                {
                                    "label": {
                                        "en": "Nurse Practitioner/Physician Assistant",
                                        "fr": ""
                                    },
                                    "value": "nurse-practitioner-physician-assistant"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "4-movement-bodily-function-symptoms-experienced",
                            "allowMultipleSelections": true,
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Which of the following <b>movement and bodily function</b> Parkinson''s disease symptoms do you currently experience? Please select all that apply.",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["none-of-the-above", "prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["none-of-the-above", "prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Slowness of movement",
                                        "fr": ""
                                    },
                                    "value": "slowness-of-movement"
                                },
                                {
                                    "label": {
                                        "en": "Speech difficulty (e.g. low voice, slurring, mumbling)",
                                        "fr": ""
                                    },
                                    "value": "speech-difficulty"
                                },
                                {
                                    "label": {
                                        "en": "Tremors",
                                        "fr": ""
                                    },
                                    "value": "tremors"
                                },
                                {
                                    "label": {
                                        "en": "Loss of dexterity (e.g. difficulty with things like buttons, zippers, brushing teeth)",
                                        "fr": ""
                                    },
                                    "value": "loss-of-dexterity"
                                },
                                {
                                    "label": {
                                        "en": "Imbalance or tendency to fall",
                                        "fr": ""
                                    },
                                    "value": "imbalance-or-tendency-to-fall"
                                },
                                {
                                    "label": {
                                        "en": "Walking problems (e.g. slow walking, freezing)",
                                        "fr": ""
                                    },
                                    "value": "walking-problems"
                                },
                                {
                                    "label": {
                                        "en": "Visual hallucinations (e.g. seeing things that are not really there)",
                                        "fr": ""
                                    },
                                    "value": "visual-hallucinations"
                                },
                                {
                                    "label": {
                                        "en": "Reduced sense of smell",
                                        "fr": ""
                                    },
                                    "value": "reduced-sense-of-smell"
                                },
                                {
                                    "label": {
                                        "en": "Swallowing difficulty",
                                        "fr": ""
                                    },
                                    "value": "swallowing-difficulty"
                                },
                                {
                                    "label": {
                                        "en": "Bodily pain or discomfort (e.g. generalized, or of the joints)",
                                        "fr": ""
                                    },
                                    "value": "bodily-pain-or-discomfort"
                                },
                                {
                                    "label": {
                                        "en": "Urinary Problems (e.g. increased frequency, loss of bladder control)",
                                        "fr": ""
                                    },
                                    "value": "urinary-problems"
                                },
                                {
                                    "label": {
                                        "en": "Constipation",
                                        "fr": ""
                                    },
                                    "value": "constipation"
                                },
                                {
                                    "label": {
                                        "en": "Acting out dreams (e.g. punching, kicking, or shouting during sleep)",
                                        "fr": ""
                                    },
                                    "value": "acting-out-dreams"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty sleeping or insomnia",
                                        "fr": ""
                                    },
                                    "value": "difficulty-sleeping-or-insomnia"
                                },
                                {
                                    "label": {
                                        "en": "Dyskinesias (e.g. unintentional movements related to the Parkinson''s medications)",
                                        "fr": ""
                                    },
                                    "value": "dyskinesias"
                                },
                                {
                                    "label": {
                                        "en": "None of the above",
                                        "fr": ""
                                    },
                                    "value": "none-of-the-above"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "matrix",
                            "key": "5-rating",
                            "textContent": {
                                "en": "In the prior question, you selected the following Parkinson''s symptoms because you experience them currently. Please rate how you feel these symptoms impact your quality of life.",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "legendTitle": "Impact",
                            "condition": {
                                "dependsOnKey": "4-movement-bodily-function-symptoms-experienced",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true,
                                    "hideWhenValuesSelected": [ "none-of-the-above", "prefer-not-to-answer" ],
                                    "populateResultsBasedOnSelectedValues": {
                                        "valuesToHide": [ "not-sure" ]
                                    }
                                }
                            },
                            "legend": [
                                {
                                    "label": {
                                        "en": "Not at all (0)",
                                        "fr": ""
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "A little (1)",
                                        "fr": ""
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "Moderately (2)",
                                        "fr": ""
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "Quite a bit (3)",
                                        "fr": ""
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "Extremely (4)",
                                        "fr": ""
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "6-thinking-mood-symptoms-experienced",
                            "allowMultipleSelections": true,
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Which of the following <b>thinking and feeling</b> Parkinson''s disease symptoms do you currently experience? Please select all that apply.",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["none-of-the-above", "prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["none-of-the-above", "prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Difficulty with decisions or planning", 
                                        "fr": ""
                                    },
                                    "value": "difficulty-with-decisions-or-planning"
                                },
                                {
                                    "label": {
                                        "en": "Slowing of mental or information processing",
                                        "fr": ""
                                    },
                                    "value": "slowing-of-mental-or-information-processing"
                                },
                                {
                                    "label": {
                                        "en": "Memory Problems",
                                        "fr": ""
                                    },
                                    "value": "memory-problems"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty with expressing your thoughts (e.g. word-finding difficulties)",
                                        "fr": ""
                                    },
                                    "value": "difficulty-with-expressing-your-thoughts"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty concentrating",
                                        "fr": ""
                                    },
                                    "value": "difficulty-concentrating"
                                },
                                {
                                    "label": {
                                        "en": "Depression or sadness",
                                        "fr": ""
                                    },
                                    "value": "depression-or-sadness"
                                },
                                {
                                    "label": {
                                        "en": "Anxiety or excessive worrying",
                                        "fr": ""
                                    },
                                    "value": "anxiety-or-excessive-worrying"
                                },
                                {
                                    "label": {
                                        "en": "Physical fatigue (e.g. exhaustion or tiredness of the body)",
                                        "fr": ""
                                    },
                                    "value": "physical-fatigue"
                                },
                                {
                                    "label": {
                                        "en": "Mental fatigue (e.g. feeling weary or exhausted during a mental task)",
                                        "fr": ""
                                    },
                                    "value": "mental-fatigue"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty controlling emotions or behaviours",
                                        "fr": ""
                                    },
                                    "value": "difficulty-controlling-emotions-or-behaviours"
                                },
                                {
                                    "label": {
                                        "en": "Feeling lightheaded or dizzy",
                                        "fr": ""
                                    },
                                    "value": "feeling-lightheaded-or-dizzy"
                                },
                                {
                                    "label": {
                                        "en": "Apathy (e.g. reduced motivation, needing more of a push)",
                                        "fr": ""
                                    },
                                    "value": "apathy"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty with multi-tasking",
                                        "fr": ""
                                    },
                                    "value": "difficulty-with-multi-tasking"
                                },
                                {
                                    "label": {
                                        "en": "Feeling of being alone or being isolated",
                                        "fr": ""
                                    },
                                    "value": "feeling-of-being-alone-or-being-isolated"
                                },
                                {
                                    "label": {
                                        "en": "None of the above",
                                        "fr": ""
                                    },
                                    "value": "none-of-the-above"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "matrix",
                            "key": "7-rating",
                            "textContent": {
                                "en": "In the prior question, you selected the following Parkinson''s symptoms because you experience them currently. Please rate how you feel these symptoms impact your quality of life.",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "legendTitle": "Impact",
                            "condition": {
                                "dependsOnKey": "6-thinking-mood-symptoms-experienced",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true,
                                    "hideWhenValuesSelected": [ "none-of-the-above", "prefer-not-to-answer" ],
                                    "populateResultsBasedOnSelectedValues": {
                                        "valuesToHide": [ "not-sure" ]
                                    }
                                }
                            },
                            "legend": [
                                {
                                    "label": {
                                        "en": "Not at all (0)",
                                        "fr": ""
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "A little (1)",
                                        "fr": ""
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "Moderately (2)",
                                        "fr": ""
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "Quite a bit (3)",
                                        "fr": ""
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "Extremely (4)",
                                        "fr": ""
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider1",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "Thinking",
                                "fr": ""
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displaytext16",
                            "title": {
                                "en": "The following questions are aimed at understanding if, and how, Parkinson''s disease affects your <b>thinking</b>. <br /><br />Some examples of thinking problems might include:<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Memory</b></u>: such as remembering what someone recently told you, familiar names, or upcoming events.<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Concentration</b></u>: such as reading an article or book, or watching a television show or movie<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Organization</b></u>: such as paying bills, managing medications, or organizing and completing a shopping list<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Making decisions and solving problems</b></u><br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Orientation and spatial ability</b></u>: such as driving or finding one''s way around an unfamiliar location<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Understanding language</b></u>: such as making sense of conversations or finding words when talking",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "8-change-from-normal-abilities",
                            "textContent": {
                                "en": "Have you noticed that you are having more <b>problems with thinking</b>, that is a change from your normal abilities?",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "9-most-attribute-thinking-changes-to",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "textContent": {
                                "en": "What do you <b>MOST</b> believe are the reasons for your <b>thinking changes</b>? Please select all that apply.",
                                "fr": ""
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "indent": 1,
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "PD",
                                        "fr": ""
                                    },
                                    "value": "pd"
                                },
                                {
                                    "label": {
                                        "en": "Aging",
                                        "fr": ""
                                    },
                                    "value": "aging"
                                },
                                {
                                    "label": {
                                        "en": "Stress and coping with the disease or with other life events",
                                        "fr": ""
                                    },
                                    "value": "stress-and-coping-with-disease-or-other-life-events"
                                },
                                {
                                    "label": {
                                        "en": "Other neurological illness",
                                        "fr": ""
                                    },
                                    "value": "other-neurological-illness"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "10-thinking-symptoms-prescribed-medications",
                            "validation": {
                                "required": true
                            },
                            "indent": 1,
                            "textContent": {
                                "en": "Has your healthcare team prescribed medications for your <b>thinking symptoms</b>?",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "11-first-learned-thinking-changes-are-symptoms-of-PD",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "<b>When</b> did you first learn that <b>thinking changes</b> are part of the symptoms of PD?",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "I did not know anything about thinking changes in PD before filling out this survey",
                                        "fr": ""
                                    },
                                    "value": "didnt-know-before-doing-survey"
                                },
                                {
                                    "label": {
                                        "en": "Before PD diagnosis (I already knew about PD and its symptoms before I received my diagnosis)",
                                        "fr": ""
                                    },
                                    "value": "before-pd-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "At the time of PD diagnosis; it was discussed by the medical team",
                                        "fr": ""
                                    },
                                    "value": "at-the-time-of-PD-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "After my diagnosis of PD because I started to learn about the disease",
                                        "fr": ""
                                    },
                                    "value": "after-my-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "Only once I started to experience thinking changes myself",
                                        "fr": ""
                                    },
                                    "value": "only-after-experiencing-thinking-changes"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "12-how-i-learned-thinking-changes-are-symptoms-of-PD",
                            "textContent": {
                                "en": "<b>How</b> did you first learn that <b>thinking changes</b> are part of the symptoms of PD? Please select all that apply",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "By doing this survey",
                                        "fr": ""
                                    },
                                    "value": "doing-this-survey"
                                },
                                {
                                    "label": {
                                        "en": "My physician",
                                        "fr": ""
                                    },
                                    "value": "my-physician"
                                },
                                {
                                    "label": {
                                        "en": "Other health care worker (e.g. occupational therapist, nurse)",
                                        "fr": ""
                                    },
                                    "value": "other-health-care-worker"
                                },
                                {
                                    "label": {
                                        "en": "Prined materials from clinic",
                                        "fr": ""
                                    },
                                    "value": "printed-materials-from-clinic"
                                },
                                {
                                    "label": {
                                        "en": "Information provided by foundations (e.g. webinar, printed materials)",
                                        "fr": ""
                                    },
                                    "value": "info-provided-by-foundations"
                                },
                                {
                                    "label": {
                                        "en": "Support groups",
                                        "fr": ""
                                    },
                                    "value": "support-groups"
                                },
                                {
                                    "label": {
                                        "en": "Social media",
                                        "fr": ""
                                    },
                                    "value": "social-media"
                                },
                                {
                                    "label": {
                                        "en": "Friends/family doing research",
                                        "fr": ""
                                    },
                                    "value": "friends-or-family-doing-research"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "13-most-helpful-to-learn-thinking-changes-are-part-of-symptoms-of-pd",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "Which <b>ONE</b> of the following items was the <b>MOST</b> helpful in learning that <b>thinking changes</b> are part of the symptoms of PD? Please select the best option.",
                                "fr": ""
                            },
                            "indent": 1,
                            "allowMultipleSelections": false,
                            "condition": {
                                "dependsOnKey": "12-how-i-learned-thinking-changes-are-symptoms-of-PD",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true,
                                    "hideWhenValuesSelected": [ "prefer-not-to-answer" ],
                                    "populateResultsBasedOnSelectedValues": {
                                        "valuesToHide": ["not-sure"]
                                    }
                                }
                            },
                            "options": []
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText3",
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "title": {
                                "en": "<b><i>In this section, we want to know how you think that Parkinson''s disease and its associated symptoms affect the way that other people see you</i></b>. You told us earlier that you have noticed more <b>problems with thinking</b> that is a change from your normal abilities. Please consider these symptoms affecting your thinking and answer the following questions. <br /><br />Because of my <b>thinking symptoms...</b>",
                                "fr": ""
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14a-thinking-people-seem-uncomfortable",
                            "textContent": {
                                "en": "Some people seem uncomfortable with me",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14b-thinking-people-are-avoiding-me",
                            "textContent": {
                                "en": "Some people are avoiding me",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14c-thinking-i-feel-embarrassed-in-social-situations",
                            "textContent": {
                                "en": "I feel embarrassed in social situations",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14d-thinking-i-feel-left-out",
                            "textContent": {
                                "en": "I feel left out of things",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14e-thinking-burden-to-others",
                            "textContent": {
                                "en": "I worry that I am a burden to others",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider2",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText4",
                            "title": {
                                "en": "Mood",
                                "fr": ""
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText4_1",
                            "title": {
                                "en": "The following questions are aimed at understanding if, and how, you have experienced <b>mood changes</b> (whether related or unrelated to the Parkinson''s disease)."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displaytext17",
                            "title": {
                                "en": "We are using the term \\"mood\\" to refer to all emotional states, which can include happiness, sadness, hopelessness, depression, anger, fear, excessive worry, anxiety, irritability, loss of motivation, paranoia, difficulty controlling urges, compulsions, obsessions, etc.<br /><br/> People with Parkinson''s disease might experience mood changes for a variety of reasons. Some people notice very little or no changes at all, while others notice more important changes. These changes might be related or unrelated to the Parkinson''s disease.",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "15-experienced-changes-to-mood-since-diagnosis",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "Have you experienced <b>changes to your mood</b> since your diagnosis with Parkinson''s disease",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "16-most-attribute-mood-changes-to",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "indent": 1,
                            "textContent": {
                                "en": "What do you <b>MOST</b> believe are the reasons for the <b>change to your mood</b>? Please select all that apply:",
                                "fr": ""
                            },
                            "actions": {
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "PD",
                                        "fr": ""
                                    },
                                    "value": "pd"
                                },
                                {
                                    "label": {
                                        "en": "Aging",
                                        "fr": ""
                                    },
                                    "value": "aging"
                                },
                                {
                                    "label": {
                                        "en": "Stress and coping with the disease",
                                        "fr": ""
                                    },
                                    "value": "stress-and-coping-with-disease"
                                },
                                {
                                    "label": {
                                        "en": "Stress related to other life events",
                                        "fr": ""
                                    },
                                    "value": "stress-related-to-other-life-events"
                                },
                                {
                                    "label": {
                                        "en": "Pre-existing psychiatric condition (e.g. major depression, bipolar disorder, schizophrenia, etc)",
                                        "fr": ""
                                    },
                                    "value": "pre-existing-psychiatric-condition"
                                },
                                {
                                    "label": {
                                        "en": "Other medical illness",
                                        "fr": ""
                                    },
                                    "value": "other-medical-illness"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "17-mood-symptoms-prescribed-medications",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "textContent": {
                                "en": "Has your healthcare team prescribed any medications for your <b>mood symptoms</b>?",
                                "fr": ""
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "18-first-learned-mood-changes-are-symptoms-of-PD",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "<b>When</b> did you first learn that <b>mood changes</b> are part of the symptoms of Parkinson''s disease?",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "I did not know anything about mood changes in PD before filling out this survey",
                                        "fr": ""
                                    },
                                    "value": "didnt-know-before-doing-survey"
                                },
                                {
                                    "label": {
                                        "en": "Before PD diagnosis (I already knew about PD and its symptoms before I received my diagnosis)",
                                        "fr": ""
                                    },
                                    "value": "before-pd-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "At the time of PD diagnosis; it was discussed by the medical team",
                                        "fr": ""
                                    },
                                    "value": "at-the-time-of-PD-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "After my diagnosis of PD because I started to learn about the disease",
                                        "fr": ""
                                    },
                                    "value": "after-my-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "Only once I started to experience mood changes myself",
                                        "fr": ""
                                    },
                                    "value": "only-after-experiencing-mood-changes"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "19-how-i-learned-mood-changes-are-symptoms-of-PD",
                            "textContent": {
                                "en": "<b>How</b> did you first learn that <b>mood changes</b> are part of the symptoms of Parkinson''s disease? Please select all that apply",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "By doing this survey",
                                        "fr": ""
                                    },
                                    "value": "doing-this-survey"
                                },
                                {
                                    "label": {
                                        "en": "My physician",
                                        "fr": ""
                                    },
                                    "value": "my-physician"
                                },
                                {
                                    "label": {
                                        "en": "Other health care worker (e.g. occupational therapist, nurse)",
                                        "fr": ""
                                    },
                                    "value": "other-health-care-worker"
                                },
                                {
                                    "label": {
                                        "en": "Prined materials from clinic",
                                        "fr": ""
                                    },
                                    "value": "printed-materials-from-clinic"
                                },
                                {
                                    "label": {
                                        "en": "Information provided by foundations (e.g. webinar, printed materials)",
                                        "fr": ""
                                    },
                                    "value": "info-provided-by-foundations"
                                },
                                {
                                    "label": {
                                        "en": "Support groups",
                                        "fr": ""
                                    },
                                    "value": "support-groups"
                                },
                                {
                                    "label": {
                                        "en": "Social media",
                                        "fr": ""
                                    },
                                    "value": "social-media"
                                },
                                {
                                    "label": {
                                        "en": "Friends/family doing research",
                                        "fr": ""
                                    },
                                    "value": "friends-or-family-doing-research"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "20-most-helpful-to-learn-mood-changes-are-part-of-symptoms-of-pd",
                            "validation": {
                                "required": true
                            },
                            "indent": 1,
                            "textContent": {
                                "en": "Which <b>ONE</b> of the following items was the <b>MOST</b> helpful in learning that <b>mood changes</b> are part of the symptoms of Parkinson''s disease? Please select the best option.",
                                "fr": ""
                            },
                            "allowMultipleSelections": false,
                            "condition": {
                                "dependsOnKey": "19-how-i-learned-mood-changes-are-symptoms-of-PD",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true,
                                    "hideWhenValuesSelected": [ "prefer-not-to-answer" ],
                                    "populateResultsBasedOnSelectedValues": {
                                        "valuesToHide": ["not-sure"]
                                    }
                                }
                            },
                            "options": []
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText5",
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "title": {
                                "en": "In this section we want to know how you think that Parkinson''s disease and its associated symptoms affect the <b>way that other people see you</b>. You told us earlier that you have <b>changes to your mood</b>. Please consider these mood symptoms and answer the following questions. <br /><br />Because of my <b>mood symptoms...</b>",
                                "fr": ""
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21a-mood-people-seem-uncomfortable",
                            "textContent": {
                                "en": "Some people seem uncomfortable with me",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21b-mood-people-are-avoiding-me",
                            "textContent": {
                                "en": "Some people are avoiding me",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21c-mood-i-feel-embarrassed-in-social-situations",
                            "textContent": {
                                "en": "I feel embarrassed in social situations",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21d-mood-i-feel-left-out",
                            "textContent": {
                                "en": "I feel left out of things",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21e-mood-burden-to-others",
                            "textContent": {
                                "en": "I worry that I am a burden to others",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider3",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText18",
                            "title": {
                                "en": "Motor",
                                "fr": ""
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText14",
                            "title": {
                                "en": "In this section, we are asking about the <b>motor symptoms</b> of Parkinson''s disease, which can include tremor, stiffness, slowness, difficulty walking, poor balance, falls, loss of dexterity, difficulty with activities such as dressing, cooking or eating, etc.",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "22-experienced-motor-symptoms-since-diagnosis",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Have you experienced <b>motor symptoms</b> since your diagnosis with Parkinson''s disease?",
                                "fr": ""
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText19",
                            "title": {
                                "en": "In this section, we want to know how you think that Parkinson''s disease and its associated symptoms <b>affect the way that other people see you</b>. You told us earlier that you experienced <b>motor symptoms</b>. Please consider your motor symptoms and tell us how often you experience the following:<br /><br />Because of my <b>motor</b> symptoms...",
                                "fr": ""   
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23a-motor-people-seem-uncomfortable",
                            "textContent": {
                                "en": "Some people seem uncomfortable with me",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23b-motor-people-are-avoiding-me",
                            "textContent": {
                                "en": "Some people are avoiding me",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23c-motor-i-feel-embarrassed-in-social-situations",
                            "textContent": {
                                "en": "I feel embarrassed in social situations",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23d-motor-i-feel-left-out",
                            "textContent": {
                                "en": "I feel left out of things",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23e-motor-burden-to-others",
                            "textContent": {
                                "en": "I worry that I am a burden to others",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": ""
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": ""
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": ""
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider8",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText6",
                            "title": {
                                "en": "Your expectations about the symptoms of Parkinson''s disease.",
                                "fr": ""
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText7",
                            "title": {
                                "en": "In this section, we are interested in finding out about how you <i><b>expected</b></i> that Parkinson''s disease <i><b>would</b></i> affect you (e.g. based on what your medical team had told you, what you have read about PD, or how you have seen PD depicted in the media/culture), compared to how it <i><b>is</b></i> affecting you.",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "24-how-experience-of-thinking-changes-compares-to-expected",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "How does your <b>experience of changes to your thinking</b> (or absence of any changes) since your diagnosis of Parkinson''s disease <b>compare</b> to the thinking changes you <i><b>expected</b></i> would occur as a result of having Parkinson''s disease?",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "This is exactly what I expected",
                                        "fr": ""
                                    },
                                    "value": "exactly-what-i-expected"
                                },
                                {
                                    "label": {
                                        "en": "This is not as bad as I thought it would be",
                                        "fr": ""
                                    },
                                    "value": "not-as-bad-as-i-thought"
                                },
                                {
                                    "label": {
                                        "en": "I was expecting some changes to my thinking, but this is worse than I thought it would be",
                                        "fr": ""
                                    },
                                    "value": "worse-than-i-thought"
                                },
                                {
                                    "label": {
                                        "en": "I didn''t know about the possibility of developing changes to my thinking",
                                        "fr": ""
                                    },
                                    "value": "didnt-know-changes-to-thinking-possible"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "25-how-experience-of-mood-symptoms-compares-to-expected",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "How does your <b>experience of mood symptoms</b> (or absence of mood symptoms) since your diagnosis of Parkinson''s disease <b>compare</b> to the mood symptoms you <i><b>expected</b></i> would occur as a result of having Parkinson''s disease?",
                                "fr": ""
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "This is exactly what I expected",
                                        "fr": ""
                                    },
                                    "value": "exactly-what-i-expected"
                                },
                                {
                                    "label": {
                                        "en": "This is not as bad as I thought it would be",
                                        "fr": ""
                                    },
                                    "value": "not-as-bad-as-i-thought"
                                },
                                {
                                    "label": {
                                        "en": "I was expecting some mood symptoms, but this is worse than I thought it would be",
                                        "fr": ""
                                    },
                                    "value": "worse-than-i-thought"
                                },
                                {
                                    "label": {
                                        "en": "I didn''t know about the possibility of developing mood symptoms",
                                        "fr": ""
                                    },
                                    "value": "didnt-know-changes-to-mood-possible"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider4",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText8",
                            "title": {
                                "en": "What you know about Parkinson''s disease",
                                "fr": ""
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText9",
                            "title": {
                                "en": "In this section, we are interested in finding out what you know about Parkinson''s disease. <b>The point here is not to test you, but rather to get an idea of how well health care teams inform patients about their condition.</b> Later we will be asking you about what you <i>want to know about PD</i>",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "<b>DEMENTIA</b>: As people progress with PD, what percentage of people do you think will eventually develop <b>dementia</b> due to Parkinson''s disease?<br /><br />"
                            },
                            "textContent": {
                                "en": "<i>Dementia refers to changes to thinking that are severe enough to cause a partial or a total loss of independence. </i><br /><br /><b>If you believe few people with PD develop dementia, choose a low number. Choose a high number if you believe more people with PD eventually develop dementia.</b><br /><br /><i><b>For example</b></i>:<br /><b>0%</b> = No one with PD ever develops dementia eventually<br /><b>100%</b> = Everyone with PD develops dementia eventually<br /><br />",
                                "fr": ""
                            },
                            "helperText": {
                                "en": "Select a percentage by sliding the circle icon",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "26-percentage-develops-dementia",
                            "legend": [ 
                                {
                                    "en": "0%: No one with PD ever develops dementia eventually",
                                    "fr": ""
                                },
                                {
                                    "en": "100%: Everyone with PD develops dementia eventually",
                                    "fr": ""
                                }
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "<b>THINKING CHANGES</b>: What percentage of people do you think will eventually develop <b>any degree of changes to their thinking</b> due to Parkinson''s disease?<br /><br />",
                                "fr": ""
                            },
                            "textContent": {
                                "en": "<i>We are referring to any changes in memory, concentration, organization, orientation, or any other changes to thinking, whether mild or severe, that are sufficient to be noted by the individual or by their loved ones. These changes could be so mild that they don''t affect everyday life, to so severe that they lead to loss of independence and dementia. <br />(The percentage you provide here should be at least as high as the number you entered in the last question).</i><br /><br /><b>If you believe few people with PD develop thinking changes, choose a low number on the slider below. Choose a high number if you believe more people with PD eventually develop thinking changes.</b><br /><br /><i><b>For example:</b></i><br /><b>0%</b> = No one with PD develops any degree of thinking changes<br /><b>100%</b> = Everyone with PD develops some degree of thinking changes<br /><br />",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "helperText": {
                                "en": "Select a percentage by sliding the circle icon",
                                "fr": ""
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "27-percentage-develops-thinking-changes",
                            "legend": [ 
                                {
                                    "en": "0%: No one with PD develops any degree of thinking changes",
                                    "fr": ""
                                },
                                {
                                    "en": "100%: Everyone with PD develops some degree of thinking changes",
                                    "fr": ""
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "28-treatment-for-cognitive-changes-involves",
                            "title": {
                                "en": "The treatment for <b>thinking changes</b> in Parkinson''s disease involves: (please select all that apply)",
                                "fr": ""
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Medication to cure the thinking changes, i.e. to permanently reverse the thinking changes",
                                        "fr": ""
                                    },
                                    "value": "medication-to-cure-thinking-changes"
                                },
                                {
                                    "label": {
                                        "en": "Medication to alleviate the symptoms of thinking changes, i.e. to reduce their severity",
                                        "fr": ""
                                    },
                                    "value": "medication-to-alleviate-thinking-change-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "No medications exist, but therapies that do not involve medications (e.g. occupational therapy) can help cope with the changes",
                                        "fr": ""
                                    },
                                    "value": "no-medications-exist-but-therapies-can-help-cope"
                                },
                                {
                                    "label": {
                                        "en": "Nothing at all can be done for the thinking changes in PD",
                                        "fr": ""
                                    },
                                    "value": "nothing-can-be-done"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "<b>MOOD SYMPTOMS</b>: As people progress with PD, what percentage of people will, at some point, experience changes to their mood due to Parkinson''s disease?<br /><br />",
                                "fr": ""
                            },
                            "textContent": {
                                "en": "<i>Mood symptoms include depression, anxiety, excessive worrying, loss of motivation, paranoia, etc.</i><br /><br /><i><b>If you believe few people will experience mood symptoms, choose a low number on the slider below. Choose a high number if you believe more people with PD will experience mood symptoms.</b></i><br /><br /><i><b>For example:</b></i></br /><b>0%</b> = No one with PD develops any degree of mood symptoms<br /><b>100%</b> = Everyone with PD develops some degree of mood symptoms",
                                "fr": ""
                            },
                            "helperText": {
                                "en": "Select a percentage by sliding the circle icon",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "29-percentage-develops-mood-changes",
                            "legend": [ 
                                {
                                    "en": "0%: No one with PD develops any degree of mood symptoms",
                                    "fr": ""
                                },
                                {
                                    "en": "100%: Everyone with PD develops some degree of mood symptoms",
                                    "fr": ""
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "30-treatment-of-mood-symptoms-involves",
                            "textContent": {
                                "en": "The treatment of <b>mood symptoms</b> in Parkinson''s disease involves: (please select all that apply)",
                                "fr": ""
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Medication to cure the mood symptoms, i.e. to permanently reverse the mood symptoms",
                                        "fr": ""
                                    },
                                    "value": "medication-to-cure-mood-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "Medication to alleviate the mood symptoms",
                                        "fr": ""
                                    },
                                    "value": "medication-to-alleviate-mood-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "No medications exist, but therapy that does not involve medications (e.g. talk therapy) can help cope with or reduce the symptoms",
                                        "fr": ""
                                    },
                                    "value": "no-medications-exist-but-therapies-can-help-cope"
                                },
                                {
                                    "label": {
                                        "en": "Nothing at all can be done for the mood symptoms in PD",
                                        "fr": ""
                                    },
                                    "value": "nothing-can-be-done"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider5",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText10",
                            "title": {
                                "en": "About your interaction with the healthcare team",
                                "fr": ""
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText11",
                            "title": {
                                "en": "In this section we are interested in finding out how much information you receive from your <b>healthcare team</b> and whether you are satisfied with your interactions with the <b>healthcare team</b>.<br /><br />Your <b>healthcare team</b> can include any of the health professionals that assist in the management of your Parkinson''s disease, such as a neurologist, nurses, occupational therapist, social workers, primary care physicians, etc",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "31-how-often-thinking-changes-discussed",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "How often do you discuss whether you''ve experienced <b>changes to your thinking</b> in your visits?",
                                "fr": ""
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Each visit",
                                        "fr": ""
                                    },
                                    "value": "each-visit"
                                },
                                {
                                    "label": {
                                        "en": "Only when I bring it up",
                                        "fr": ""
                                    },
                                    "value": "only-when-i-bring-it-up"
                                },
                                {
                                    "label": {
                                        "en": "My healthcare team occasionally brings it up",
                                        "fr": ""
                                    },
                                    "value": "my-healthcare-team-occasionally-brings-it-up"
                                },
                                {
                                    "label": {
                                        "en": "I have never discussed this with my healthcare team",
                                        "fr": ""
                                    },
                                    "value": "never-discussed-this-with-my-healthcare-team"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "32-time-spent-discussing-thinking-changes-sufficient",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Do you think the time you spend with your <b>healthcare team</b> discussing <b>your thinking</b> is sufficient?",
                                "fr": ""
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "33-how-often-mood-symptoms-discussed",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "How often do you discuss your <b>mood symptoms</b> in your visits?",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Each visit",
                                        "fr": ""
                                    },
                                    "value": "each-visit"
                                },
                                {
                                    "label": {
                                        "en": "Only when I bring it up",
                                        "fr": ""
                                    },
                                    "value": "only-when-i-bring-it-up"
                                },
                                {
                                    "label": {
                                        "en": "My healthcare team occasionally brings it up",
                                        "fr": ""
                                    },
                                    "value": "my-healthcare-team-occasionally-brings-it-up"
                                },
                                {
                                    "label": {
                                        "en": "I have never discussed this with my healthcare team",
                                        "fr": ""
                                    },
                                    "value": "never-discussed-this-with-my-healthcare-team"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "34-time-spent-discussing-mood-symptoms-sufficient",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Do you think the time you spend with your <b>healthcare team</b> discussing <b>mood symptoms</b> is sufficient?",
                                "fr": ""
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "35-care-partner-attending-medical-appointments-always-or-sometimes",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Do you have a care partner who attends medical appointments with you some or all of the time?",
                                "fr": ""
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": ""
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "35a-care-partner-sufficiently-involved-in-medical-team-conversations",
                            "validation": {
                                "required": true
                            },
                            "indent": 1,
                            "textContent": {
                                "en": "Do you find that your care partner is sufficiently involved in the conversations with the medical team?",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "35-care-partner-attending-medical-appointments-always-or-sometimes",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": ""
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No because they can''t attend often enough",
                                        "fr": ""
                                    },
                                    "value": "no-they-cant-attend-often-enough"
                                },
                                {
                                    "label": {
                                        "en": "No because the medical team does not include them enough in the discussion",
                                        "fr": ""
                                    },
                                    "value": "no-medical-team-doesnt-include-them"
                                },
                                {
                                    "label": {
                                        "en": "No because they prefer not to be involved in the discussions",
                                        "fr": ""
                                    },
                                    "value": "no-they-prefer-not-to-be-involved"
                                },
                                {
                                    "label": {
                                        "en": "No because I prefer them not to be involved in the discussions",
                                        "fr": ""
                                    },
                                    "value": "no-i-prefer-them-not-to-be-involved"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "36-i-view-thinking-and-mood-symptoms-i-experience",
                            "textContent": {
                                "en": "Since my time of PD diagnosis, I view the <b>thinking and mood symptoms</b> that I experience as: (please select all that apply)",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "A part of life",
                                        "fr": ""
                                    },
                                    "value": "a-part-of-life"
                                },
                                {
                                    "label": {
                                        "en": "Related to Parkinson''s disease",
                                        "fr": ""
                                    },
                                    "value": "related-to-parkinsons-disease"
                                },
                                {
                                    "label": {
                                        "en": "Entirely under my control and therefore I would rather not discuss them with the medical team",
                                        "fr": ""
                                    },
                                    "value": "under-my-control-so-i-prefer-not-discuss-them"
                                },
                                {
                                    "label": {
                                        "en": "Without effective treatment, therefore I would rather not discuss them",
                                        "fr": ""
                                    },
                                    "value": "without-effective-treatment"
                                },
                                {
                                    "label": {
                                        "en": "Less important than my motor symptoms",
                                        "fr": ""
                                    },
                                    "value": "less-important-than-my-motor-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "More important than my motor symptoms",
                                        "fr": ""
                                    },
                                    "value": "more-important-than-my-motor-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "Embarrassing",
                                        "fr": ""
                                    },
                                    "value": "embarrassing"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider6",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText12",
                            "title": {
                                "en": "Understanding what you would like to know",
                                "fr": ""
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText13",
                            "title": {
                                "en": "In this section, we are interested in finding out how you <i><b>would ideally like</b></i> the different aspects of Parkinson''s disease to be discussed with you",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "37-value-discussing-thinking-and-mood-symptoms",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "textContent": {
                                "en": "What is the <b>value</b> to you of discussing your <b>thinking and mood symptoms</b> with your medical team? Please select all that apply:",
                                "fr": ""
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "It is helpful to talk about the symptoms and have them validated",
                                        "fr": ""
                                    },
                                    "value": "helpful-to-talk-about-symptoms-and-have-them-validated"
                                },
                                {
                                    "label": {
                                        "en": "It is helpful to talk about the symptoms so that they can be treated",
                                        "fr": ""
                                    },
                                    "value": "helpful-to-talk-about-symptoms-so-that-they-can-be-treated"
                                },
                                {
                                    "label": {
                                        "en": "It is helpful to talk about these symptoms in front of my caregiver so that they have a better understanding of what I''m going through",
                                        "fr": ""
                                    },
                                    "value": "helpful-to-talk-about-symptoms-in-front-of-my-caregiver"
                                },
                                {
                                    "label": {
                                        "en": "It is helpful for the medical team to hear my caregiver''s perspective on these issues",
                                        "fr": ""
                                    },
                                    "value": "helpful-for-medical-team-to-hear-my-caregivers-perspective"
                                },
                                {
                                    "label": {
                                        "en": "It is not useful; I would prefer to focus on other symptoms of Parkinson''s disease",
                                        "fr": ""
                                    },
                                    "value": "not-useful-id-prefer-to-focus-on-other-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "It is not useful; I don''t experience these symptoms",
                                        "fr": ""
                                    },
                                    "value": "not-useful-i-dont-experience-these-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "38-want-to-be-told-of-possibility-of-developing-thinking-mood-symptoms-at-time-of-diagnosis",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Ideally, would you have wanted to be told about the <b><i>possibility</i></b> of developing <b>thinking and mood symptoms</b> as part of Parkinson''s disease <b>at the time of your diagnosis</b>?",
                                "fr": ""
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes, I think it''s important to be informed about the possibility of developing these symptoms, even if I was not experiencing them yet",
                                        "fr": ""
                                    },
                                    "value": "yes-important-to-be-informed-even-before-experiencing-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "No, I would have preferred to wait until I develop the symptoms before being told about their link to Parkinson''s disease",
                                        "fr": ""
                                    },
                                    "value": "no-preferred-to-wait-until-i-develop-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": ""
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": ""
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": ""
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText15",
                            "title": {
                                "en": "Thank you for taking part in this survey. Your answers will help us learn more about your experience as a person living with Parkinson''s disease.",
                                "fr": ""
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true
                                }
                            }
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 86;