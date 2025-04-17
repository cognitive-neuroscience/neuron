
-- Demographics and Socioeconomic Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Demographics and Socioeconomic Questionnaire",
    description = "Demographics and Socioeconomic Questionnaire.",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": "Questionnaire",
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
                            "key": "what-is-your-age"
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
                            "key": "what-sex-were-you-assigned-at-birth",
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
                            "key": "how-do-you-describe-yourself",
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
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What is your handedness?",
                                "fr": "Quelle est votre main dominante?"
                            },
                            "key": "what-is-your-handedness",
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
                            "key": "to-which-group-do-you-culturally-belong",
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
                            "key": "which-of-the-following-languages-do-you-consider-yourself-fluent-in",
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
                            "key": "do-you-have-color-blindness",
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
                            "questionType": "input",
                            "title": {
                                "en": "How many years of education do you have (completing high school equals 12 years)?",
                                "fr": "Combien d''années d''éducation avez-vous completé (avoir complété le secondaire équivaut à 12 années)?"
                            },
                            "key": "how-many-years-of-education-do-you-have",
                            "validation": {
                                "isNumeric": true,
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What is the highest level of education you have completed?",
                                "fr": "Quel est le plus haut niveau d''éducation que vous avez complété?"
                            },
                            "key": "what-is-the-highest-level-of-education-you-have-completed",
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
                                "en": "What is your current employment status?",
                                "fr": "Quel est votre statut professionnel actuel?"
                            },
                            "key": "what-is-your-current-employment-status",
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
                                        "fr": "Étudiant(e)"
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
                                        "fr": "Retraité(e)"
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
                            "questionType": "freeTextResponse",
                            "key": "which-job-or-occupation-have-you-held-for-the-longest-period",
                            "title": {
                                "en": "Which job or occupation have you held for the longest period? Please provide the job title or a short description.",
                                "fr": "Quel emploi ou quelle profession avez-vous exercé(e) le plus longtemps? Veuillez fournir le titre du poste ou une brève description."
                            },
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "What is your best estimate of the total household income received by all household members, from all sources, before taxes and deductions, in the past 12 months?",
                                "fr": "Quelle est votre meilleure du revenu total de votre ménage, reçu par tous les membres du ménage, toutes sources confondues, avant impôts et déductions, au cours des 12 derniers mois?"
                            },
                            "key": "householdIncome",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Less than $20,000",
                                        "fr": "Moins de 20 000$"
                                    },
                                    "value": "Less than $20,000"
                                },
                                {
                                    "label": {
                                        "en": "$20,000 or more, but less than $50,000",
                                        "fr": "20 000$ ou plus, mais moins de 50 000$"
                                    },
                                    "value": "$20,000 or more, but less than $50,000"
                                },
                                {
                                    "label": {
                                        "en": "$50,000 or more, but less than $100,000",
                                        "fr": "50 000$ ou plus, mais moins de 100 000$"
                                    },
                                    "value": "$50,000 or more, but less than $100,000"
                                },
                                {
                                    "label": {
                                        "en": "$150,000 or more",
                                        "fr": "150 000$ ou plus"
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
                            "title": {
                                "en": "What is your current marital/partner status?",
                                "fr": "Quel est votre statut matrimonial ou situation conjugale actuelle?"
                            },
                            "key": "marital",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Single, never married, or never lived with a partner",
                                        "fr": "Célibataire, jamais marié(e), ou n''a jamais vécu avec un(e) partenaire"
                                    },
                                    "value": "Single, never married, or never lived with a partner"
                                },
                                {
                                    "label": {
                                        "en": "Married/Living with a partner in a domestic relationship",
                                        "fr": "Marié(e)/Je vis avec un(e) partenaire dans une relation familiale"
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
                                        "fr": "Divorcé(e)/Séparé(e)"
                                    },
                                    "value": "Divorced/Separated"
                                },
                                {
                                    "label": {
                                        "en": "Do not wish to disclose",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "Do not wish to disclose"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Which best describes your living situation?",
                                "fr": "Quelle affirmation décrit le mieux votre situation de logement?"
                            },
                            "key": "living",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Living alone",
                                        "fr": "Je vis seul(e)"
                                    },
                                    "value": "Living alone"
                                },
                                {
                                    "label": {
                                        "en": "Living with spouse/partner/significant other",
                                        "fr": "Je vis avec mon/ma conjoint(e)/partenaire/autre personne chère"
                                    },
                                    "value": "Living with spouse/partner/significant other"
                                },
                                {
                                    "label": {
                                        "en": "Living with adult child/children",
                                        "fr": "Je vis avec enfant(s) adulte(s)"
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
                                        "fr": "Je vis en résidence, ex. de retraités"
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
                            "key": "do-you-consider-yourself-to-be",
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
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 90;
