-- Geriatric Depression Scale Short Form

UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Modified: General Health Questionnaire",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "General Health Questionnaire",
                        "fr": "Le questionnaire sur la santé général"
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "The following questions are about your health. By health, we mean not only the absence of disease or injury, but also physical, mental, and social well-being.",
                                "fr": "Les questions suivantes concernent votre santé. Par «santé», nous voulons dire non seulement l''absence de maladie ou de blessure, mais aussi votre bien-être physique, mental et social."
                            }
                        },
                        {
                            "questionType": "divider",
                            "key": "divider1"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "Physical Health",
                                "fr": "La Santé Physique"
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have you ever been diagnosed with: (Please check all that apply)",
                                "fr": "Avez-vous déjà été diagnostiqué.e avec : (Veuillez cocher tout ce qui s''applique)"
                            },
                            "key": "physicalHealthDiagnosis",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "Cancer",
                                        "fr": "Cancer"
                                    },
                                    "value": "Cancer"
                                },
                                {
                                    "label": {
                                        "en": "Myocardial infarction or angina (heart attack)",
                                        "fr": "Infarctus du myocarde ou angine (la crise cardiaque)"
                                    },
                                    "value": "Myocardial infarction or angina"
                                },
                                {
                                    "label": {
                                        "en": "Transient ischemic attack (TIA)",
                                        "fr": "Accident ischémique transitoire (AIT)"
                                    },
                                    "value": "TIA"
                                },
                                {
                                    "label": {
                                        "en": "Cerebrovascular accident (stroke)",
                                        "fr": "Accident vasculaire cérébral (AVC)"
                                    },
                                    "value": "Stroke"
                                },
                                {
                                    "label": {
                                        "en": "Epilepsy or seizures",
                                        "fr": "Épilepsie ou Convulsions"
                                    },
                                    "value": "Epilepsy or seizures"
                                },
                                {
                                    "label": {
                                        "en": "Major head injury/trauma with lasting consequences",
                                        "fr": "Blessure/traumatisme crânien majeur avec des conséquences à long terme"
                                    },
                                    "value": "Major head injury/trauma with lasting consequences"
                                },
                                {
                                    "label": {
                                        "en": "Respiratory problems",
                                        "fr": "Problèmes respiratoires"
                                    },
                                    "value": "Respiratory problems"
                                },
                                {
                                    "label": {
                                        "en": "Lung disease",
                                        "fr": "Maladies pulmonaires"
                                    },
                                    "value": "Lung disease"
                                },
                                {
                                    "label": {
                                        "en": "Anemia or other blood disease",
                                        "fr": "Anémie ou autre maladie du sang"
                                    },
                                    "value": "Anemia or other blood disease"
                                },
                                {
                                    "label": {
                                        "en": "Hypertension (high blood pressure)",
                                        "fr": "Hypertension (pression artérielle élevée)"
                                    },
                                    "value": "Hypertension"
                                },
                                {
                                    "label": {
                                        "en": "Hypotension (low blood pressure)",
                                        "fr": "Hypotension (pression artérielle basse)"
                                    },
                                    "value": "Hypotension"
                                },
                                {
                                    "label": {
                                        "en": "Diabetes",
                                        "fr": "Diabète"
                                    },
                                    "value": "Diabetes"
                                },
                                {
                                    "label": {
                                        "en": "Hypercholesterolemia (high cholesterol)",
                                        "fr": "Hypercholestérolémie (cholestérol élevé)"
                                    },
                                    "value": "Hypercholesterolemia"
                                },
                                {
                                    "label": {
                                        "en": "Ulcers or stomach disease",
                                        "fr": "Ulcères ou maladie de l''estomac"
                                    },
                                    "value": "Ulcers or stomach disease"
                                },
                                {
                                    "label": {
                                        "en": "Inflammatory bowel disease (IBD)",
                                        "fr": "Maladie inflammatoire de l''intestin (MII)"
                                    },
                                    "value": "IBD"
                                },
                                {
                                    "label": {
                                        "en": "Liver disease",
                                        "fr": "Maladie du foie"
                                    },
                                    "value": "Liver disease"
                                },
                                {
                                    "label": {
                                        "en": "Kidney disease",
                                        "fr": "Maladie du rein"
                                    },
                                    "value": "Kidney disease"
                                },
                                {
                                    "label": {
                                        "en": "Osteoarthritis (degenerative)",
                                        "fr": "Arthrose (dégénérative)"
                                    },
                                    "value": "Osteoarthritis (degenerative)"
                                },
                                {
                                    "label": {
                                        "en": "Rheumatoid Arthritis (i.e. autoimmune arthritis)",
                                        "fr": "Polyarthrite rhumatoïde (c.-à-d. arthrite auto-immune)"
                                    },
                                    "value": "Rheumatoid Arthritis"
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
                                        "en": "None of these",
                                        "fr": "Aucune de ces maladies"
                                    },
                                    "value": "None of these"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider2"
                        },
                        {
                            "questionType": "displayText",
                            "key": "cognitive-health-header",
                            "title": {
                                "en": "Cognitive Health",
                                "fr": "La Santé Cognitive"
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you have a diagnosis of dementia or Alzheimer''s disease given to you by a doctor?",
                                "fr": "Avez-vous un diagnostic de démence ou de maladie de Alzheimer qui vous a été donné par un médecin?"
                            },
                            "key": "do-you-have-a-diagnosis-of-dementia-or-alzheimers-disease-given-by-doctor",
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
                            "key": "do-you-have-a-diagnosis-of-mild-cognitive-impairment-mci-given-by-doctor",
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
                                "en": "Do you feel that your memory and thinking have gotten worse?",
                                "fr": "Avez-vous l''impression que votre mémoire et vos pensées se sont détériorées?"
                            },
                            "textContent": {
                                "en": "If you have Parkinson''s disease, consider the change since your diagnosis, or, if you don''t have Parkinson''s disease, consider the change in the last few years.",
                                "fr": "Si vous avez la maladie de Parkinson, considérez le changement depuis votre diagnostic ou, si vous n''avez pas la maladie de Parkinson, considérez le changement au cours des dernières années."
                            },
                            "key": "do-you-feel-that-your-memory-and-thinking-have-gotten-worse",
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
                        },
                        {
                            "questionType": "divider",
                            "key": "divider2"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText3",
                            "title": {
                                "en": "Mental Health",
                                "fr": "La Santé Mentale"
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have you ever been diagnosed with: (Please check all that apply)",
                                "fr": "Avez-vous déjà été diagnostiqué.e avec: (Veuillez cocher tout ce qui s''applique)"
                            },
                            "key": "mentalHealthDiagnosis",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "Depression - currently under treatment",
                                        "fr": "Dépression - présentement sous traitement"
                                    },
                                    "value": "Depression - currently under treatment"
                                },
                                {
                                    "label": {
                                        "en": "Depression - but not currently receiving treatment",
                                        "fr": "Dépression - mais je ne reçois pas présentement de traitement"
                                    },
                                    "value": "Depression - but not currently receiving treatment"
                                },
                                {
                                    "label": {
                                        "en": "Anxiety - currently under treatment",
                                        "fr": "Anxiété - présentement sous traitement"
                                    },
                                    "value": "Anxiety - currently under treatment"
                                },
                                {
                                    "label": {
                                        "en": "Anxiety - but not currently receiving treatment",
                                        "fr": "Anxiété - mais je ne reçois pas présentement de traitement"
                                    },
                                    "value": "Anxiety - but not currently receiving treatment"
                                },
                                {
                                    "label": {
                                        "en": "Obsessive Compulsive Disorder",
                                        "fr": "Trouble Obsessionnel Compulsif"
                                    },
                                    "value": "Obsessive Compulsive Disorder"
                                },
                                {
                                    "label": {
                                        "en": "Bipolar Disorder",
                                        "fr": "Trouble bipolaire"
                                    },
                                    "value": "Bipolar Disorder"
                                },
                                {
                                    "label": {
                                        "en": "Schizophrenia",
                                        "fr": "Schizophrénie"
                                    },
                                    "value": "Schizophrenia"
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
                                        "en": "No history of mental health problems",
                                        "fr": "Aucun antécédent de problèmes de santé mentale"
                                    },
                                    "value": "No history of mental health problems"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider3"
                        },
                        {
                            "questionType": "displayText",
                            "key": "general-health-header",
                            "title": {
                                "en": "General Health",
                                "fr": "Santé Générale"
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have you gone through menopause, meaning that your menstrual period stopped for at least one year and did not restart?",
                                "fr": "Êtes-vous déjà passée par la ménopause (c.-à-d. vos menstruations sont arrêtées depuis au moins 1 an)?"
                            },
                            "key": "menopause",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "No, have not gone through menopause",
                                        "fr": "Non, je ne suis pas passée par la ménopause"
                                    },
                                    "value": "No, have not gone through menopause"
                                },
                                {
                                    "label": {
                                        "en": "Yes, have gone through menopause",
                                        "fr": "Oui, je suis passée par la ménopause"
                                    },
                                    "value": "Yes, have gone through menopause"
                                },
                                {
                                    "label": {
                                        "en": "Not applicable",
                                        "fr": "Ne s''applique pas"
                                    },
                                    "value": "Not applicable"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "How do you you consider your eyesight? (consider your vision once corrected with glasses or corrective lenses, if you use them)",
                                "fr": "Comment évalueriez-vous votre vue? (considérez votre vue une fois corrigée à l''aide de lunettes ou de verres correcteurs, si vous en portez)"
                            },
                            "key": "eyesight",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Excellent",
                                        "fr": "Excellente"
                                    },
                                    "value": "Excellent"
                                },
                                {
                                    "label": {
                                        "en": "Good",
                                        "fr": "Bonne"
                                    },
                                    "value": "Good"
                                },
                                {
                                    "label": {
                                        "en": "Poor",
                                        "fr": "Faible"
                                    },
                                    "value": "Poor"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "In the past 12 months, how many times have you been injured in a fall, to the point of being limited your normal activities?",
                                "fr": "Au cours des 12 derniers mois, combien de fois avez-vous été blessé.e suite à une chute, au point où vous étiez limité.e dans vos activités normales?"
                            },
                            "key": "injury",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "None",
                                        "fr": "Zéro"
                                    },
                                    "value": "None"
                                },
                                {
                                    "label": {
                                        "en": "1",
                                        "fr": "1"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "2 to 5",
                                        "fr": "2 à 5"
                                    },
                                    "value": "2 to 5"
                                },
                                {
                                    "label": {
                                        "en": "6 to 10",
                                        "fr": "6 à 10"
                                    },
                                    "value": "6 to 10"
                                },
                                {
                                    "label": {
                                        "en": "More than 10",
                                        "fr": "Plus de 10"
                                    },
                                    "value": "More than 10"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider4"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText5",
                            "title": {
                                "en": "Habits",
                                "fr": "Habitudes de vie"
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you currently use any of the following? (check all that apply)",
                                "fr": "Consommez-vous actuellement l''un des suivants? (Veuillez cocher tout ce qui s''applique)"
                            },
                            "key": "substanceUse",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "Alcohol",
                                        "fr": "Alcool"
                                    },
                                    "value": "Alcohol"
                                },
                                {
                                    "label": {
                                        "en": "Cigarettes",
                                        "fr": "Cigarettes"
                                    },
                                    "value": "Cigarettes"
                                },
                                {
                                    "label": {
                                        "en": "Other tobacco products",
                                        "fr": "Autres produits de tabac"
                                    },
                                    "value": "Other tobacco products"
                                },
                                {
                                    "label": {
                                        "en": "Recreational drugs",
                                        "fr": "Drogues récréatives"
                                    },
                                    "value": "Recreational drugs"
                                },
                                {
                                    "label": {
                                        "en": "Cannabis",
                                        "fr": "Cannabis"
                                    },
                                    "value": "Cannabis"
                                },
                                {
                                    "label": {
                                        "en": "None of the above",
                                        "fr": "Aucune de ces réponses"
                                    },
                                    "value": "None of the above"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have you smoked at least 100 cigarettes in your life?",
                                "fr": "Avez-vous fumé au moins 100 cigarettes dans votre vie?"
                            },
                            "key": "cigarettes",
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
                                        "en": "Don''t know",
                                        "fr": "Je ne sais pas"
                                    },
                                    "value": "Don''t know"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What is your current smoking status?",
                                "fr": "Quel est votre statut de fumeur actuel?"
                            },
                            "key": "smoking",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Not a smoker",
                                        "fr": "Je ne fume pas"
                                    },
                                    "value": "Not a smoker"
                                },
                                {
                                    "label": {
                                        "en": "Current smoker: 20 or more cigarettes per day",
                                        "fr": "Fumeur actuel : 20 cigarettes ou plus par jour"
                                    },
                                    "value": "Current smoker: 20 or more cigarettes per day"
                                },
                                {
                                    "label": {
                                        "en": "Current smoker: 10-19 cigarettes per day",
                                        "fr": "Fumeur actuel : 10 à 19 cigarettes par jour"
                                    },
                                    "value": "Current smoker: 10-19 cigarettes per day"
                                },
                                {
                                    "label": {
                                        "en": "Current smoker: 0-9 cigarettes per day",
                                        "fr": "Fumeur actuel : 0 à 9 cigarettes par jour"
                                    },
                                    "value": "Current smoker: 0-9 cigarettes per day"
                                },
                                {
                                    "label": {
                                        "en": "Quit in last year",
                                        "fr": "J''ai arrêté l''année dernière"
                                    },
                                    "value": "Quit in last year"
                                },
                                {
                                    "label": {
                                        "en": "Quit in last 5 years",
                                        "fr": "J''ai arrêté au cours des 5 dernières années"
                                    },
                                    "value": "Quit in last 5 years"
                                },
                                {
                                    "label": {
                                        "en": "Quit in last 15 years",
                                        "fr": "J''ai arrêté au cours des 15 dernières années"
                                    },
                                    "value": "Quit in last 15 years"
                                },
                                {
                                    "label": {
                                        "en": "Quit in last 25 years",
                                        "fr": "J''ai arrêté au cours des 25 dernières années"
                                    },
                                    "value": "Quit in last 25 years"
                                },
                                {
                                    "label": {
                                        "en": "Quit >25 years ago",
                                        "fr": "J''ai arrêté il y a plus de 25 ans"
                                    },
                                    "value": "Quit >25 years ago"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have you ever drank alcohol?",
                                "fr": "Avez-vous déjà consommé de l''alcool?"
                            },
                            "key": "alcohol",
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
                                        "en": "Do not wish to answer",
                                        "fr": "Je ne souhaite pas répondre"
                                    },
                                    "value": "Do not wish to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "About how often during the past 12 months did you drink alcohol?",
                                "fr": "À quelle fréquence (approximativement) au cours des 12 derniers mois avez-vous consommé de l''alcool?"
                            },
                            "key": "alcoholUse",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Almost every day (6-7 times a week)",
                                        "fr": "Presque tous les jours (6-7 fois par semaine)"
                                    },
                                    "value": "Almost every day"
                                },
                                {
                                    "label": {
                                        "en": "4-5 times a week",
                                        "fr": "4-5 fois par semaine"
                                    },
                                    "value": "4-5 times a week"
                                },
                                {
                                    "label": {
                                        "en": "2-3 times a week",
                                        "fr": "2-3 fois par semaine"
                                    },
                                    "value": "2-3 times a week"
                                },
                                {
                                    "label": {
                                        "en": "Once a week",
                                        "fr": "Une fois par semaine"
                                    },
                                    "value": "Once a week"
                                },
                                {
                                    "label": {
                                        "en": "2-3 times a month",
                                        "fr": "2-3 fois par mois"
                                    },
                                    "value": "2-3 times a month"
                                },
                                {
                                    "label": {
                                        "en": "About once a month",
                                        "fr": "Environ une fois par mois"
                                    },
                                    "value": "Once a month"
                                },
                                {
                                    "label": {
                                        "en": "Less than once a month",
                                        "fr": "Moins d''une fois par mois"
                                    },
                                    "value": "Less than once a month"
                                },
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "Never"
                                },
                                {
                                    "label": {
                                        "en": "Do not wish to answer",
                                        "fr": "Je ne souhaite pas répondre"
                                    },
                                    "value": "Do not wish to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "How much time do you spend engaging in mental exercise (e.g. playing board games, cards, crossword puzzles, jigsaw puzzles, sudoku, playing a musical instrument, etc.)",
                                "fr": "Combien de temps passez-vous à faire de l''exercice mental (p.ex. jeux de société, cartes, mots croisés, casse-têtes, sudoku; jouer un instrument de musique, etc.)"
                            },
                            "key": "mentalExercise",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Every day",
                                        "fr": "Tous les jours"
                                    },
                                    "value": "Every day"
                                },
                                {
                                    "label": {
                                        "en": "Several times a week",
                                        "fr": "Plusieurs fois par semaine"
                                    },
                                    "value": "Several times a week"
                                },
                                {
                                    "label": {
                                        "en": "Several times a month",
                                        "fr": "Plusieurs fois par mois"
                                    },
                                    "value": "Several times a month"
                                },
                                {
                                    "label": {
                                        "en": "Several times a year",
                                        "fr": "Plusieurs fois par année"
                                    },
                                    "value": "Several times a year"
                                },
                                {
                                    "label": {
                                        "en": "Once a year or less",
                                        "fr": "Une fois par année ou moins"
                                    },
                                    "value": "Once a year or less"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "How often do you exercise?",
                                "fr": "À quelle fréquence faites-vous de l''activité physique?"
                            },
                            "key": "exercise",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Less than 1 time per week",
                                        "fr": "Moins d''une fois par semaine"
                                    },
                                    "value": "Less than 1 time per week"
                                },
                                {
                                    "label": {
                                        "en": "1 to 2 days per week",
                                        "fr": "1 à 2 jours par semaine"
                                    },
                                    "value": "1 to 2 days per week"
                                },
                                {
                                    "label": {
                                        "en": "3 to 5 days per week",
                                        "fr": "3 à 5 jours par semaine"
                                    },
                                    "value": "3 to 5 days per week"
                                },
                                {
                                    "label": {
                                        "en": "6 to 7 days per week",
                                        "fr": "6 à 7 jours par semaine"
                                    },
                                    "value": "6 to 7 days per week"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "How long is one exercise session approximately?",
                                "fr": "Environ combien de temps dure une séance d''exercice?"
                            },
                            "key": "exerciseSession",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Less than 30 minutes",
                                        "fr": "Moins de 30 minutes"
                                    },
                                    "value": "Less than 30 minutes"
                                },
                                {
                                    "label": {
                                        "en": "30 to 60 minutes",
                                        "fr": "30 à 60 minutes"
                                    },
                                    "value": "30 to 60 minutes"
                                },
                                {
                                    "label": {
                                        "en": "1 to 2 hours",
                                        "fr": "1 à 2 heures"
                                    },
                                    "value": "1 to 2 hours"
                                },
                                {
                                    "label": {
                                        "en": "More than 2 hours",
                                        "fr": "Plus de 2 heures"
                                    },
                                    "value": "More than 2 hours"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider6"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText6",
                            "title": {
                                "en": "Sleep",
                                "fr": "Le Sommeil"
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "How often is your sleep restless?",
                                "fr": "À quelle fréquence votre sommeil est-il agité?"
                            },
                            "key": "restlessSleep",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "All of the time (5-7 days per week)",
                                        "fr": "Tout le temps (5 à 7 jours par semaine)"
                                    },
                                    "value": "All of the time"
                                },
                                {
                                    "label": {
                                        "en": "Occasionally (3-4 days per week)",
                                        "fr": "Parfois (3 à 4 jours par semaine)"
                                    },
                                    "value": "Occasionally"
                                },
                                {
                                    "label": {
                                        "en": "Some of the time (1-2 days per week)",
                                        "fr": "Quelques fois (1 à 2 jours par semaine)"
                                    },
                                    "value": "Some of the time"
                                },
                                {
                                    "label": {
                                        "en": "Rarely or never (less than 1 day per week)",
                                        "fr": "Rarement ou jamais (moins de 1 jours par semaine"
                                    },
                                    "value": "Rarely or never"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Have you ever been told, or suspected yourself, that you seem to \\"act out your dreams\\" while asleep (for example, punching, flailing your arms in the air, making running movements, etc.)?",
                                "fr": "Vous a-t-on déjà dit ou avez-vous déjà remarqué que vous reproduisiez physiquement la gestuelle de vos rêves / mouvements lorsque vous rêvez? (Exemple : coup de poing dans le vide, fouetter dans l''air, mouvements de courir)"
                            },
                            "key": "actOutSleep",
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
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 89;