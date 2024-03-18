
-- Stress Study Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Stress Study Questionnaire",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Le Questionnaire"
                    },
                    "questions": [
                        {
                            "questionType": "input",
                            "title": {
                                "en": "What is your age (in years)?",
                                "fr": "Quel âge avez-vous (en années)?"
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "min": 18
                            },
                            "key": "age"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What sex were you assigned at birth?",
                                "fr": "Quel sexe vous a-t-on attribué à la naissance?"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "sex",
                            "options": [
                                {
                                    "label": {
                                        "en": "Female",
                                        "fr": "Féminin"
                                    },
                                    "value": "female"
                                },
                                {
                                    "label": {
                                        "en": "Male",
                                        "fr": "Masculin"
                                    },
                                    "value": "male"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "How do you describe yourself?",
                                "fr": "Comment vous décrivez-vous?"
                            },
                            "key": "selfIdentification",
                            "options": [
                                {
                                    "label": {
                                        "en": "Female",
                                        "fr": "Femme"
                                    },
                                    "value": "female"
                                },
                                {
                                    "label": {
                                        "en": "Male",
                                        "fr": "Homme"
                                    },
                                    "value": "male"
                                },
                                {
                                    "label": {
                                        "en": "Nonbinary",
                                        "fr": "Non-binaire"
                                    },
                                    "value": "Nonbinary"
                                },
                                {
                                    "label": {
                                        "en": "Do not identify as female, male, or Nonbinary",
                                        "fr": "Je ne m''identifie ni comme femme, ni comme homme, ni comme non-binaire"
                                    },
                                    "value": "none"
                                }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you consider yourself to be:",
                                "fr": "Vous considérez-vous comme:"
                            },
                            "key": "sexuality",
                            "validation": {
                            "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Heterosexual (sexual relations with people of the opposite sex)",
                                        "fr": "Hétérosexuel (relations sexuelles avec des personnes du sexe opposé)"
                                    },
                                    "value": "Heterosexual"
                                },
                                {
                                    "label": {
                                        "en": "Homosexual, that is lesbian or gay (sexual relations with people of your own sex)",
                                        "fr": "Homosexuel, c''est-à-dire lesbienne ou gay (relations sexuelles avec des personnes de votre propre sexe)"
                                    },
                                    "value": "Homosexual"
                                },
                                {
                                    "label": {
                                        "en": "Bisexual (sexual relations with people of both sexes)",
                                        "fr": "Bisexuel (relations sexuelles avec des personnes des deux sexes)"
                                    },
                                    "value": "Bisexual"
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
                                        "en": "Do not wish to answer",
                                        "fr": "Je ne souhaite pas répondre"
                                    },
                                    "value": "Do not wish to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "input",
                            "key": "yearsOfEducation",
                            "title": {
                                "en": "How many years of education do you have (completing high school equals 12 years)?",
                                "fr": "Combien d''années d''études avez-vous (la fin du secondaire équivaut à 12 ans)?"
                            },
                            "validation": {
                                "isNumeric": true,
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "currentEmploymentStatus",
                            "title": {
                                "en": "What is your current employment status?",
                                "fr": "Quelle est votre situation d''emploi actuelle?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Employed Full-time (30+ hours a week)",
                                        "fr": "Employé à temps plein (30+ d''heures chaque semaine)"
                                    },
                                    "value": "Full-time"
                                },
                                {
                                    "label": {
                                        "en": "Employed Part-time",
                                        "fr": "Employé à temps partiel"
                                    },
                                    "value": "Part-time"
                                },
                                {
                                    "label": {
                                        "en": "Unemployed",
                                        "fr": "Au chômage"
                                    },
                                    "value": "Unemployed"
                                },
                                {
                                    "label": {
                                        "en": "Disability Leave",
                                        "fr": "Congé de maladie"
                                    },
                                    "value": "Disability Leave"
                                },
                                {
                                    "label": {
                                        "en": "Homemaker",
                                        "fr": "Au foyer"
                                    },
                                    "value": "Homemaker"
                                },
                                {
                                    "label": {
                                        "en": "Student",
                                        "fr": "Étudiant.e"
                                    },
                                    "value": "Student"
                                },
                                {
                                    "label": {
                                        "en": "Volunteer",
                                        "fr": "Bénévole"
                                    },
                                    "value": "Volunteer"
                                },
                                {
                                    "label": {
                                        "en": "Retired",
                                        "fr": "Retraité.e"
                                    },
                                    "value": "Retired"
                                },
                                {
                                    "label": {
                                        "en": "Do not wish to answer",
                                        "fr": "Je ne souhaite pas répondre"
                                    },
                                    "value": "Do not wish to answer"
                                }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What is your best estimate of the total household income received by all household members, from all sources, before taxes and deductions, in the past 12 months?",
                                "fr": "Quelle est votre meilleure estimation du revenu total du ménage reçu par tous les membres de votre ménage, de toutes sources, avant impôts et déductions, au cours des 12 derniers mois?"
                            },
                            "key": "householdIncome",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Less than $20,000",
                                        "fr": "Moins de 20.000$"
                                    },
                                    "value": "Less than $20,000"
                                },
                                {
                                    "label": {
                                        "en": "$20,000 or more, but less than $50,000",
                                        "fr": "20,000$ ou plus, mais moins de 50,000$"
                                    },
                                    "value": "$20,000 or more, but less than $50,000"
                                },
                                {
                                    "label": {
                                        "en": "$50,000 or more, but less than $100,000",
                                        "fr": "50,000$ ou plus, mais moins de 100,000$"
                                    },
                                    "value": "$50,000 or more, but less than $100,000"
                                },
                                {
                                    "label": {
                                        "en": "$100,000 or more, but less than $150,000",
                                        "fr": "100,000$ ou plus, mais moins de 150,000$"
                                    },
                                    "value": "$100,000 or more, but less than $150,000"
                                },
                                {
                                    "label": {
                                        "en": "$150,000 or more",
                                        "fr": "150,000$ ou plus"
                                    },
                                    "value": "$150,000 or more"
                                },
                                {
                                    "label": {
                                        "en": "Do not know",
                                        "fr": "Je ne sais pas"
                                    },
                                    "value": "Do not know"
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
                                "en": "What is your current marital/partner status?",
                                "fr": "Quel est votre état matrimonial/civil?"
                            },
                            "key": "marital",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Single, never married, or never lived with a partner",
                                        "fr": "Célibataire, jamais marié.e, ou n''a jamais vécu avec un.e partenaire"
                                    },
                                    "value": "Single, never married, or never lived with a partner"
                                },
                                {
                                    "label": {
                                        "en": "Married/Living with a partner in a domestic relationship",
                                        "fr": "Marié.e/Je vis avec un.e partenaire dans une relation familiale"
                                    },
                                    "value": "Married/Living with a partner in a domestic relationship"
                                },
                                {
                                    "label": {
                                        "en": "Widowed",
                                        "fr": "Veuf/Veuve"
                                    },
                                    "value": "Widowed"
                                },
                                {
                                    "label": {
                                        "en": "Divorced/Separated",
                                        "fr": "Divorcé.e/Séparé.e"
                                    },
                                    "value": "Divorced/Separated"
                                },
                                {
                                    "label": {
                                        "en": "In a relationship",
                                        "fr": "En couple"
                                    },
                                    "value": "In a relationship"
                                },
                                {
                                    "label": {
                                        "en": "Do not wish to disclose",
                                        "fr": "Je ne souhaite pas répondre"
                                    },
                                    "value": "Do not wish to disclose"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Which best describes your living situation?",
                                "fr": "Lequel décrit le mieux votre situation de vie?"
                            },
                            "key": "living",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Living Alone",
                                        "fr": "Je vis seul.e"
                                    },
                                    "value": "Living alone"
                                },
                                {
                                    "label": {
                                        "en": "Living with spouse/partner/significant other",
                                        "fr": "Je vis avec mon/ma conjoint.e/partenaire/autre personne chère"
                                    },
                                    "value": "Living with spouse/partner/significant other"
                                },
                                {
                                    "label": {
                                        "en": "Living with adult child/children",
                                        "fr": "Je vis avec enfant(s) adulte(s) "
                                    },
                                    "value": "Living with adult child/children"
                                },
                                {
                                    "label": {
                                        "en": "Living with other family",
                                        "fr": "Je vis avec un autre membre de ma famille"
                                    },
                                    "value": "Living with other family"
                                },
                                {
                                    "label": {
                                        "en": "Living with paid in-home care provider/aide",
                                        "fr": "Je vis avec un prestataire de soins à domicile"
                                    },
                                    "value": "Living with paid in-home care provider/aide"
                                },
                                {
                                    "label": {
                                        "en": "Living in assisted living facility",
                                        "fr": "Je vis en résidence, e.g. de retraités"
                                    },
                                    "value": "Living in assisted living facility"
                                },
                                {
                                    "label": {
                                        "en": "Living in nursing home",
                                        "fr": "Je vis en hébergement médicalisé/CHSLD"
                                    },
                                    "value": "Living in nursing home"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "Other"
                                }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "The following questions are about your health. By health, we mean not only the absence of disease or injury, but also physical, mental, and social well-being.",
                                "fr": "Les questions suivantes concernent votre santé. Par «santé», nous entendons non seulement l''absence de maladie ou de blessure, mais aussi le bien-être physique, mental et social."
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
                                "fr": "Avez-vous déjà été diagnostiqué.e avec: (Veuillez cocher tout ce qui s''applique)"
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
                                        "fr": "Infarctus du myocarde ou angine (crise cardiaque)"
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
                                        "fr": "Des maladies pulmonaires"
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
                                        "fr": "Ulcères ou autre maladie de l''estomac"
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
                                        "fr": "Maladie des reins"
                                    },
                                    "value": "Kidney disease"
                                },
                                {
                                    "label": {
                                        "en": "Osteoarthritis (degenerative)",
                                        "fr": "Arthrose ou arthrite (dégénérative)"
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
                                        "fr": "Dépression - actuellement sous traitement"
                                    },
                                    "value": "Depression - currently under treatment"
                                },
                                {
                                    "label": {
                                        "en": "Depression - but not currently receiving treatment",
                                        "fr": "Dépression - mais je ne reçois pas actuellement de traitement"
                                    },
                                    "value": "Depression - but not currently receiving treatment"
                                },
                                {
                                    "label": {
                                        "en": "Anxiety - currently under treatment",
                                        "fr": "Anxiété - actuellement sous traitement"
                                    },
                                    "value": "Anxiety - currently under treatment"
                                },
                                {
                                    "label": {
                                        "en": "Anxiety - but not currently receiving treatment",
                                        "fr": "Anxiété - mais je ne reçois pas actuellement de traitement"
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
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Is your eyesight (consider it after correction with use of glasses or corrective lenses if you use them):",
                                "fr": "Comment évalueriez-vous votre vue (après correction avec lunettes ou verres correcteurs si vous en portez)?"
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
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Do you have color-blindness?",
                                    "fr": "Avez-vous le daltonisme (déficience de la vision des couleurs)?"
                                },
                            "key": "color-blindness",
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
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "In the past 12 months, how many times have you been injured in a fall that limited your normal activities?",
                                "fr": "Au cours des 12 derniers mois, combien de fois avez-vous été blessé.e suite à une chute au point où vous étiez limité dans vos activités normales?"
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
                            "key": "divider3"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText4",
                            "title": {
                                "en": "Habits",
                                "fr": "Les Habitudes"
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
                                        "fr": "D''autres produits du tabac"
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
                                        "fr": "Aucune de ces substances"
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
                                "fr": "Quel est votre statut de fumeur actuellement?"
                            },
                            "key": "smoking",
                            "validation": {
                                "required": true
                            },
                            "options": [
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
                                        "en": "Quit in last 10 years",
                                        "fr": "J''ai arrêté au cours des 10 dernières années"
                                    },
                                    "value": "Quit in last 10 years"
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
                                        "en": "Quit in last 20 years",
                                        "fr": "J''ai arrêté au cours des 20 dernières années"
                                    },
                                    "value": "Quit in last 20 years"
                                },
                                {
                                    "label": {
                                        "en": "Quit >25 years ago",
                                        "fr": "J''ai arrêté, il y a plus de 25 ans"
                                    },
                                    "value": "Quit >25 years ago"
                                },
                                {
                                    "label": {
                                        "en": "Do not smoke",
                                        "fr": "Je ne fume pas"
                                    },
                                    "value": "Does not smoke"
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
                                "en": "How much time do you spend engaging in mental exercise (e.g. playing board games, cards, crossword puzzles, jigsaw puzzles, sudoku, playing a musical instrument)",
                                "fr": "Combien de temps passez-vous à faire de l''exercice mental (p.ex. jeux de société, cartes, mots croisés, casse-têtes, sudoku; jouer un instrument de musique)"
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
                            "key": "divider4"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText5",
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
                                "en": "Have you ever been told, or suspected yourself, that you seem to \\"act out your dreams\\" while asleep (for example, talking, punching, flailing your arms in the air, making running movements, etc.)?",
                                "fr": "Est-ce que quelqu''un vous a déjà dit ou vous avez suspecté vous-même que vous sembliez agir pendant vos rêves (p.ex. parler, donner des coups, mettre vos bras en l''air, faire des mouvements de course, etc.)?"
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
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText6",
                            "title": {
                                "en": "The following questions are general questions about you. If you don''t have Parkinson''s disease (PD), not all of them will apply to you, so select the \\"I don''t have Parkinson''s disease\\" option.",
                                "fr": "Les questions suivantes sont des questions générales sur vous. Si vous n''avez pas la maladie de Parkinson (MP), elles ne s''appliqueront pas toutes à vous, alors sélectionnez l''option \\"Je n''ai pas la maladie de Parkinson\\"."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Do you have a diagnosis of Parkinson’s disease given to you by a doctor (e.g. family doctor or neurologist)?",
                                "fr": "Avez-vous été donné un diagnostic de la maladie de Parkinson par un médecin (par exemple, un médecin de famille ou neurologue)?"
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
                                "en": "In what year were you given your diagnosis of Parkinson''s disease? Please enter zero (0) if you DON''T have Parkinson''s disease.",
                                "fr": "En quelle année avez-vous reçu votre diagnostic de la maladie de Parkinson? Si vous n''avez PAS la maladie de Parkinson, entrez zéro (0)"
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "min": 0,
                                "max": 2050
                            },
                            "key": "parkinsonsDiagnosisYear"
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
                                        "en": "I have PD but don''t take medications for it",
                                        "fr": "J''ai la MP mais je ne prends pas de médicaments pour ça"
                                    },
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": {
                                        "en": "I have PD and I take medications for it",
                                        "fr": "J''ai la MP et je prend des médicaments pour ça"
                                    },
                                    "value": "I have PD and I take medications for it"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider5"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText7",
                            "title": {
                                "en": "If you answered previously that you do take Parkinson''s disease medication, how long ago did you take it?",
                                "fr": "Si vous avez répondu précédemment que vous prenez des médicaments pour votre maladie de Parkinson, quand avez-vous pris votre dernière dose?"
                            }
                        },
                        {
                            "questionType": "input",
                            "textContent": {
                                "en": "If you answered that you don''t take any Parkinson''s medication in the last question, please write \\"0\\".",
                                "fr": "Si vous avez répondu que vous ne prenez aucun médicament pour la maladie de Parkinson à la dernière question, veuillez écrire \\"0\\"."
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
                            "key": "divider6"
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you feel ON (i.e. can feel that the PD medications are taking effect) or OFF (i.e. medications are not currently taking effect)?",
                                "fr": "Vous sentez-vous «ON» (c.-à-d. sentir que les médicaments de la MP font effet) ou «OFF» (c.-à-d. sentir que les médicaments ne font pas actuellement effet)?"
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
                                        "fr": "Je me sens «ON»"
                                    },
                                    "value": "I feel ON"
                                },
                                {
                                    "label": {
                                        "en": "I feel OFF",
                                        "fr": "Je me sens «OFF»"
                                    },
                                    "value": "I feel OFF"
                                },
                                {
                                    "label": {
                                        "en": "I cannot tell the difference between ON and OFF",
                                        "fr": "Je ne ressens pas la différence entre ON et OFF"
                                    },
                                    "value": "I can not tell the difference"
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
                                        "fr": "Non, mais je pense j''ai une déficience cognitive"
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
                                        "en": "Yes, my biological mother or father has/had Parkinson’s disease",
                                        "fr": "Oui, ma mère/mon père biologiques ont/avaient la maladie de Parkinson"
                                    },
                                    "value": "Yes, biological mother or father"
                                },
                                {
                                    "label": {
                                        "en": "Yes, one of my siblings has/had Parkinson’s disease",
                                        "fr": "Oui, un.e de mes frères/sœurs a/avait la maladie de Parkinson"
                                    },
                                    "value": "Yes, siblings"
                                },
                                {
                                    "label": {
                                        "en": "Yes, one of my children has/had Parkinson’s disease",
                                        "fr": "Oui, un.e de mes enfants a/avait la maladie de Parkinson"
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
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What is your handedness?",
                                "fr": "Quelle est votre main dominante?"
                            },
                            "key": "handedness",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
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
                                }
                        ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "To which group do you culturally belong or identify with? (Select all that apply)",
                                "fr": "Avec quel groupe vous identifiez-vous? (Sélectionnez tous ceux ce qui s''appliquent)"
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
                                        "en": "First Nations",
                                        "fr": "Premières Nations"
                                    },
                                    "value": "First Nations"
                                },
                                {
                                    "label": {
                                        "en": "Hispanic or Latino",
                                        "fr": "Hispanique ou Latino"
                                    },
                                    "value": "Hispanic/Hispanique or Latino"
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
                                        "fr": "Asiatique du Sud-Est (P.ex. philippin.e, cambodgien.ne, indonésien.ne, laotien.ne, vietnamien.ne)"
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
                                        "fr": "Je préfère ne pas répondre"
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
                                "en": "Do you feel that your memory and thinking have gotten worse?",
                                "fr": "Avez-vous l''impression que votre mémoire et votre fonctionnement cognitif se sont détériorés?"
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
WHERE id = 51;