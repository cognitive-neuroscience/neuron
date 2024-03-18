
-- SHORTENED BASIC BACKGROUND QUESTIONNAIRE
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Shortened Background Questionnaire",
    description = "Shortened Background Questionnaire",
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
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have there been any major changes to your health in the <b>last 3 months</b>? Please select from the list below the changes that apply to you.",
                                "fr": "Y-a-t’il eu des changements importants à votre santé dans les <b>3 derniers mois</b>? Sélectionnez les changements qui s’appliquent à vous de la liste suivante: "
                            },
                            "key": "healthChanges",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "Changes in Parkinson''s disease medications",
                                        "fr": "Changements de la médication pour le Parkinson"
                                    },
                                    "value": "ParkinsonChanges"
                                },
                                {
                                    "label": {
                                        "en": "Changes in mood medications",
                                        "fr": "Changements de la médication pour l’humeur"
                                    },
                                    "value": "moodChanges"
                                },
                                {
                                    "label": {
                                        "en": "Changes in medications for cognition or memory",
                                        "fr": "Changements de la médication pour la cognition/mémoire"
                                    },
                                    "value": "cognitionChanges"
                                },
                                {
                                    "label": {
                                        "en": "New diagnosis of Mild Cognitive Impairment or Dementia",
                                        "fr": "Nouveau diagnostic de Trouble Cognitif Léger (TCL ou de Démence)"
                                    },
                                    "value": "MCIDiagnosis"
                                },
                                {
                                    "label": {
                                        "en": "New diagnosis of neurological condition (e.g. stroke, seizure, brain tumor, significant head trauma)",
                                        "fr": "Nouveau diagnostic neurologique (ex., accident cérébral vasculaire, épilepsie, tumeur au cerveau, traumatisme crânien important)"
                                    },
                                    "value": "NeuroDiagnosis"
                                },
                                {
                                    "label": {
                                        "en": "Don’t know",
                                        "fr": "Je ne sais pas"
                                    },
                                    "value": "Don''tKnow"
                                },
                                {
                                    "label": {
                                        "en": "No changes in the last 3 months",
                                        "fr": "Aucun changement dans les 3 derniers mois"
                                    },
                                    "value": "NoChanges"
                                }
                            ]
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
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 76;