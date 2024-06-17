
-- Everyday Choice Demographics Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Everyday Choice Demographics Questionnaire",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Everyday Choice Demographic Questionnaire",
                        "fr": "Everyday Choice Questionnaire"
                    },
                    "questions": [
                        {
                            "questionType": "input",
                            "title": {
                                "en": "What is your age (in years)?",
                                "fr": "Quel âge avez-vous actuellement?"
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
                                        "en": "Transgender",
                                        "fr": "Transgenre"
                                    },
                                    "value": "transgender"
                                },
                                {
                                    "label": {
                                        "en": "Do not identify as female, male, or transgender",
                                        "fr": "Je ne m''identifie ni comme femme, ni comme homme, ni comme transgenre"
                                    },
                                    "value": "Do not identify as female, male, or transgender"
                                }
                            ]
                        },
                        {
                            "questionType": "input",
                            "key": "yearsOfEducation",
                            "title": {
                                "en": "How many years of education do you have (completing high school equals 12 years)?",
                                "fr": "Combien d''années d''étude avez-vous complété (fin du secondaire équivaut à 12 années)?"
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
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "We expect to reach people from many different cultural and racial backgrounds with this internet study. Which group do you identify with? (Select all that apply)",
                                "fr": "Nous prévoyons rejoindre des personnes issues de différents milieux culturels avec cette étude en-ligne. À quel groupe vous identifiez-vous? (Sélectionnez tous ceux qui s''appliquent)"
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
                                        "fr": "Blanc / Caucasien"
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
                                        "fr": "Africain / Caribéen / Afro Américain"
                                    },
                                    "value": "African/Carribean/Afro American"
                                },
                                {
                                    "label": {
                                        "en": "North African",
                                        "fr": "Nord-Africain"
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
                                        "fr": "Chinois"
                                    },
                                    "value": "Chinese"
                                },
                                {
                                    "label": {
                                        "en": "South Asian (E.g. Indian, Pakistani, Sri Lankan)",
                                        "fr": "Sud-Asiatique (par exemple Indien, Pakistanais, Sri Lankais)"
                                    },
                                    "value": "South Asian"
                                },
                                {
                                    "label": {
                                        "en": "Southeast Asian (E.g. Filipino, Cambodian, Indonesian, Laotian, Vietnamese)",
                                        "fr": "Asiatique du Sud-Est (par exemple, Philippin, Cambodgien, Indonésien, Laotien, Vietnamien)"
                                    },
                                    "value": "Southeast Asian"
                                },
                                {
                                    "label": {
                                        "en": "Japanese",
                                        "fr": "Japonais"
                                    },
                                    "value": "Japanese"
                                },
                                {
                                    "label": {
                                        "en": "Korean",
                                        "fr": "Coréen"
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
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 58;