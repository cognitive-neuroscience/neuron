-- Parkinson Anxiety Scale (PAS)

UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Parkinsons Anxiety Scale (PAS)",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "header-1",
                            "title": {
                                "en": "Section A. Persistent Anxiety",
                                "fr": "Section A. Anxiété persistante"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "textContent": {
                                "en": "In the past four weeks, to what extent did you experience the following symptoms? (Please select one answer for each question below)",
                                "fr": "Au cours des quatre dernières semaines, dans quelle mesure avez-vous ressenti les symptômes suivants? Veuillez cocher une réponse pour chaque item ci-dessous."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "A.1. Feeling anxious or nervous",
                                "fr": "A.1. Sentiment d’anxiété ou de nervosité"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "A1-Feeling-anxious-or-nervous",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all, or never",
                                        "fr": "Pas du tout ou jamais"
                                    },
                                    "value": "0: not at all, or never"
                                },
                                {
                                    "label": {
                                        "en": "Very mild, or rarely",
                                        "fr": "Très peu ou rarement"
                                    },
                                    "value": "1: very mild, or rarely"
                                },
                                {
                                    "label": {
                                        "en": "Mild, or sometimes",
                                        "fr": "Légèrement ou parfois"
                                    },
                                    "value": "2: mild, or sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Moderate, or often",
                                        "fr": "Modérément ou souvent"
                                    },
                                    "value": "3: moderate, or often"
                                },
                                {
                                    "label": {
                                        "en": "Severe, or (nearly) always",
                                        "fr": "Fortement ou (presque) toujours"
                                    },
                                    "value": "4: severe, or (nearly) always"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "A.2. Feeling tense or stressed",
                                "fr": "A.2. Sentiment de tension ou de stress"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "A2-Feeling-tense-or-stressed",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all, or never",
                                        "fr": "Pas du tout ou jamais"
                                    },
                                    "value": "0: not at all, or never"
                                },
                                {
                                    "label": {
                                        "en": "Very mild, or rarely",
                                        "fr": "Très peu ou rarement"
                                    },
                                    "value": "1: very mild, or rarely"
                                },
                                {
                                    "label": {
                                        "en": "Mild, or sometimes",
                                        "fr": "Légèrement ou parfois"
                                    },
                                    "value": "2: mild, or sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Moderate, or often",
                                        "fr": "Modérément ou souvent"
                                    },
                                    "value": "3: moderate, or often"
                                },
                                {
                                    "label": {
                                        "en": "Severe, or (nearly) always",
                                        "fr": "Fortement ou (presque) toujours"
                                    },
                                    "value": "4: severe, or (nearly) always"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "A.3. Being unable to relax",
                                "fr": "A.3. Incapacité de se détendre"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "A3-Being-unable-to-relax",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all, or never",
                                        "fr": "Pas du tout ou jamais"
                                    },
                                    "value": "0: not at all, or never"
                                },
                                {
                                    "label": {
                                        "en": "Very mild, or rarely",
                                        "fr": "Très peu ou rarement"
                                    },
                                    "value": "1: very mild, or rarely"
                                },
                                {
                                    "label": {
                                        "en": "Mild, or sometimes",
                                        "fr": "Légèrement ou parfois"
                                    },
                                    "value": "2: mild, or sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Moderate, or often",
                                        "fr": "Modérément ou souvent"
                                    },
                                    "value": "3: moderate, or often"
                                },
                                {
                                    "label": {
                                        "en": "Severe, or (nearly) always",
                                        "fr": "Fortement ou (presque) toujours"
                                    },
                                    "value": "4: severe, or (nearly) always"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "A.4. Excessive worrying about everyday matters",
                                "fr": "A.4. Souci excessif pour des situations de la vie quotidienne"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "A4-Excessive-worrying-about-everyday-matters",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all, or never",
                                        "fr": "Pas du tout ou jamais"
                                    },
                                    "value": "0: not at all, or never"
                                },
                                {
                                    "label": {
                                        "en": "Very mild, or rarely",
                                        "fr": "Très peu ou rarement"
                                    },
                                    "value": "1: very mild, or rarely"
                                },
                                {
                                    "label": {
                                        "en": "Mild, or sometimes",
                                        "fr": "Légèrement ou parfois"
                                    },
                                    "value": "2: mild, or sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Moderate, or often",
                                        "fr": "Modérément ou souvent"
                                    },
                                    "value": "3: moderate, or often"
                                },
                                {
                                    "label": {
                                        "en": "Severe, or (nearly) always",
                                        "fr": "Fortement ou (presque) toujours"
                                    },
                                    "value": "4: severe, or (nearly) always"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "A.5. Fear of something bad, or even the worst, happening",
                                "fr": "A.5. Crainte que quelque chose de mal, ou même que le pire, se produise"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "A5-Fear-of-something-bad-or-even-the-worst-happening",
                            "options": [
                                {
                                    "label": {
                                        "en": "Not at all, or never",
                                        "fr": "Pas du tout ou jamais"
                                    },
                                    "value": "0: not at all, or never"
                                },
                                {
                                    "label": {
                                        "en": "Very mild, or rarely",
                                        "fr": "Très peu ou rarement"
                                    },
                                    "value": "1: very mild, or rarely"
                                },
                                {
                                    "label": {
                                        "en": "Mild, or sometimes",
                                        "fr": "Légèrement ou parfois"
                                    },
                                    "value": "2: mild, or sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Moderate, or often",
                                        "fr": "Modérément ou souvent"
                                    },
                                    "value": "3: moderate, or often"
                                },
                                {
                                    "label": {
                                        "en": "Severe, or (nearly) always",
                                        "fr": "Fortement ou (presque) toujours"
                                    },
                                    "value": "4: severe, or (nearly) always"
                                }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "key": "header-2",
                            "title": {
                                "en": "Section B. Episodic Anxiety",
                                "fr": "Section B. Anxiété épisodique"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "textContent": {
                                "en": "In the past four weeks, did you experience episodes of the following symptoms?",
                                "fr": "Au cours des quatre dernières semaines, avez-vous eu des épisodes où vous avez éprouvé les symptômes suivants?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "B.1. Panic or intense fear",
                                "fr": "B.1. Panique ou peur intense"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "B1-Panic-or-intense-fear",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "0: never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "1: rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "2: sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "3: often"
                                },
                                {
                                    "label": {
                                        "en": "Nearly always",
                                        "fr": "Presque toujours"
                                    },
                                    "value": "4: nearly always"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "B.2. Shortness of breath",
                                "fr": "B.2. Avoir de la difficulté à respirer"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "B2-Shortness-of-breath",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "0: never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "1: rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "2: sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "3: often"
                                },
                                {
                                    "label": {
                                        "en": "Nearly always",
                                        "fr": "Presque toujours"
                                    },
                                    "value": "4: nearly always"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "B.3. Heart palpitations or heart beating fast (not related to physical effort or activity)",
                                "fr": "B.3. Palpitations cardiaques ou cœur qui bat rapidement (sans lien avec un effort ou une activité physique)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "B3-Heart-palpitations-or-heart-beating-fast-not-related-to-physical-effort-or-activity",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "0: never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "1: rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "2: sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "3: often"
                                },
                                {
                                    "label": {
                                        "en": "Nearly always",
                                        "fr": "Presque toujours"
                                    },
                                    "value": "4: nearly always"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "B.4. Fear of losing control",
                                "fr": "B.4. Peur de perdre le contrôle"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "B4-Fear-of-losing-control",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "0: never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "1: rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "2: sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "3: often"
                                },
                                {
                                    "label": {
                                        "en": "Nearly always",
                                        "fr": "Presque toujours"
                                    },
                                    "value": "4: nearly always"
                                }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "key": "header-3",
                            "title": {
                                "en": "Section C. Avoidance Behavior",
                                "fr": "Section C. Comportements d''évitement"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText3",
                            "textContent": {
                                "en": "In the past four weeks, to what extent did you <b>fear or avoid</b> the following situations? (Please select one answer for each question below)",
                                "fr": "Au cours des quatre dernières semaines, dans quelle mesure avez-vous redouté ou évité les situations suivantes ? Veuillez cocher une réponse pour chaque item ci-dessous."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "C.1. Social situations (where one may be observed, or evaluated by others, such as speaking in public, or talking to unknown people)",
                                "fr": "C.1. Situations sociales (où une personne peut être observée ou évaluée par autrui, comme parler en public ou parler à des étrangers)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "C1-Social-situations-where-one-may-be-observed-or-evaluated-by-others-such-as-speaking-in-public-or-talking-to-unknown-people",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never feared/avoided",
                                        "fr": "Jamais redouté/évité"
                                    },
                                    "value": "0: never feared/avoided"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "1: rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "2: sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "3: often"
                                },
                                {
                                    "label": {
                                        "en": "Nearly always feared/avoided",
                                        "fr": "Presque toujours redouté/évité"
                                    },
                                    "value": "4: nearly always feared/avoided"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "C.2. Public settings (situations from which it may be difficult or embarrassing to escape, such as queues or lines, crowds, bridges, or public transportation)",
                                "fr": "C.2. Lieux publics (situations dont il peut être difficile ou embarrassant de s''échapper, comme les files d&#39;attente, les foules, les ponts ou le transport en commun)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "C2-Public-settings-situations-from-which-it-may-be-difficult-or-embarrassing-to-escape-such-as-queues-or-lines-crowds-bridges-or-public-transportation",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never feared/avoided",
                                        "fr": "Jamais redouté/évité"
                                    },
                                    "value": "0: never feared/avoided"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "1: rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "2: sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "3: often"
                                },
                                {
                                    "label": {
                                        "en": "Nearly always feared/avoided",
                                        "fr": "Presque toujours redouté/évité"
                                    },
                                    "value": "4: nearly always feared/avoided"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "C.3. Specific objects or situations (such as flying, heights, spiders or other animals, needles, or blood)",
                                "fr": "C.3. Objets ou situations en particulier (comme prendre l&#39;avion, être en hauteur, les araignées ou d''autres animaux, les piqûres ou la vue du sang)"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "C3-Specific-objects-or-situations-such-as-flying-heights-spiders-or-other-animals-needles-or-blood",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never feared/avoided",
                                        "fr": "Jamais redouté/évité"
                                    },
                                    "value": "0: never feared/avoided"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "1: rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "2: sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "3: often"
                                },
                                {
                                    "label": {
                                        "en": "Nearly always feared/avoided",
                                        "fr": "Presque toujours redouté/évité"
                                    },
                                    "value": "4: nearly always feared/avoided"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 87;