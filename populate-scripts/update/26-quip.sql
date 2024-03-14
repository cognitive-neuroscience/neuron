
-- QUIP
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "QUIP",
    description = "Questionnaire for Impulsive-Compulsive Disorders in Parkinson's Disease - Rating Scale (QUIP-RS)",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Questionnaire"
                    },
                    "questions":[
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "styles": {
                                "title-font-size": "md"
                            },
                            "title": {
                                "en": "Frequency Of Behaviours <br /> <br /><b>Never</b>: not at all <br /><b>Rarely</b>: 1 day/week <br /><b>Sometimes</b>: 2-3 days/week <br /><b>Often</b>: 4-5 days/week <br /><b>Very Often</b>: 6-7 days/week <br />",
                                "fr": "Fréquence des Comportements <br /> <br /> <b>Jamais</b>: pas du tout <br /><b>Rarement</b>: 1 jour/semaine <br /><b>Parfois</b>: 2-3 jours/semaine <br /><b>Souvent</b>: 4-5 jours/semaine <br /><b>Très Souvent</b>: 6-7 jours/semaine <br />"
                            }
                        },
                        {
                            "questionType": "displayText", 
                            "key": "displayText2",
                            "styles": {
                                "title-font-size": "md"
                            },
                            "title": {
                                "en": "In the last 4 weeks...",
                                "fr": "Dans les 4 dernières semaines..."
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText3",
                            "styles": {
                                "title-font-size": "md"
                            },
                            "title": {
                                "en": "1. How much do you think about the following behaviors (such as having trouble keeping thoughts out of your mind or feeling guilty)?",
                                "fr": "1. À quel point pensez-vous aux comportements suivant (c''est-à-dire avoir de la difficulté à garder des pensées hors de votre esprit, ou vous sentir coupable en relation à ces activités)?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "How much do you think about...<b>Gambling?</b>",
                                "fr": "À quel point pensez-vous au...<b>Jeu (''gambling'')?</b>"
                            },
                            "textContent": {
                                "en": "Casinos, internet gambling lotteries, scratch tickets, betting, slot or poker machines",
                                "fr": "Casinos, loteries sur Internet, tickets à gratter, paris, machines à sous ou poker"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about gambling",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "How much do you think about...<b>Sex?</b>",
                                "fr": "À quel point pensez-vous au...<b>Sexe?</b>"
                            },
                            "validation": {
                                "required":true
                            },
                            "textContent": {
                                "en": "Making sexual demands on others, promiscuity, prostitution, change in sexual orientation, masturbation, internet and telephone sexual activities, pornography",
                                "fr": "Faire des demandes sexuelles à autrui, promiscuité, prostitution, changement d''orientation sexuelle, masturbation, activités sexuelles sur Internet et par téléphone, pornographie"
                            },
                            "key": "how much do you think about sex",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "How much do you think about...<b>Buying?</b>",
                                "fr": "À quel point pensez-vous aux...<b>Achats compulsifs?</b>"
                            },
                            "validation": {
                                "required":true
                            },
                            "textContent": {
                                "en": "Too much of the same thing or things you don’t need or use",
                                "fr": "Trop de la même chose ou des choses dont vous n''avez pas besoin ou que vous n''utilisez pas"
                            },
                            "key": "how much do you think about buying",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "How much do you think about...<b>Eating?</b>",
                                "fr": "À quel point pensez-vous à...<b>Manger?</b>"
                            },
                            "textContent": {
                                "en": "Eating larger amounts or different types of food than in the past, more rapidly than normal, at different times (such as overnight), until feeling uncomfortable full or when not hungry",
                                "fr": "Manger plus que d''habitude, ou des aliments différents, à une vitesse augmentée, à des moments différents (comme la nuit), jusqu''à ce que vous vous sentiez mal ou sans avoir faim"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about eating",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "How much do you think about...<b>Performing tasks or hobbies?</b>",
                                "fr": "À quel point pensez-vous à...<b>L''exécution de tâches ou de passe-temps?</b>"
                            },
                            "textContent": {
                                "en": "Specific tasks, hobbies or other organized activities, such as writing, painting, gardening, repairing or dismantling things, collecting, computer use, working on projects, etc.",
                                "fr": "Tâches spécifiques, passe-temps ou autres activités organisées, comme écrire, peindre, jardiner, réparer ou démonter des objets, collectionner, utiliser un ordinateur, travailler sur des projets, etc."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about performing tasks or hobbies",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "How much do you think about...<b>Repeating simple activities?</b>",
                                "fr": "À quel point pensez-vous à...<b>Répéter des activités simples?</b>"
                            },
                            "textContent": {
                                "en": "Repeating cetain simple motor activities, such as cleaning, tidying, handling, examining, sorting, ordering, collecting, hoarding, or arranging objects, etc.",
                                "fr": "Répéter certaines activités motrices simples, comme nettoyer, ranger, manipuler, examiner, trier, ramasser, amasser, arranger des objets, etc."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about repeating simple activities",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "radiobuttonPresentation": "horizontal",
                            "title": {
                                "en": "How much do you think about...<b>Taking your PD medications?</b>",
                                "fr": "À quel point pensez-vous à...<b>Prendre vos médicaments contre le Parkinson?</b>"
                            },
                            "textContent": {
                                "en": "Consistently taking too much of your Parkinson’s medications, or increasing on your own, without medical advice, your overall intake of PD medications",
                                "fr": "Régulièrement prendre trop de médicaments pour le Parkinson ou augmenter vous-même, sans avis médical, votre consommation de médicaments pour le Parkinson"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you think about taking your PD medications",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                },
                                {	
                                    "label": {	
                                        "en": "Not diagnosed with Parkinson''s",	
                                        "fr": "Pas diagnostiqué avec Parkinson''s"	
                                    },	
                                    "value": "no parkinson''s" 	
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider1"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText4",
                            "styles": {
                                "title-font-size": "md"
                            },
                            "title": {
                                "en": "2. Do you have urges or desires for the following behaviors that you feel are excessive or cause you distress (including becoming restless or irritable when unable to participate in them)?",
                                "fr": "2. Avez-vous des pulsions ou des désirs pour les comportements suivants que vous jugez excessifs ou qui vous causent de la détresse (y compris devenir agité ou irritable lorsque vous ne pouvez pas vous y adonner)?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have excessive urges/desires for...<b>Gambling?</b>",
                                "fr": "Avez-vous des pulsions pour le...<b>Jeu (''gambling'')?</b>"
                            },
                            "textContent": {
                                "en": "Casinos, internet gambling lotteries, scratch tickets, betting, slot or poker machines",
                                "fr": "Casinos, loteries sur Internet, tickets à gratter, paris, machines à sous ou poker"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by gambling",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have excessive urges/desires for...<b>Sex?</b>",
                                "fr": "Avez-vous des pulsions pour le...<b>Sexe?</b>"
                            },
                            "textContent": {
                                "en": "Making sexual demands on others, promiscuity, prostitution, change in sexual orientation, masturbation, internet and telephone sexual activities, pornography",
                                "fr": "Faire des demandes sexuelles à autrui, promiscuité, prostitution, changement d''orientation sexuelle, masturbation, activités sexuelles sur Internet et par téléphone, pornographie"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by sex",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have excessive urges/desires for...<b>Buying?</b>",
                                "fr": "Avez-vous des pulsions pour les...<b>Achats compulsifs?</b>"
                            },
                            "textContent": {
                                "en": "Too much of the same thing or things you don’t need or use",
                                "fr": "Trop de la même chose ou des choses dont vous n''avez pas besoin ou que vous n''utilisez pas"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by buying",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have excessive urges/desires for...<b>Eating?</b>",
                                "fr": "Avez-vous des pulsions pour...<b>Manger?</b>"
                            },
                            "textContent": {
                                "en": "Eating larger amounts or different types of food than in the past, more rapidly than normal, at different times (such as overnight), until feeling uncomfortable full or when not hungry",
                                "fr": "Manger plus que d''habitude, ou des aliments différents, à une vitesse augmentée, à des moments différents (comme la nuit), jusqu''à ce que vous vous sentiez mal ou sans avoir faim"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by eating",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have excessive urges/desires for...<b>Performing tasks or hobbies?</b>",
                                "fr": "Avez-vous des pulsions pour...<b>L''exécution de tâches ou de passe-temps?</b>"
                            },
                            "textContent": {
                                "en": "Specific tasks, hobbies or other organized activities, such as writing, painting, gardening, repairing or dismantling things, collecting, computer use, working on projects, etc.",
                                "fr": "Tâches spécifiques, passe-temps ou autres activités organisées, comme écrire, peindre, jardiner, réparer ou démonter des objets, collectionner, utiliser un ordinateur, travailler sur des projets, etc."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by performing tasks or hobbies",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have excessive urges/desires for...<b>Repeating simple activities?</b>",
                                "fr": "Avez-vous des pulsions pour...<b>Répéter des activités simples?</b>"
                            },
                            "textContent": {
                                "en": "Repeating cetain simple motor activities, such as cleaning, tidying, handling, examining, sorting, ordering, collecting, hoarding, or arranging objects, etc.",
                                "fr": "Répéter certaines activités motrices simples, comme nettoyer, ranger, manipuler, examiner, trier, ramasser, amasser, arranger des objets, etc."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by repeating simple activities",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have excessive urges/desires for...<b>Taking your PD medications?</b>",
                                "fr": "Avez-vous des pulsions pour...<b>Prendre vos médicaments contre le Parkinson?</b>"
                            },
                            "textContent": {
                                "en": "Consistently taking too much of your Parkinson’s medications, or increasing on your own, without medical advice, your overall intake of PD medications",
                                "fr": "Régulièrement prendre trop de médicaments pour le Parkinson ou augmenter vous-même, sans avis médical, votre consommation de médicaments pour le Parkinson"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much distress is caused by taking your PD medications",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                },
	                            {	
                                    "label": {	
                                        "en": "Not diagnosed with Parkinson''s",	
                                        "fr": "Pas diagnostiqué avec Parkinson''s"	
                                    },	
                                    "value": "no parkinson''s" 	
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider2"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText5",
                            "styles": {
                                "title-font-size": "md"
                            },
                            "title": {
                                "en": "3. Do you have difficulty controlling the following behaviors (such as increasing them over time, or having trouble cutting down or stopping them)?",
                                "fr": "3. Avez-vous de la difficulté à contrôler les comportements suivants (par exemple, la fréquence de votre participation augmente au fil du temps, ou vous avez de la difficulté à les réduire ou les cesser)?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have difficulty controlling...<b>Gambling?</b>",
                                "fr": "Avez-vous de la difficulté à contrôler le...<b>Jeu (''gambling'')?</b>"
                            },
                            "textContent": {
                                "en": "Casinos, internet gambling lotteries, scratch tickets, betting, slot or poker machines",
                                "fr": "Casinos, loteries sur Internet, tickets à gratter, paris, machines à sous ou poker"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling gambling",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have difficulty controlling...<b>Sex?</b>",
                                "fr": "Avez-vous de la difficulté à contrôler le...<b>Sexe?</b>"
                            },
                            "textContent": {
                                "en": "Making sexual demands on others, promiscuity, prostitution, change in sexual orientation, masturbation, internet and telephone sexual activities, pornography",
                                "fr": "Faire des demandes sexuelles à autrui, promiscuité, prostitution, changement d''orientation sexuelle, masturbation, activités sexuelles sur Internet et par téléphone, pornographie"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling sex",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have difficulty controlling...<b>Buying?</b>",
                                "fr": "Avez-vous de la difficulté à contrôler les...<b>Achats compulsifs?</b>"
                            },
                            "textContent": {
                                "en": "Too much of the same thing or things you don''t need or use",
                                "fr": "Trop de la même chose ou des choses dont vous n''avez pas besoin ou que vous n''utilisez pas"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling buying",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have difficulty controlling...<b>Eating?</b>",
                                "fr": "Avez-vous de la difficulté à contrôler...<b>Manger?</b>"
                            },
                            "textContent": {
                                "en": "Eating larger amounts or different types of food than in the past, more rapidly than normal, at different times (such as overnight), until feeling uncomfortable full or when not hungry",
                                "fr": "Manger plus que d''habitude, ou des aliments différents, à une vitesse augmentée, à des moments différents (comme la nuit), jusqu''à ce que vous vous sentiez mal ou sans avoir faim"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling eating",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have difficulty controlling...<b>Performing tasks or hobbies?</b>",
                                "fr": "Avez-vous de la difficulté à contrôler...<b>L''exécution de tâches ou de passe-temps?</b>"
                            },
                            "textContent": {
                                "en": "Specific tasks, hobbies or other organized activities, such as writing, painting, gardening, repairing or dismantling things, collecting, computer use, working on projects, etc.",
                                "fr": "Tâches spécifiques, passe-temps ou autres activités organisées, comme écrire, peindre, jardiner, réparer ou démonter des objets, collectionner, utiliser un ordinateur, travailler sur des projets, etc."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling performing tasks or hobbies",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Select \\"Rarely\\". This is simply to ensure that you are paying attention!",
                                "fr": "Sélectionnez « Rarement » ici. Ceci sert à vérifier votre niveau d''attention!"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "attentionCheck-Select rarely here",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have difficulty controlling...<b>Repeating simple activities?</b>",
                                "fr": "Avez-vous de la difficulté à contrôler...<b>Répéter des activités simples?</b>"
                            },
                            "textContent": {
                                "en": "Repeating cetain simple motor activities, such as cleaning, tidying, handling, examining, sorting, ordering, collecting, hoarding, or arranging objects, etc.",
                                "fr": "Répéter certaines activités motrices simples, comme nettoyer, ranger, manipuler, examiner, trier, ramasser, amasser, arranger des objets, etc."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling repeating simple activities",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you have difficulty controlling...<b>Taking your PD medications?</b>",
                                "fr": "Avez-vous de la difficulté à contrôler...<b>Prendre de vos médicaments contre le Parkinson?</b>"
                            },
                            "textContent": {
                                "en": "Consistently taking too much of your Parkinson’s medications, or increasing on your own, without medical advice, your overall intake of PD medications",
                                "fr": "Régulièrement prendre trop de médicaments pour le Parkinson ou augmenter vous-même, sans avis médical, votre consommation de médicaments pour le Parkinson"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much difficulty to you have controlling taking your PD medications",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                },
                                {
                                    "label": {	
                                        "en": "Not diagnosed with Parkinson''s",	
                                        "fr": "Pas diagnostiqué avec Parkinson''s"	
                                    },	
                                    "value": "no parkinson''s" 	
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider3"
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText6",
                            "styles": {
                                "title-font-size": "md"
                            },
                            "title": {
                                "en": "4. Do you engage in activities specifically to continue the following behaviors (such as hiding what you are doing, lying, hoarding things, borrowing from others, accumulating debt, stealing, or being involved in illegal acts)?",
                                "fr": "4. Prenez-vous des moyens spécifiquement pour vous permettre de poursuivre les activités suivantes (comme cacher ce que vous faites, mentir, accumuler des choses, emprunter aux autres, accumuler des dettes, voler ou être impliqué dans des actes illégaux)?"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you engage in activities specifically to pursue...<b>Gambling?</b>",
                                "fr": "Prenez-vous des moyens pour vous permettre de poursuivre le...<b>Jeu (''gambling'')?</b>"
                            },
                            "textContent": {
                                "en": "Casinos, internet gambling lotteries, scratch tickets, betting, slot or poker machines",
                                "fr": "Casinos, loteries sur Internet, tickets à gratter, paris, machines à sous ou poker"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide gambling",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you engage in activities specifically to pursue...<b>Sex?</b>",
                                "fr": "Prenez-vous des moyens pour vous permettre de poursuivre le...<b>Sexe?</b>"
                            },
                            "textContent": {
                                "en": "Making sexual demands on others, promiscuity, prostitution, change in sexual orientation, masturbation, internet and telephone sexual activities, pornography",
                                "fr": "Faire des demandes sexuelles à autrui, promiscuité, prostitution, changement d''orientation sexuelle, masturbation, activités sexuelles sur Internet et par téléphone, pornographie"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide sex",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you engage in activities specifically to pursue...<b>Buying?</b>",
                                "fr": "Prenez-vous des moyens pour vous permettre de poursuivre les...<b>Achats compulsifs?</b>"
                            },
                            "textContent": {
                                "en": "Too much of the same thing or things you don’t need or use",
                                "fr": "Trop de la même chose ou des choses dont vous n''avez pas besoin ou que vous n''utilisez pas"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide buying",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you engage in activities specifically to pursue...<b>Eating?</b>",
                                "fr": "Prenez-vous des moyens pour vous permettre de poursuivre le...<b>Manger?</b>"
                            },
                            "textContent": {
                                "en": "Eating larger amounts or different types of food than in the past, more rapidly than normal, at different times (such as overnight), until feeling uncomfortable full or when not hungry",
                                "fr": "Manger plus que d''habitude, ou des aliments différents, à une vitesse augmentée, à des moments différents (comme la nuit), jusqu''à ce que vous vous sentiez mal ou sans avoir faim"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide eating",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you engage in activities specifically to pursue...<b>Performing tasks or hobbies?</b>",
                                "fr": "Prenez-vous des moyens pour vous permettre de poursuivre...<b>L''exécution de tâches ou de passe-temps?</b>"
                            },
                            "textContent": {
                                "en": "Specific tasks, hobbies or other organized activities, such as writing, painting, gardening, repairing or dismantling things, collecting, computer use, working on projects, etc.",
                                "fr": "Tâches spécifiques, passe-temps ou autres activités organisées, comme écrire, peindre, jardiner, réparer ou démonter des objets, collectionner, utiliser un ordinateur, travailler sur des projets, etc."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide performing tasks or hobbies",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you engage in activities specifically to pursue...<b>Repeating simple activities?</b>",
                                "fr": "Prenez-vous des moyens pour vous permettre de poursuivre...<b>Répéter des activités simples?</b>"
                            },
                            "textContent": {
                                "en": "Repeating cetain simple motor activities, such as cleaning, tidying, handling, examining, sorting, ordering, collecting, hoarding, or arranging objects, etc.",
                                "fr": "Répéter certaines activités motrices simples, comme nettoyer, ranger, manipuler, examiner, trier, ramasser, amasser, arranger des objets, etc."
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide repeating simple activities",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "horizontal",
                            "styles": {
                                "title-font-size": "md",
                                "text-content-font-size": "md"
                            },
                            "title": {
                                "en": "Do you engage in activities specifically to pursue...<b>Taking your PD medications?</b>",
                                "fr": "Prenez-vous des moyens pour vous permettre de poursuivre...<b>Prendre vos médicaments contre le Parkinson?</b>"
                            },
                            "textContent": {
                                "en": "Consistently taking too much of your Parkinson’s medications, or increasing on your own, without medical advice, your overall intake of PD medications",
                                "fr": "Régulièrement prendre trop de médicaments pour le Parkinson ou augmenter vous-même, sans avis médical, votre consommation de médicaments pour le Parkinson"
                            },
                            "validation": {
                                "required":true
                            },
                            "key": "how much do you engage in activities to hide taking your PD medications",
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamais"
                                    },
                                    "value": "never"
                                },
                                {
                                    "label": {
                                        "en": "Rarely",
                                        "fr": "Rarement"
                                    },
                                    "value": "rarely"
                                },
                                {
                                    "label": {
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Often",
                                        "fr": "Souvent"
                                    },
                                    "value": "often"
                                },
                                {
                                    "label": {
                                        "en": "Very Often",
                                        "fr": "Très Souvent"
                                    },
                                    "value": "very often"
                                },
                                {	
                                    "label": {	
                                        "en": "Not diagnosed with Parkinson''s",	
                                        "fr": "Pas diagnostiqué avec Parkinson''s"	
                                    },	
                                    "value": "no parkinson''s" 	
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 26;