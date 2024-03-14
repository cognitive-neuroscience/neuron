
-- General Health Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "General Health Questionnaire",
    description = "General Health Questionnaire",
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
                            "key": "displayText4",
                            "title": {
                                "en": "Social situation",
                                "fr": "La Situation Sociale"
                            }
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
                                        "fr": "Marié.e/Je vis avec un.e partenaire dans une relation domestique"
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
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "Do not wish to answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Which of these best describes your total household income, from all sources, and from all household members, in the past 12 months?",
                                "fr": "Laquelle de ces options décrit le mieux le revenu total de votre ménage, de toutes sources, et de toutes les personnes de votre ménage, au cours des 12 derniers mois?"
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
                                        "fr": "20.000$ ou plus, mais moins de 50.000$"
                                    },
                                    "value": "$20,000 or more, but less than $50,000"
                                },
                                {
                                    "label": {
                                        "en": "$50,000 or more, but less than $100,000",
                                        "fr": "50.000$ ou plus, mais moins de 100.000$"
                                    },
                                    "value": "$50,000 or more, but less than $100,000"
                                },
                                {
                                    "label": {
                                        "en": "$100,000 or more, but less than $150,000",
                                        "fr": "100.000$ ou plus, mais moins de 150.000$"
                                    },
                                    "value": "$100,000 or more, but less than $150,000"
                                },
                                {
                                    "label": {
                                        "en": "$150,000 or more",
                                        "fr": "150.000$ ou plus"
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
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "Do not wish to answer"
                                }
                            ]
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
                                        "fr": "Employé à temps plein (30+ heures par semaine)"
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
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "Do not wish to answer"
                                }
                            ],
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "divider",
                            "key": "divider5"
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
WHERE id = 45;