
-- Basic Background Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "[ARCHIVED] Basic Background Questionnaire",
    description = "Basic Background Questionnaire. This should no longer be used.",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Les Questions"
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "The following questions are general questions about you. If you don''t have Parkinson''s disease (PD), not all of them will apply to you, so select the \\"I don''t have Parkinson''s disease\\" option.",
                                "fr": "Les questions suivantes sont des questions générales sur vous. Si vous n''avez pas la maladie de Parkinson (MP), certaines ne s''appliqueront pas à vous, alors sélectionnez l''option \\"Je n''ai pas la maladie de Parkinson\\"."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Do you have a diagnosis of Parkinson’s disease given to you by a doctor (e.g. family doctor or neurologist)?",
                                "fr": "Avez-vous un diagnostic de la maladie de Parkinson qui vous a été donné par un médecin (par exemple, un médecin de famille ou un neurologue)?"
                            },
                            "validation": {
                                "required": true
                            },
                            "radiobuttonPresentation": "vertical",
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                },
                                {
                                    "label": {
                                        "en": "No, but I think I have Parkinson''s disease",
                                        "fr": "Non, mais je pense avoir la maladie de Parkinson"
                                    },
                                    "value": "No, but I think I have Parkinson''s disease"
                                }
                            ],
                            "key": "havePD"
                        },
                        {
                            "questionType": "input",
                            "title": {
                                "en": "In what year were you diagnosed with Parkinson'' disease? If you DON''T have Parkinson''s disease, please enter \\"0\\".",
                                "fr": "En quelle année avez-vous reçu votre diagnostic de Parkinson? Si vous n''avez PAS la maladie de Parkinson, SVP inscrire \\"0\\"."
                            },
                            "key": "parkinsonsDiagnosisYear",
                            "label": {
                                "en": "Year (e.g. 2009)",
                                "fr": "Année (ex. 2009)"
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 2030,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you currently take medication for Parkinson''s disease?",
                                "fr": "Prenez-vous actuellement des médicaments pour la maladie de Parkinson?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "takePDMed",
                            "options": [
                                {
                                    "label": {
                                        "en": "I don''t have Parkinson''s disease",
                                        "fr": "Je n''ai pas la maladie de Parkinson"
                                    },
                                    "value": "I don''t have Parkinson''s disease"
                                },
                                {
                                    "label": {
                                        "en": "I have PD but DON''T take medications for it",
                                        "fr": "J''ai la MP mais je ne prends PAS de médicaments pour ça"
                                    },
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": {
                                        "en": "I have PD and I DO take medications for it",
                                        "fr": "J''ai la MP et je PRENDS des médicaments pour ça"
                                    },
                                    "value": "I have PD and I take medications for it"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider1"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "If you answered previously that you do take Parkinson’s disease medication, how long ago did you take the last dose?",
                                "fr": "Si vous avez répondu que vous prenez des médicaments pour votre maladie de Parkinson, il y a combien de temps que vous avez pris la dernière dose?"
                            }
                        },
                        {
                            "questionType": "input",
                            "textContent": {
                                "en": "If you answered that you DON''T take any Parkinson’s medication, please write \\"0\\".",
                                "fr": "Si vous avez répondu que vous ne prenez PAS de médicaments pour la maladie de Parkinson, veuillez inscrire \\"0\\"."
                            },
                            "key": "lastDoseHour",
                            "label": {
                                "en": "Hours",
                                "fr": "Heures"
                            },
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
                            "label": {
                                "en": "Minutes",
                                "fr": "Minutes"
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 60,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "divider",
                            "key": "divider2"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you feel ON (i.e. can feel that the PD medications are taking effect) or OFF (i.e. medications are not currently taking effect)?",
                                "fr": "Vous sentez-vous ACTIVÉ.E (\\"ON\\") (c.-à-d. sentir que les médicaments de la MP font effet) ou INACTIVÉ.E (\\"OFF\\") (c.-à-d. sentir que les médicaments ne font pas actuellement effet)?"
                            },
                            "key": "onOffMed",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "I don''t have Parkinson''s disease",
                                        "fr": "Je n''ai pas la maladie de Parkinson"
                                    },
                                    "value": "I don''t have Parkinson''s disease"
                                },
                                {
                                    "label": {
                                        "en": "I have PD but DON''T take medications for it",
                                        "fr": "J''ai la MP mais je ne prends PAS de médicaments pour ça"
                                    },
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": {
                                        "en": "I feel ON",
                                        "fr": "Je me sens ON"
                                    },
                                    "value": "I feel ON"
                                },
                                {
                                    "label": {
                                        "en": "I feel OFF",
                                        "fr": "Je me sens OFF"
                                    },
                                    "value": "I feel OFF"
                                },
                                {
                                    "label": {
                                        "en": "I cannot tell the difference between ON and OFF",
                                        "fr": "Je ne vois pas la différence entre le ON et le OFF"
                                    },
                                    "value": "I cannot tell the difference"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you have a diagnosis of dementia or Alzheimer''s disease given to you by a doctor?",
                                "fr": "Avez-vous un diagnostic de démence ou de maladie de Alzheimer qui vous a été donné par un médecin?"
                            },
                            "key": "diagnosisAD",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                },
                                {
                                    "label": {
                                        "en": "No, but I think I have dementia",
                                        "fr": "Non, mais je pense je souffre de démence"
                                    },
                                    "value": "No, but I think I have dementia"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you have a diagnosis of Mild Cognitive Impairment (MCI) given to you by a doctor?",
                                "fr": "Avez-vous un diagnostic de trouble cognitif léger (TCL) qui vous a été donné par un médecin?"
                            },
                            "key": "diagnosisMCI",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                },
                                {
                                    "label": {
                                        "en": "No, but I think I have cognitive impairment",
                                        "fr": "Non, mais je pense j''ai des troubles cognitifs"
                                    },
                                    "value": "No, but I think I have cognitive impairment"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you have a family history of Parkinson’s disease?",
                                "fr": "Avez-vous des antécédents familiaux de maladie de Parkinson?"
                            },
                            "key": "familyHistory",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes, my biological mother or father has/had Parkinson''s disease",
                                        "fr": "Oui, ma mère/mon père biologiques ont/avaient la maladie de Parkinson"
                                    },
                                    "value": "Yes, biological mother or father"
                                },
                                {
                                    "label": {
                                        "en": "Yes, one of my siblings has/had Parkinson''s disease",
                                        "fr": "Oui, un.e de mes frères/soeurs a/avait la maladie de Parkinson"
                                    },
                                    "value": "Yes, siblings"
                                },
                                {
                                    "label": {
                                        "en": "Yes, one of my children has/had Parkinson''s disease",
                                        "fr": "Oui, un de mes enfants a/avait la maladie de Parkinson"
                                    },
                                    "value": "Yes, children"
                                },
                                {
                                    "label": {
                                        "en": "Yes, an uncle/aunt/cousin or other blood relative has/had Parkinson’s disease",
                                        "fr": "Oui, un oncle/tante/cousin.e ou un autre proche par le sang a/avait la maladie de Parkinson"
                                    },
                                    "value": "Yes, relative"
                                },
                                {
                                    "label": {
                                        "en": "No, no family history",
                                        "fr": "Non, pas d''antécédents familiaux"
                                    },
                                    "value": "No"
                                }
                            ]
                        },
                        {
                            "questionType": "input",
                            "title": {
                                "en": "What is your current age?",
                                "fr": "Quel âge avez-vous actuellement?"
                            },
                            "key": "age",
                            "label": {
                                "en": "Age",
                                "fr": "Âge"
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 120,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What sex were you assigned at birth?",
                                "fr": "Quel sexe vous a-t-on attribué à la naissance?"
                            },
                            "key": "sex",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Female",
                                        "fr": "Féminin"
                                    },
                                    "value": "Female"
                                },
                                {
                                    "label": {
                                        "en": "Male",
                                        "fr": "Masculin"
                                    },
                                    "value": "Male"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "How do you describe yourself?",
                                "fr": "Comment vous décrivez-vous?"
                            },
                            "key": "gender",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Female",
                                        "fr": "Femme"
                                    },
                                    "value": "Female"
                                },
                                {
                                    "label": {
                                        "en": "Male",
                                        "fr": "Homme"
                                    },
                                    "value": "Male"
                                },
                                {
                                    "label": {
                                        "en": "Transgender",
                                        "fr": "Transgenres"
                                    },
                                    "value": "Transgender"
                                },
                                {
                                    "label": {
                                        "en": "Do not identify as female, male, or transgender",
                                        "fr": "Je ne m''identifie ni comme femme, ni comme homme, ni comme transgenres"
                                    },
                                    "value": "Do not identify as female, male, or transgender"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What is the highest level of education you have completed?",
                                "fr": "Quel est le plus haut niveau d''éducation que vous avez complété?"
                            },
                            "key": "education",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Aucun"
                                    },
                                    "value": "None"
                                },
                                {
                                    "label": {
                                        "en": "Grade (Elementary) school",
                                        "fr": "École primaire"
                                    },
                                    "value": "Grade (Elementary) school"
                                },
                                {
                                    "label": {
                                        "en": "High school",
                                        "fr": "École secondaire"
                                    },
                                    "value": "High school"
                                },
                                {
                                    "label": {
                                        "en": "Trade Certificate/Diploma",
                                        "fr": "Certificat/Diplôme de commerce"
                                    },
                                    "value": "Trade Certificate/Diploma"
                                },
                                {
                                    "label": {
                                        "en": "Non-University Diploma",
                                        "fr": "Diplôme non-universitaire"
                                    },
                                    "value": "Non-University Diploma"
                                },
                                {
                                    "label": {
                                        "en": "Bachelor''s Degree",
                                        "fr": "Baccalauréat"
                                    },
                                    "value": "Bachelor''s Degree"
                                },
                                {
                                    "label": {
                                        "en": "Postgraduate Degree",
                                        "fr": "Diplôme d''études supérieures"
                                    },
                                    "value": "Postgraduate Degree"
                                }
                            ]
                        },
                        {
                            "questionType": "input",
                            "title": {
                                "en": "How many years of education did you complete?",
                                "fr": "Combien d''années d''étude avez-vous complété?"
                            },
                            "textContent": {
                                "en": "E.g. completed up to grade 9 = 9 years; completed grade 12 and 3 years of university = 15 years",
                                "fr": "P.ex. avoir terminé jusqu''à la 9e année = 9 ans; avoir terminé la 12e année et 3 ans d''université = 15 ans"
                            },
                            "key": "educationYears",
                            "label": {
                                "en": "Years of education",
                                "fr": "Années d''étude"
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 40,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What is your handedness?",
                                "fr": "Quelle est votre main dominante?"
                            },
                            "key": "handedness",
                            "validation": {
                                "required": true
                            },
                            "options": [{
                                "label": {
                                    "en": "Right-handed",
                                    "fr": "Droitier/Droitière"
                                },
                                "value": "Right"
                            },
                            {
                                "label": {
                                    "en": "Left-handed",
                                    "fr": "Gaucher/Gauchère"
                                },
                                "value": "Left"
                            },
                            {
                                "label": {
                                    "en": "Ambidextrous",
                                    "fr": "Ambidextre"
                                },
                                "value": "Ambidextrous"
                            }]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "To which group do you culturally belong? (Select all that apply)",
                                "fr": "Avec quel groupe vous identifiez-vous? (Sélectionnez tous ceux qui s''appliquent)"
                            },
                            "key": "background",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "White / Caucasian",
                                        "fr": "Blanc / Caucasien.ne"
                                    },
                                    "value": "White/Caucasian"
                                },
                                {
                                    "label": {
                                        "en": "French Canadian",
                                        "fr": "Canadien.ne Français.e"
                                    },
                                    "value": "French Canadian"
                                },
                                {
                                    "label": {
                                        "en": "Indigenous peoples",
                                        "fr": "Autochtones"
                                    },
                                    "value": "First Nations"
                                },
                                {
                                    "label": {
                                        "en": "Hispanic or Latino",
                                        "fr": "Hispanique ou Latino"
                                    },
                                    "value": "Hispanic or Latino"
                                },
                                {
                                    "label": {
                                        "en": "African / Carribean / Afro American",
                                        "fr": "Africain.ne / Caribéen.ne / Afro Américain.e"
                                    },
                                    "value": "African/Carribean/Afro American"
                                },
                                {
                                    "label": {
                                        "en": "North African",
                                        "fr": "Nord-Africain.ne"
                                    },
                                    "value": "North African"
                                },
                                {
                                    "label": {
                                        "en": "Middle Eastern",
                                        "fr": "Moyen-Orient"
                                    },
                                    "value": "Middle Eastern"
                                },
                                {
                                    "label": {
                                        "en": "Chinese",
                                        "fr": "Chinois.e"
                                    },
                                    "value": "Chinese"
                                },
                                {
                                    "label": {
                                        "en": "South Asian (E.g. Indian, Pakistani, Sri Lankan)",
                                        "fr": "Sud-Asiatique (P.ex. Indien.ne, Pakistanais.e, Sri Lankais.e)"
                                    },
                                    "value": "South Asian"
                                },
                                {
                                    "label": {
                                        "en": "Southeast Asian (E.g. Filipino, Cambodian, Indonesian, Laotian, Vietnamese)",
                                        "fr": "Asiatique du Sud-Est (P.ex. Philippin.e, Cambodgien.ne, Indonésien.ne, Laotien.ne, Vietnamien.ne)"
                                    },
                                    "value": "Southeast Asian"
                                },
                                {
                                    "label": {
                                        "en": "Japanese",
                                        "fr": "Japonais.e"
                                    },
                                    "value": "Japanese"
                                },
                                {
                                    "label": {
                                        "en": "Korean",
                                        "fr": "Coréen.ne"
                                    },
                                    "value": "Korean"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "Other"
                                },
                                {
                                    "label": {
                                        "en": "Don''t know",
                                        "fr": "Je ne sais pas"
                                    },
                                    "value": "Don''t know"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je ne préfère pas répondre"
                                    },
                                    "value": "Prefer not to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Which of the following languages do you consider yourself fluent in (can read and speak)? Select all that apply.",
                                "fr": "Laquelle des langues suivantes considérez-vous que vous parlez couramment (savoir lire et parler)? (Sélectionnez tout ce qui s''applique)"
                            },
                            "key": "fluentLan",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "English",
                                        "fr": "Anglais"
                                    },
                                    "value": "English"
                                },
                                {
                                    "label": {
                                        "en": "French",
                                        "fr": "Français"
                                    },
                                    "value": "French"
                                },
                                {
                                    "label": {
                                        "en": "Neither",
                                        "fr": "Aucun des deux"
                                    },
                                    "value": "Neither"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you have color-blindness?",
                                "fr": "Êtes-vous daltonien.ne (déficience de la perception des couleurs)?"
                            },
                            "key": "colorBlindnss",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                },
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "Unsure",
                                        "fr": "Incertain.e"
                                    },
                                    "value": "Unsure"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you feel that your memory and thinking have gotten worse?",
                                "fr": "Avez-vous l''impression que votre mémoire et vos pensées se sont détériorées?"
                            },
                            "textContent": {
                                "en": "If you have Parkinson''s disease, consider the change since your diagnosis, or, if you don''t have Parkinson''s disease, consider the change in the last few years.",
                                "fr": "Si vous avez la maladie de Parkinson, considérez le changement depuis votre diagnostic ou, si vous n''avez pas la maladie de Parkinson, considérez le changement au cours des dernières années."
                            },
                            "key": "memory",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "Yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "No"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain.e"
                                    },
                                    "value": "Not sure"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 43;