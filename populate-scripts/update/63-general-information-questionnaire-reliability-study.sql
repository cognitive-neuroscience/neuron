
-- General Information Questionnaire - Reliability Study
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "General Information Questionnaire - Reliability Study",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "General Information Questionnaire - Reliability study",
                        "fr": "Questionnaire d''information générale - Étude de fiabilité"
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "We just need to ask you a few questions again. If you don''t have Parkinson''s disease (PD), not all of them will apply to you, so select the \\"I don''t have Parkinson''s disease\\" option.",
                                "fr": "Nous devons vous re-demander seulement quelques questions. Si vous n''avez pas la maladie de Parkinson (MP), certaines des questions ne s''appliqueront pas à vous, alors sélectionnez l''option \\"Je n''ai pas la maladie de Parkinson\\"."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Do you have a diagnosis of Parkinson''s disease given to you by a doctor (e.g. family doctor or neurologist)?",
                                "fr": "Avez-vous un diagnostic de la maladie de Parkinson qui vous a été donné par un médecin (p.ex. un médecin de famille ou un neurologue)?"
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
                                        "fr": "Non, mais je pense que j''ai la maladie de Parkinson"
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
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "If you take Parkinson’s disease medication, how long ago did you take the last dose?",
                                "fr": "Si vous prenez des médicaments pour votre maladie de Parkinson, il y a combien de temps que vous avez pris la dernière dose?"
                            }
                        },
                        {
                            "questionType": "input",
                            "textContent": {
                                "en": "If you don''t take any Parkinson’s medication, please write \\"0\\".",
                                "fr": "Si vous ne prenez aucun médicament contre la maladie de Parkinson, veuillez écrire \\"0\\"."
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
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you currently feel ON (i.e. can feel that the PD medications are taking effect) or OFF (i.e. medications are not currently taking effect)?",
                                "fr": "Vous sentez-vous présentement ''ON'' (c.-à-d. sentir que les médicaments de la MP font effet) ou ''OFF'' (c.-à-d. sentir que les médicaments ne font pas actuellement effet)?"
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
                                        "en": "I have PD but don''t take medications for it",
                                        "fr": "J''ai la MP mais je ne prends pas de médicaments pour ça"
                                    },
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": {
                                        "en": "I feel ON",
                                        "fr": "Je me sens ''ON''"
                                    },
                                    "value": "I feel ON"
                                },
                                {
                                    "label": {
                                        "en": "I feel OFF",
                                        "fr": "Je me sens ''OFF''"
                                    },
                                    "value": "I feel OFF"
                                },
                                {
                                    "label": {
                                        "en": "I can not tell the difference",
                                        "fr": "Je ne ressens pas la différence entre ON et OFF"
                                    },
                                    "value": "I can not tell the difference"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have there been any major changes to your Parkinson''s disease treatment, or to your health more generally, in the last few months that you think could affect your performance on the brain games or how you respond to the questionnaires about mood? (Select all that apply)",
                                "fr": "Y a-t-il eu, au cours des derniers mois, des changements importants dans votre traitement pour le Parkinson, ou plus généralement dans votre santé, qui pourraient, selon vous, affecter votre performance dans les jeux de cerveau ou vos réponses dans les questionnaires sur l''humeur? (Veuillez sélectionner toutes les réponses qui s''appliquent)"
                            },
                            "key": "otherMeds",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "No major changes",
                                        "fr": "Aucun changement important"
                                    },
                                    "value": "No change"
                                },
                                {
                                    "label": {
                                        "en": "Significant increase or decrease in PD medications",
                                        "fr": "Augmentation ou diminution importante de mes médicaments pour la MP"
                                    },
                                    "value": "PD medication change"
                                },
                                {
                                    "label": {
                                        "en": "Significant mood changes",
                                        "fr": "Changements importants d''humeur"
                                    },
                                    "value": "Mood change"
                                },
                                {
                                    "label": {
                                        "en": "New medication for mood symptoms, or increase of existing medication",
                                        "fr": "Prescription d''un nouveau médicament pour les symptômes d''humeur, ou augmentation de médicament existant"
                                    },
                                    "value": "Med for mood"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "Other"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 63;