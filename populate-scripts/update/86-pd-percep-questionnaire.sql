
-- PD-Percep Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "PD-Percep Questionnaire",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Experience With Parkinson''s Disease",
                        "fr": "Expérience avec la maladie de Parkinson"
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "Thank you for taking part in this survey. The purpose of this survey is to better understand your experience with Parkinson''s disease (PD), what you know about it, and what you want to know about it. This survey will ask you about your Parkinson''s symptoms and how you feel the disease affects your thinking and mood. You will also be asked about what you know about Parkinson''s disease, how you learned it, and what you feel others know about it.",
                                "fr": "Merci de votre intérêt pour cette étude. L''objectif de ce questionnaire est de mieux comprendre votre expérience de la maladie de Parkinson, ce que connaissez de cette maladie et ce que vous voulez en connaître. Les questions viseront à comprendre les symptômes de la maladie de Parkinson que vous ressentez et comment les symptômes affectent votre fonctionnement cognitif et votre humeur. Les questions viseront aussi à comprendre ce que vous connaissez sur la maladie de Parkinson, comment vous avez acquis ces connaissances et ce que vous croyez que les gens, en général, pensent de la maladie."
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText1_1",
                            "title": {
                                "en": "Throughout this survey, we will be making references to your \\"<b>health care team</b>.\\" Your <b>health care team</b> can include any of the health professionals that assist in the management of your Parkinson''s disease, such as a neurologist, nurses, occupational therapist, social workers, primary care physicians, etc.",
                                "fr": "Tout au long du questionnaire, nous ferons référence à votre \\"<b>équipe médicale</b>\\". Cette <b>équipe médicale</b> peut comprendre tous les professionnels de la santé qui participent à la prise en charge de la maladie de Parkinson, tels que les neurologues, les infirmier.ères, les ergothérapeutes, les travailleur.ses sociaux, les médecins de famille, etc."
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "1-diagnosed-with-parkinsons",
                            "allowMultipleSelections": false,
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ],
                            "textContent": {
                                "en": "Have you been diagnosed with Parkinson''s disease?",
                                "fr": "Avez-vous été diagnostiqué avec la maladie de Parkinson?"
                            },
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "2-parkinsons-currently-treated-by",
                            "allowMultipleSelections": true,
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "My Parkinson''s disease is currently being treated by a: (Please select all that apply)",
                                "fr": "Ma maladie de Parkinson est actuellement traitée par: (Veuillez sélectionner tous ceux qui s''appliquent à vous)"
                            },
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Movement Disorder Specialist",
                                        "fr": "Neurologue spécialiste des troubles du mouvement"
                                    },
                                    "value": "movement-disorder-specialist"
                                },
                                {
                                    "label": {
                                        "en": "General Neurologist",
                                        "fr": "Neurologue général"
                                    },
                                    "value": "general-neurologist"
                                },
                                {
                                    "label": {
                                        "en": "Family Doctor/Primary Care Doctor",
                                        "fr": "Médecin de famille/médecin de soins primaires"
                                    },
                                    "value": "family-doctor-primary-care-doctor"
                                },
                                {
                                    "label": {
                                        "en": "Nurse Practitioner/Physician Assistant",
                                        "fr": "Infirmier.ère praticien.ne"
                                    },
                                    "value": "nurse-practitioner-physician-assistant"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "4-movement-bodily-function-symptoms-experienced",
                            "allowMultipleSelections": true,
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Which of the following <b>movement and bodily function</b> Parkinson''s disease symptoms do you currently experience? Please select all that apply.",
                                "fr": "Parmi les symptômes suivants de la maladie de Parkinson liés <b>aux mouvements et aux fonctions corporelles</b>, quels sont les symptômes que vous ressentez actuellement? Veuillez sélectionner tous ceux qui s''appliquent à vous."
                            },
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["none-of-the-above", "prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["none-of-the-above", "prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Slowness of movement",
                                        "fr": "Lenteur des mouvements"
                                    },
                                    "value": "slowness-of-movement"
                                },
                                {
                                    "label": {
                                        "en": "Speech difficulty (e.g. low voice, slurring, mumbling)",
                                        "fr": "Difficulté d''élocution (voix basse, bredouillement, marmonnement)"
                                    },
                                    "value": "speech-difficulty"
                                },
                                {
                                    "label": {
                                        "en": "Tremors",
                                        "fr": "Tremblements"
                                    },
                                    "value": "tremors"
                                },
                                {
                                    "label": {
                                        "en": "Loss of dexterity (e.g. difficulty with things like buttons, zippers, brushing teeth)",
                                        "fr": "Perte de dextérité (p. ex., difficulté à attacher les boutons, manipuler les fermetures éclair, brosser les dents)"
                                    },
                                    "value": "loss-of-dexterity"
                                },
                                {
                                    "label": {
                                        "en": "Imbalance or tendency to fall",
                                        "fr": "Déséquilibre ou tendance à tomber"
                                    },
                                    "value": "imbalance-or-tendency-to-fall"
                                },
                                {
                                    "label": {
                                        "en": "Walking problems (e.g. slow walking, freezing)",
                                        "fr": "Problèmes de marche (p. ex., marche lente, gel ou \\"freezing\\")"
                                    },
                                    "value": "walking-problems"
                                },
                                {
                                    "label": {
                                        "en": "Visual hallucinations (e.g. seeing things that are not really there)",
                                        "fr": "Hallucinations visuelles (p. ex., voir des choses qui ne sont pas vraiment là)"
                                    },
                                    "value": "visual-hallucinations"
                                },
                                {
                                    "label": {
                                        "en": "Reduced sense of smell",
                                        "fr": "Réduction de l''odorat"
                                    },
                                    "value": "reduced-sense-of-smell"
                                },
                                {
                                    "label": {
                                        "en": "Swallowing difficulty",
                                        "fr": "Difficultés de déglutition"
                                    },
                                    "value": "swallowing-difficulty"
                                },
                                {
                                    "label": {
                                        "en": "Bodily pain or discomfort (e.g. generalized, or of the joints)",
                                        "fr": "Douleurs ou inconforts (p. ex., généralisées, des jointures)"
                                    },
                                    "value": "bodily-pain-or-discomfort"
                                },
                                {
                                    "label": {
                                        "en": "Urinary Problems (e.g. increased frequency, loss of bladder control)",
                                        "fr": "Problèmes urinaires (fréquence accrue, perte de contrôle de la vessie)"
                                    },
                                    "value": "urinary-problems"
                                },
                                {
                                    "label": {
                                        "en": "Constipation",
                                        "fr": "Constipation"
                                    },
                                    "value": "constipation"
                                },
                                {
                                    "label": {
                                        "en": "Acting out dreams (e.g. punching, kicking, or shouting during sleep)",
                                        "fr": "Agitation pendant les rêves (p. ex., coups de poing ou cris pendant le sommeil)"
                                    },
                                    "value": "acting-out-dreams"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty sleeping or insomnia",
                                        "fr": "Difficulté à dormir ou insomnie"
                                    },
                                    "value": "difficulty-sleeping-or-insomnia"
                                },
                                {
                                    "label": {
                                        "en": "Dyskinesias (e.g. unintentional movements related to the Parkinson''s medications)",
                                        "fr": "Dyskinésies (par exemple, mouvements involontaires liés à la prise de médicaments contre la maladie de Parkinson)."
                                    },
                                    "value": "dyskinesias"
                                },
                                {
                                    "label": {
                                        "en": "None of the above",
                                        "fr": "Aucune de ces réponses"
                                    },
                                    "value": "none-of-the-above"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "matrix",
                            "key": "5-rating",
                            "textContent": {
                                "en": "In the prior question, you selected the following Parkinson''s symptoms because you experience them currently. Please rate how you feel these symptoms impact your quality of life.",
                                "fr": "Dans la question précédente, vous avez sélectionné les symptômes suivants parce que vous les ressentez actuellement. Veuillez évaluer l''impact de ces symptômes de la maladie de Parkinson sur votre qualité de vie."
                            },
                            "validation": {
                                "required": true
                            },
                            "legendTitle": "Impact",
                            "condition": {
                                "dependsOnKey": "4-movement-bodily-function-symptoms-experienced",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true,
                                    "hideWhenValuesSelected": [ "none-of-the-above", "prefer-not-to-answer" ],
                                    "populateResultsBasedOnSelectedValues": {
                                        "valuesToHide": [ "not-sure" ]
                                    }
                                }
                            },
                            "legend": [
                                {
                                    "label": {
                                        "en": "Not at all (0)",
                                        "fr": "Pas du tout (0)"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "A little (1)",
                                        "fr": "Un peu (1)"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "Moderately (2)",
                                        "fr": "Modérément (2)"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "Quite a bit (3)",
                                        "fr": "Beaucoup (3)"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "Extremely (4)",
                                        "fr": "Extrêmement (4)"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "6-thinking-mood-symptoms-experienced",
                            "allowMultipleSelections": true,
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Which of the following <b>thinking and feeling</b> Parkinson''s disease symptoms do you currently experience? Please select all that apply.",
                                "fr": "Quels symptômes de la maladie de Parkinson liés à <b>la pensée et aux émotions</b> suivants ressentez-vous actuellement? Veuillez sélectionner tous ceux qui s''appliquent à vous."
                            },
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["none-of-the-above", "prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["none-of-the-above", "prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Difficulty with decisions or planning", 
                                        "fr": "Difficulté à prendre des décisions ou à planifier"
                                    },
                                    "value": "difficulty-with-decisions-or-planning"
                                },
                                {
                                    "label": {
                                        "en": "Slowing of mental or information processing",
                                        "fr": "Ralentissement du processus mental ou du traitement de l''information"
                                    },
                                    "value": "slowing-of-mental-or-information-processing"
                                },
                                {
                                    "label": {
                                        "en": "Memory Problems",
                                        "fr": "Problèmes de mémoire"
                                    },
                                    "value": "memory-problems"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty with expressing your thoughts (e.g. word-finding difficulties)",
                                        "fr": "Difficulté à exprimer vos pensées (p. ex., difficultés à trouver les mots)"
                                    },
                                    "value": "difficulty-with-expressing-your-thoughts"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty concentrating",
                                        "fr": "Difficulté à se concentrer"
                                    },
                                    "value": "difficulty-concentrating"
                                },
                                {
                                    "label": {
                                        "en": "Depression or sadness",
                                        "fr": "Dépression ou tristesse"
                                    },
                                    "value": "depression-or-sadness"
                                },
                                {
                                    "label": {
                                        "en": "Anxiety or excessive worrying",
                                        "fr": "Anxiété ou inquiétude excessive"
                                    },
                                    "value": "anxiety-or-excessive-worrying"
                                },
                                {
                                    "label": {
                                        "en": "Physical fatigue (e.g. exhaustion or tiredness of the body)",
                                        "fr": "Fatigue physique (p. ex., épuisement ou fatigue du corps)"
                                    },
                                    "value": "physical-fatigue"
                                },
                                {
                                    "label": {
                                        "en": "Mental fatigue (e.g. feeling weary or exhausted during a mental task)",
                                        "fr": "Fatigue mentale (p. ex., sensation de lassitude ou d''épuisement pendant une tâche mentale)"
                                    },
                                    "value": "mental-fatigue"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty controlling emotions or behaviours",
                                        "fr": "Difficulté à contrôler ses émotions ou ses comportements"
                                    },
                                    "value": "difficulty-controlling-emotions-or-behaviours"
                                },
                                {
                                    "label": {
                                        "en": "Feeling lightheaded or dizzy",
                                        "fr": "Sensation d''étourdissement ou de vertige"
                                    },
                                    "value": "feeling-lightheaded-or-dizzy"
                                },
                                {
                                    "label": {
                                        "en": "Apathy (e.g. reduced motivation, needing more of a push)",
                                        "fr": "Apathie (par exemple, motivation réduite, besoin d''être poussé davantage)"
                                    },
                                    "value": "apathy"
                                },
                                {
                                    "label": {
                                        "en": "Difficulty with multi-tasking",
                                        "fr": "Difficulté à effectuer plusieurs tâches à la fois (c''est-à-dire le multitâches)"
                                    },
                                    "value": "difficulty-with-multi-tasking"
                                },
                                {
                                    "label": {
                                        "en": "Feeling of being alone or being isolated",
                                        "fr": "Sentiment d''être seul ou d''être isolé"
                                    },
                                    "value": "feeling-of-being-alone-or-being-isolated"
                                },
                                {
                                    "label": {
                                        "en": "None of the above",
                                        "fr": "Aucune de ces réponses"
                                    },
                                    "value": "none-of-the-above"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "matrix",
                            "key": "7-rating",
                            "textContent": {
                                "en": "In the prior question, you selected the following Parkinson''s symptoms because you experience them currently. Please rate how you feel these symptoms impact your quality of life.",
                                "fr": "Dans la question précédente, vous avez sélectionné les symptômes suivants suivants parce que vous les ressentez actuellement. Veuillez évaluer l''impact de ces symptômes sur votre qualité de vie."
                            },
                            "validation": {
                                "required": true
                            },
                            "legendTitle": "Impact",
                            "condition": {
                                "dependsOnKey": "6-thinking-mood-symptoms-experienced",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true,
                                    "hideWhenValuesSelected": [ "none-of-the-above", "prefer-not-to-answer" ],
                                    "populateResultsBasedOnSelectedValues": {
                                        "valuesToHide": [ "not-sure" ]
                                    }
                                }
                            },
                            "legend": [
                                {
                                    "label": {
                                        "en": "Not at all (0)",
                                        "fr": "Pas du tout (0)"
                                    },
                                    "value": "0"
                                },
                                {
                                    "label": {
                                        "en": "A little (1)",
                                        "fr": "Un peu (1)"
                                    },
                                    "value": "1"
                                },
                                {
                                    "label": {
                                        "en": "Moderately (2)",
                                        "fr": "Modérément (2)"
                                    },
                                    "value": "2"
                                },
                                {
                                    "label": {
                                        "en": "Quite a bit (3)",
                                        "fr": "Beaucoup (3)"
                                    },
                                    "value": "3"
                                },
                                {
                                    "label": {
                                        "en": "Extremely (4)",
                                        "fr": "Extrêmement (4)"
                                    },
                                    "value": "4"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider1",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "Thinking",
                                "fr": "Cognition"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displaytext16",
                            "title": {
                                "en": "The following questions are aimed at understanding if, and how, Parkinson''s disease affects your <b>thinking</b>. <br /><br />Some examples of thinking problems might include:<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Memory</b></u>: such as remembering what someone recently told you, familiar names, or upcoming events.<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Concentration</b></u>: such as reading an article or book, or watching a television show or movie<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Organization</b></u>: such as paying bills, managing medications, or organizing and completing a shopping list<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Making decisions and solving problems</b></u><br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Orientation and spatial ability</b></u>: such as driving or finding one''s way around an unfamiliar location<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Understanding language</b></u>: such as making sense of conversations or finding words when talking",
                                "fr": "Les questions suivantes visent à comprendre si, et comment, la maladie de Parkinson affecte <b>votre pensée</b>, c''est-à-dire votre <b>cognition</b>. <br /><br /><b>Les problèmes de <i>pensée</i></b> pourraient inclure des difficultés avec:<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>La mémoire</b></u>: la capacité de se souvenir de ce que quelqu''un vous a dit récemment, de noms familiers ou d''événements à venir. <br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>La concentration</b></u>: la capacité de lire un article ou un livre, ou de visionner une émission de télévision ou un film.<br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>L''organisation</b></u>: la capacité de payer des factures, gérer des médicaments, ou organiser et compléter une liste de courses <br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Prendre des décisions et résoudre des problèmes</b></u><br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>L''orientation et la capacité spatiale</b></u>: la capacité de se repérer ou de conduire dans un lieu inconnu. <br />&nbsp;&nbsp;&nbsp;&nbsp;- <u><b>Comprendre le langage</b></u>: la capacité de comprendre et suivre une conversation ou de trouver les mots lorsqu''on parle."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "8-change-from-normal-abilities",
                            "textContent": {
                                "en": "Have you noticed that you are having more <b>problems with thinking</b>, that is a change from your normal abilities?",
                                "fr": "Avez-vous remarqué que vous avez plus de <b>problèmes de pensée</b>, ce qui constitue un changement par rapport à vos capacités normales?"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "9-most-attribute-thinking-changes-to",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "textContent": {
                                "en": "What do you <b>MOST</b> believe are the reasons for your <b>thinking changes</b>? Please select all that apply.",
                                "fr": "A quoi attribuez-vous le <b>PLUS</b> les <b>changements au niveau de la pensée</b>?"
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "indent": 1,
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "PD",
                                        "fr": "Maladie de Parkinson"
                                    },
                                    "value": "pd"
                                },
                                {
                                    "label": {
                                        "en": "Aging",
                                        "fr": "Vieillissement"
                                    },
                                    "value": "aging"
                                },
                                {
                                    "label": {
                                        "en": "Stress and coping with the disease or with other life events",
                                        "fr": "Stress et adaptation à la maladie ou à d''autres événements de la vie"
                                    },
                                    "value": "stress-and-coping-with-disease-or-other-life-events"
                                },
                                {
                                    "label": {
                                        "en": "Other neurological illness",
                                        "fr": "Autre maladie neurologique"
                                    },
                                    "value": "other-neurological-illness"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "10-thinking-symptoms-prescribed-medications",
                            "validation": {
                                "required": true
                            },
                            "indent": 1,
                            "textContent": {
                                "en": "Has your healthcare team prescribed medications for your <b>thinking symptoms</b>?",
                                "fr": "Votre équipe médicale vous a-t-elle prescrit des médicaments pour traiter vos <b>problèmes de pensée</b>?"
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "11-first-learned-thinking-changes-are-symptoms-of-PD",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "<b>When</b> did you first learn that <b>thinking changes</b> are part of the symptoms of PD?",
                                "fr": "<b>Quand</b> avez-vous appris que les <b>changements au niveau de la pensée</b> font partie des symptômes de la maladie de Parkinson?"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "I did not know anything about thinking changes in PD before filling out this survey",
                                        "fr": "Je ne savais rien des changements de pensée liés à la maladie de Parkinson avant de répondre à ce questionnaire."
                                    },
                                    "value": "didnt-know-before-doing-survey"
                                },
                                {
                                    "label": {
                                        "en": "Before PD diagnosis (I already knew about PD and its symptoms before I received my diagnosis)",
                                        "fr": "Avant le diagnostic de la maladie de Parkinson (c’est-à-dire que même avant de recevoir mon diagnostic, je connaissais déjà les symptômes de la maladie de Parkinson)."
                                    },
                                    "value": "before-pd-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "At the time of PD diagnosis; it was discussed by the medical team",
                                        "fr": "Au moment du diagnostic de la maladie de Parkinson car l''équipe médicale en a discuté avec moi."
                                    },
                                    "value": "at-the-time-of-PD-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "After my diagnosis of PD because I started to learn about the disease",
                                        "fr": "Après le diagnostic de la maladie de Parkinson car j''ai commencé à me renseigner sur la maladie."
                                    },
                                    "value": "after-my-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "Only once I started to experience thinking changes myself",
                                        "fr": "Seulement une fois que j''ai commencé à ressentir moi-même des changements de pensée "
                                    },
                                    "value": "only-after-experiencing-thinking-changes"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "12-how-i-learned-thinking-changes-are-symptoms-of-PD",
                            "textContent": {
                                "en": "<b>How</b> did you first learn that <b>thinking changes</b> are part of the symptoms of PD? Please select all that apply",
                                "fr": "<b>Comment</b> avez-vous appris que <b>les changements au niveau de la pensée</b> font partie des symptômes de la maladie de Parkinson ? Veuillez sélectionner toutes les réponses qui s''appliquent à vous."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "By doing this survey",
                                        "fr": "En répondant à ce questionnaire"
                                    },
                                    "value": "doing-this-survey"
                                },
                                {
                                    "label": {
                                        "en": "My physician",
                                        "fr": "Mon médecin"
                                    },
                                    "value": "my-physician"
                                },
                                {
                                    "label": {
                                        "en": "Other health care worker (e.g. occupational therapist, nurse)",
                                        "fr": "Autre professionnel de la santé (p. ex., ergothérapeute, infirmier.ère)"
                                    },
                                    "value": "other-health-care-worker"
                                },
                                {
                                    "label": {
                                        "en": "Printed materials from clinic",
                                        "fr": "Documents imprimés de votre clinique"
                                    },
                                    "value": "printed-materials-from-clinic"
                                },
                                {
                                    "label": {
                                        "en": "Information provided by foundations (e.g. webinar, printed materials)",
                                        "fr": "Informations fournies par les fondations (p. ex., webinaires, documents imprimés)"
                                    },
                                    "value": "info-provided-by-foundations"
                                },
                                {
                                    "label": {
                                        "en": "Support groups",
                                        "fr": "Groupes de soutien"
                                    },
                                    "value": "support-groups"
                                },
                                {
                                    "label": {
                                        "en": "Social media",
                                        "fr": "Médias sociaux"
                                    },
                                    "value": "social-media"
                                },
                                {
                                    "label": {
                                        "en": "Friends/family doing research",
                                        "fr": "Amis/famille faisant des recherches"
                                    },
                                    "value": "friends-or-family-doing-research"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "13-most-helpful-to-learn-thinking-changes-are-part-of-symptoms-of-pd",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "Which <b>ONE</b> of the following items was the <b>MOST</b> helpful in learning that <b>thinking changes</b> are part of the symptoms of PD? Please select the best option.",
                                "fr": "<b>Lequel</b> des éléments suivants a été le plus utile pour apprendre que les <b>changements de pensée</b> font partie des symptômes de la MP ? Veuillez sélectionner la meilleure option."
                            },
                            "indent": 1,
                            "allowMultipleSelections": false,
                            "condition": {
                                "dependsOnKey": "12-how-i-learned-thinking-changes-are-symptoms-of-PD",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true,
                                    "hideWhenValuesSelected": [ "prefer-not-to-answer" ],
                                    "populateResultsBasedOnSelectedValues": {
                                        "valuesToHide": ["not-sure"]
                                    }
                                }
                            },
                            "options": []
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText3",
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "title": {
                                "en": "<b><i>In this section, we want to know how you think that Parkinson''s disease and its associated symptoms affect the way that other people see you</i></b>. You told us earlier that you have noticed more <b>problems with thinking</b> that is a change from your normal abilities. Please consider these symptoms affecting your thinking and answer the following questions. <br /><br />Because of my <b>thinking symptoms...</b>",
                                "fr": "Dans cette section, nous voulons savoir comment vous pensez que la maladie de Parkinson et les <b>symptômes de la maladie affectent la façon dont vous êtes perçu par les gens autour de vous</b>. Vous nous avez dit plus tôt que vous aviez remarqué davantage de <b>problèmes de pensée</b>, c''est-à-dire un changement par rapport à vos capacités normales. Veuillez réfléchir à ces symptômes qui affectent votre pensée et répondez aux questions suivantes:<br /><br />À cause de mes <b>symptômes au niveau de la pensée...</b>"
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14a-thinking-people-seem-uncomfortable",
                            "textContent": {
                                "en": "Some people seem uncomfortable with me",
                                "fr": "Je pense que les gens sont mal à l''aise en ma présence"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14b-thinking-people-are-avoiding-me",
                            "textContent": {
                                "en": "Some people are avoiding me",
                                "fr": "Je pense que les gens m''évitent"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14c-thinking-i-feel-embarrassed-in-social-situations",
                            "textContent": {
                                "en": "I feel embarrassed in social situations",
                                "fr": "Je me sens gêné(e) dans les situations sociales"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14d-thinking-i-feel-left-out",
                            "textContent": {
                                "en": "I feel left out of things",
                                "fr": "Je me sens exclu(e)"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "14e-thinking-burden-to-others",
                            "textContent": {
                                "en": "I worry that I am a burden to others",
                                "fr": "J''ai l''impression d''être un fardeau pour les autres "
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "8-change-from-normal-abilities",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider2",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText4",
                            "title": {
                                "en": "Mood",
                                "fr": "Humeur"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText4_1",
                            "title": {
                                "en": "The following questions are aimed at understanding if, and how, you have experienced <b>mood changes</b> (whether related or unrelated to the Parkinson''s disease).",
                                "fr": "Les questions suivantes visent à comprendre si, et comment, vous avez ressenti des <b>changements au niveau de l''humeur</b> (liés ou non à la maladie de Parkinson)."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displaytext17",
                            "title": {
                                "en": "We are using the term <b>\\"mood\\"</b> to refer to all emotional states, which can include happiness, sadness, hopelessness, depression, anger, fear, excessive worry, anxiety, irritability, loss of motivation, paranoia, difficulty controlling urges, compulsions, obsessions, etc.<br /><br/> People with Parkinson''s disease might experience mood changes for a variety of reasons. Some people notice very little or no changes at all, while others notice more important changes. These changes might be related or unrelated to the Parkinson''s disease.",
                                "fr": "Nous utilisons le terme <b>\\"humeur\\"</b> pour désigner tous les états émotionnels, incluant la joie, la tristesse, le désespoir, la dépression, la colère, la peur, l''inquiétude excessive, l''anxiété, l''irritabilité, la perte de motivation, la paranoïe, la difficulté à contrôler les pulsions, les compulsions, les obsessions, etc. <br /><br />Les personnes atteintes de la maladie de Parkinson peuvent connaître des changements d''humeur pour diverses raisons. Certaines personnes ne remarquent que peu ou pas de changements du tout, tandis que d''autres remarquent des changements plus importants. Ces changements peuvent être liés ou non à la maladie de Parkinson."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "15-experienced-changes-to-mood-since-diagnosis",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "Have you experienced <b>changes to your mood</b> since your diagnosis with Parkinson''s disease",
                                "fr": "Avez-vous connu des <b>changements d''humeur</b> depuis votre diagnostic de la maladie de Parkinson?"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "16-most-attribute-mood-changes-to",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "indent": 1,
                            "textContent": {
                                "en": "What do you <b>MOST</b> believe are the reasons for the <b>change to your mood</b>? Please select all that apply:",
                                "fr": "A quoi attribuez-vous <b>LE PLUS</b> les <b>changements d''humeur</b>? Veuillez sélectionner tous les choix qui s''appliquent à vous"
                            },
                            "actions": {
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "PD",
                                        "fr": "Maladie de Parkinson"
                                    },
                                    "value": "pd"
                                },
                                {
                                    "label": {
                                        "en": "Aging",
                                        "fr": "Vieillissement"
                                    },
                                    "value": "aging"
                                },
                                {
                                    "label": {
                                        "en": "Stress and coping with the disease",
                                        "fr": "Stress lié au diagnostic et à la gestion de la maladie"
                                    },
                                    "value": "stress-and-coping-with-disease"
                                },
                                {
                                    "label": {
                                        "en": "Stress related to other life events",
                                        "fr": "Stress lié à d''autres événements de vie"
                                    },
                                    "value": "stress-related-to-other-life-events"
                                },
                                {
                                    "label": {
                                        "en": "Pre-existing psychiatric condition (e.g. major depression, bipolar disorder, schizophrenia, etc)",
                                        "fr": "Condition psychiatrique préexistante (par exemple, dépression majeure, trouble bipolaire, schizophrénie, etc.)"
                                    },
                                    "value": "pre-existing-psychiatric-condition"
                                },
                                {
                                    "label": {
                                        "en": "Other medical illness",
                                        "fr": "Autre condition médicale"
                                    },
                                    "value": "other-medical-illness"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "17-mood-symptoms-prescribed-medications",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "textContent": {
                                "en": "Has your healthcare team prescribed any medications for your <b>mood symptoms</b>?",
                                "fr": "Est-ce que votre équipe médicale a prescrit des médicaments pour vos <b>symptômes d''humeur</b>?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "18-first-learned-mood-changes-are-symptoms-of-PD",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "<b>When</b> did you first learn that <b>mood changes</b> are part of the symptoms of Parkinson''s disease?",
                                "fr": "<b>Quand</b> avez-vous appris que les <b>changements d''humeur</b> faisaient partie des symptômes de la maladie de Parkinson?"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "I did not know anything about mood changes in PD before filling out this survey",
                                        "fr": "Je ne savais rien des changements d''humeur liés à la maladie de Parkinson avant de répondre à ce questionnaire."
                                    },
                                    "value": "didnt-know-before-doing-survey"
                                },
                                {
                                    "label": {
                                        "en": "Before PD diagnosis (I already knew about PD and its symptoms before I received my diagnosis)",
                                        "fr": "Avant le diagnostic de la maladie de Parkinson (c''est-à-dire que même avant de recevoir mon diagnostic, je connaissais déjà les symptômes de la maladie de Parkinson)."
                                    },
                                    "value": "before-pd-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "At the time of PD diagnosis; it was discussed by the medical team",
                                        "fr": "Au moment du diagnostic de la maladie de Parkinson car l''équipe médicale en a discuté avec moi."
                                    },
                                    "value": "at-the-time-of-PD-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "After my diagnosis of PD because I started to learn about the disease",
                                        "fr": "Après le diagnostic de la maladie de Parkinson car j''ai commencé à me renseigner sur la maladie "
                                    },
                                    "value": "after-my-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "Only once I started to experience mood changes myself",
                                        "fr": "Seulement après que je commence moi-même à ressentir des symptômes d''humeur"
                                    },
                                    "value": "only-after-experiencing-mood-changes"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "19-how-i-learned-mood-changes-are-symptoms-of-PD",
                            "textContent": {
                                "en": "<b>How</b> did you first learn that <b>mood changes</b> are part of the symptoms of Parkinson''s disease? Please select all that apply",
                                "fr": "<b>Comment</b> avez-vous appris que les <b>changements d''humeur</b> font partie des symptômes de la maladie de Parkinson? Veuillez sélectionner toutes les réponses qui s''appliquent à vous."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "By doing this survey",
                                        "fr": "En répondant à ce questionnaire"
                                    },
                                    "value": "doing-this-survey"
                                },
                                {
                                    "label": {
                                        "en": "My physician",
                                        "fr": "Mon médecin"
                                    },
                                    "value": "my-physician"
                                },
                                {
                                    "label": {
                                        "en": "Other health care worker (e.g. occupational therapist, nurse)",
                                        "fr": "Un autre professionnel de santé (p. ex., ergothérapeute, infirmièr.ère)"
                                    },
                                    "value": "other-health-care-worker"
                                },
                                {
                                    "label": {
                                        "en": "Printed materials from clinic",
                                        "fr": "Documents imprimés de votre clinique"
                                    },
                                    "value": "printed-materials-from-clinic"
                                },
                                {
                                    "label": {
                                        "en": "Information provided by foundations (e.g. webinar, printed materials)",
                                        "fr": "Informations fournies par les fondations (p. ex., webinaires, documents imprimés)"
                                    },
                                    "value": "info-provided-by-foundations"
                                },
                                {
                                    "label": {
                                        "en": "Support groups",
                                        "fr": "Groupes de soutien"
                                    },
                                    "value": "support-groups"
                                },
                                {
                                    "label": {
                                        "en": "Social media",
                                        "fr": "Médias sociaux"
                                    },
                                    "value": "social-media"
                                },
                                {
                                    "label": {
                                        "en": "Friends/family doing research",
                                        "fr": "Amis/famille faisant des recherches "
                                    },
                                    "value": "friends-or-family-doing-research"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "20-most-helpful-to-learn-mood-changes-are-part-of-symptoms-of-pd",
                            "validation": {
                                "required": true
                            },
                            "indent": 1,
                            "textContent": {
                                "en": "Which <b>ONE</b> of the following items was the <b>MOST</b> helpful in learning that <b>mood changes</b> are part of the symptoms of Parkinson''s disease? Please select the best option.",
                                "fr": "<b>Lequel</b> des éléments suivants a été le <b>PLUS</b> utile pour apprendre que les <b>changements d''humeur</b> font partie des symptômes de la maladie de Parkinson ? Veuillez sélectionner la meilleure option."
                            },
                            "allowMultipleSelections": false,
                            "condition": {
                                "dependsOnKey": "19-how-i-learned-mood-changes-are-symptoms-of-PD",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true,
                                    "hideWhenValuesSelected": [ "prefer-not-to-answer" ],
                                    "populateResultsBasedOnSelectedValues": {
                                        "valuesToHide": ["not-sure"]
                                    }
                                }
                            },
                            "options": []
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText5",
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "title": {
                                "en": "In this section we want to know how you think that Parkinson''s disease and its associated symptoms affect the <b>way that other people see you</b>. You told us earlier that you have <b>changes to your mood</b>. Please consider these mood symptoms and answer the following questions. <br /><br />Because of my <b>mood symptoms...</b>",
                                "fr": "Dans cette section, nous voulons savoir comment vous pensez que la maladie de Parkinson et les <b>symptômes de la maladie affectent la façon dont vous êtes perçu pas les gens autour de vous</b>. Vous nous avez dit plus tôt que vous aviez remarqué des <b>changements d''humeur</b>. Veuillez réfléchir à ces changements au niveau de l''humeur et répondez aux questions suivantes. <br /><br />À cause de mes <b>symptômes d''humeur</b>..."
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21a-mood-people-seem-uncomfortable",
                            "textContent": {
                                "en": "Some people seem uncomfortable with me",
                                "fr": "Je pense que les gens sont mal à l''aise en ma présence"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21b-mood-people-are-avoiding-me",
                            "textContent": {
                                "en": "Some people are avoiding me",
                                "fr": "Je pense que les gens m''évitent"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21c-mood-i-feel-embarrassed-in-social-situations",
                            "textContent": {
                                "en": "I feel embarrassed in social situations",
                                "fr": "Je me sens gêné(e) dans les situations sociales"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21d-mood-i-feel-left-out",
                            "textContent": {
                                "en": "I feel left out of things",
                                "fr": "Je me sens exclu(e)"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "21e-mood-burden-to-others",
                            "textContent": {
                                "en": "I worry that I am a burden to others",
                                "fr": "J''ai l''impression d''être un fardeau pour les autres "
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "15-experienced-changes-to-mood-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
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
                                        "en": "Sometimes",
                                        "fr": "Parfois"
                                    },
                                    "value": "sometimes"
                                },
                                {
                                    "label": {
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider3",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText18",
                            "title": {
                                "en": "Motor",
                                "fr": "Mobilité"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText14",
                            "title": {
                                "en": "In this section, we are asking about the <b>motor symptoms</b> of Parkinson''s disease, which can include tremor, stiffness, slowness, difficulty walking, poor balance, falls, loss of dexterity, difficulty with activities such as dressing, cooking or eating, etc.",
                                "fr": "Dans cette section, nous posons des questions sur les <b>symptômes moteurs</b> de la maladie de Parkinson. Ces symptômes peuvent inclure des tremblements, de la raideur, de la lenteur, des problèmes de marche, le déséquilibre, des chutes, une perte de dextérité, de la difficulté avec des activités telles que s''habiller, cuisiner ou manger, etc."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "22-experienced-motor-symptoms-since-diagnosis",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Have you experienced <b>motor symptoms</b> since your diagnosis with Parkinson''s disease?",
                                "fr": "Avez-vous connu des <b>symptômes moteurs</b> depuis votre diagnostic de la maladie de Parkinson?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText19",
                            "title": {
                                "en": "In this section, we want to know how you think that Parkinson''s disease and its associated symptoms <b>affect the way that other people see you</b>. You told us earlier that you experienced <b>motor symptoms</b>. Please consider your motor symptoms and tell us how often you experience the following:<br /><br />Because of my <b>motor</b> symptoms...",
                                "fr": "Dans cette section, nous voulons savoir comment vous pensez que la maladie de Parkinson et les <b>symptômes de la maladie affectent la façon dont vous êtes perçu pas les gens autour de vous</b>. Vous nous avez dit plus tôt que vous aviez remarqué des <b>symptômes moteurs</b>. Veuillez réfléchir à ces symptômes qui affectent votre mobilité et répondez aux questions suivantes. <br /><br />A cause de mes <b>symptômes moteurs</b>..."
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23a-motor-people-seem-uncomfortable",
                            "textContent": {
                                "en": "Some people seem uncomfortable with me",
                                "fr": "Je pense que les gens sont mal à l''aise en ma présence"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamis"
                                    },
                                    "value": "never"
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
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23b-motor-people-are-avoiding-me",
                            "textContent": {
                                "en": "Some people are avoiding me",
                                "fr": "Je pense que les gens m''évitent"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamis"
                                    },
                                    "value": "never"
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
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23c-motor-i-feel-embarrassed-in-social-situations",
                            "textContent": {
                                "en": "I feel embarrassed in social situations",
                                "fr": "Je me sens gêné(e) dans les situations sociales"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamis"
                                    },
                                    "value": "never"
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
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23d-motor-i-feel-left-out",
                            "textContent": {
                                "en": "I feel left out of things",
                                "fr": "Je me sens exclu(e)"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamis"
                                    },
                                    "value": "never"
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
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "23e-motor-burden-to-others",
                            "textContent": {
                                "en": "I worry that I am a burden to others",
                                "fr": "J''ai l''impression d''être un fardeau pour les autres"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "22-experienced-motor-symptoms-since-diagnosis",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Never",
                                        "fr": "Jamis"
                                    },
                                    "value": "never"
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
                                        "en": "Always",
                                        "fr": "Toujours"
                                    },
                                    "value": "always"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider8",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText6",
                            "title": {
                                "en": "Your expectations about the symptoms of Parkinson''s disease.",
                                "fr": "Attentes concernant les symptômes de la maladie de Parkinson"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText7",
                            "title": {
                                "en": "In this section, we are interested in finding out about how you <i><b>expected</b></i> that Parkinson''s disease <i><b>would</b></i> affect you (e.g. based on what your medical team had told you, what you have read about PD, or how you have seen PD depicted in the media/culture), compared to how it <i><b>is</b></i> affecting you.",
                                "fr": "Dans cette section, nous souhaitons connaître vos <b>attentes</b> quant à la façon dont vous <i>pensiez</i> que la maladie de Parkinson vous <i>affecterait</i> (par exemple, en fonction de ce que votre équipe médicale vous avait dit, de ce que vous avez lu sur la maladie de Parkinson ou de la façon dont vous avez vu la maladie de Parkinson représentée dans les médias/culture), par rapport à la façon dont elle vous a <i><b>affecté</b></i> jusqu''à date."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "24-how-experience-of-thinking-changes-compares-to-expected",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "How does your <b>experience of changes to your thinking</b> (or absence of any changes) since your diagnosis of Parkinson''s disease <b>compare</b> to the thinking changes you <i><b>expected</b></i> would occur as a result of having Parkinson''s disease?",
                                "fr": "Comment votre expérience des <b>changements de pensée</b> (ou de l''absence de changements) depuis le diagnostic de la maladie de Parkinson se <b>compare</b>-t-elle aux changements de pensée auxquels vous vous <b>attendiez</b> à avoir en lien avec la maladie de Parkinson?"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "This is exactly what I expected",
                                        "fr": "C''est exactement ce à quoi je m''attendais"
                                    },
                                    "value": "exactly-what-i-expected"
                                },
                                {
                                    "label": {
                                        "en": "This is not as bad as I thought it would be",
                                        "fr": "Ce n''est pas aussi grave que ce à quoi je m''attendais"
                                    },
                                    "value": "not-as-bad-as-i-thought"
                                },
                                {
                                    "label": {
                                        "en": "I was expecting some changes to my thinking, but this is worse than I thought it would be",
                                        "fr": "Je m''attendais à des changements de pensée, mais c''est pire que ce à quoi je m''attendais "
                                    },
                                    "value": "worse-than-i-thought"
                                },
                                {
                                    "label": {
                                        "en": "I didn''t know about the possibility of developing changes to my thinking",
                                        "fr": "Je ne savais pas qu''il était possible de développer des changements de pensée à cause de la maladie de Parkinson"
                                    },
                                    "value": "didnt-know-changes-to-thinking-possible"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "25-how-experience-of-mood-symptoms-compares-to-expected",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "How does your <b>experience of mood symptoms</b> (or absence of mood symptoms) since your diagnosis of Parkinson''s disease <b>compare</b> to the mood symptoms you <i><b>expected</b></i> would occur as a result of having Parkinson''s disease?",
                                "fr": "Comment votre expérience (ou non) des <b>symptômes de l''humeur</b> depuis le diagnostic de la maladie de Parkinson se <b>compare</b>-t-elle aux symptômes d''humeur auxquels vous vous <b>attendiez</b> à avoir en raison de la maladie de Parkinson?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "This is exactly what I expected",
                                        "fr": "C''est exactement ce à quoi je m''attendais"
                                    },
                                    "value": "exactly-what-i-expected"
                                },
                                {
                                    "label": {
                                        "en": "This is not as bad as I thought it would be",
                                        "fr": "Ce n''est pas aussi grave que ce à quoi je m''attendais"
                                    },
                                    "value": "not-as-bad-as-i-thought"
                                },
                                {
                                    "label": {
                                        "en": "I was expecting some mood symptoms, but this is worse than I thought it would be",
                                        "fr": "Je m''attendais à des symptômes d''humeur, mais c''est pire que ce à quoi je m''attendais "
                                    },
                                    "value": "worse-than-i-thought"
                                },
                                {
                                    "label": {
                                        "en": "I didn''t know about the possibility of developing mood symptoms",
                                        "fr": "Je ne savais pas qu''il était possible de développer des symptômes d''humeur à cause de la maladie de Parkinson"
                                    },
                                    "value": "didnt-know-changes-to-mood-possible"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider4",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText8",
                            "title": {
                                "en": "What you know about Parkinson''s disease",
                                "fr": "Ce que vous connaissez de la maladie de Parkinson"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText9",
                            "title": {
                                "en": "In this section, we are interested in finding out what you know about Parkinson''s disease. <b>The point here is not to test you, but rather to get an idea of how well health care teams inform patients about their condition.</b> Later we will be asking you about what you <i>want to know about PD</i>",
                                "fr": "Dans cette section, nous souhaitons savoir ce que vous connaissez de la maladie de Parkinson. <b>Il ne s''agit pas ici de vous tester, mais plutôt d''avoir une idée de la manière dont les professionnels de la santé informent les patients sur leur maladie</b>. Plus tard, nous vous demanderons <i>ce que vous voulez savoir sur la maladie de Parkinson</i>."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "<b>DEMENTIA</b>: As people progress with PD, what percentage of people do you think will eventually develop <b>dementia</b> due to Parkinson''s disease?<br /><br />",
                                "fr": "<b>La démence</b>: Au fur et à mesure que la maladie de Parkinson évolue, quel est le pourcentage de personnes qui, selon vous, finiront par développer <b>une démence</b> due à la maladie de Parkinson?<br /><br />"
                            },
                            "textContent": {
                                "en": "<i>Dementia refers to changes to thinking that are severe enough to cause a partial or a total loss of independence. </i><br /><br /><b>If you believe few people with PD develop dementia, choose a low number. Choose a high number if you believe more people with PD eventually develop dementia.</b><br /><br /><i><b>For example</b></i>:<br /><b>0%</b> = No one with PD ever develops dementia eventually<br /><b>100%</b> = Everyone with PD develops dementia eventually<br /><br />",
                                "fr": "<i>La démence désigne des changements de pensée suffisamment graves pour entraîner une perte partielle ou totale d''indépendance</i><br /><br /><b>Si vous pensez que peu de personnes développeront une démence, choisissez un chiffre bas sur l''échelle ci-dessous. Choisissez un chiffre élevé si vous pensez qu''un plus grand nombre de personnes atteintes de la maladie de Parkinson développeront une démence.</b><br /><br /><i><b>Par exemple</b></i>: <br /><b>0%</b> = Aucune personne atteinte de la MP développe la démence<br/ ><b>100%</b> = Toutes les personnes atteintes de la MP développent éventuellement la démence<br/ >"
                            },
                            "helperText": {
                                "en": "Select a percentage by sliding the circle icon",
                                "fr": "Sélectionnez un pourcentage en faisant glisser le curseur circulaire"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "26-percentage-develops-dementia",
                            "legend": [ 
                                {
                                    "en": "0%: No one with PD ever develops dementia eventually",
                                    "fr": "0%: Aucune personne atteinte de la MP développe la démence"
                                },
                                {
                                    "en": "100%: Everyone with PD develops dementia eventually",
                                    "fr": "100%: Toutes les personnes atteintes de la MP développent éventuellement la démence"
                                }
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "<b>THINKING CHANGES</b>: What percentage of people do you think will eventually develop <b>any degree of changes to their thinking</b> due to Parkinson''s disease?<br /><br />",
                                "fr": "<b>Changements de pensée</b>: Quel est le pourcentage de personnes qui, selon vous, finiront éventuellement par avoir <b>des changements de pensée</b> dus à la maladie de Parkinson?<br /><br />"
                            },
                            "textContent": {
                                "en": "<i>We are referring to any changes in memory, concentration, organization, orientation, or any other changes to thinking, whether mild or severe, that are sufficient to be noted by the individual or by their loved ones. These changes could be so mild that they don''t affect everyday life, to so severe that they lead to loss of independence and dementia. <br />(The percentage you provide here should be at least as high as the number you entered in the last question).</i><br /><br /><b>If you believe few people with PD develop thinking changes, choose a low number on the slider below. Choose a high number if you believe more people with PD eventually develop thinking changes.</b><br /><br /><i><b>For example:</b></i><br /><b>0%</b> = No one with PD develops any degree of thinking changes<br /><b>100%</b> = Everyone with PD develops some degree of thinking changes<br /><br />",
                                "fr": "<i>Nous faisons référence à tout changement cognitif, comme des changements au niveau de la mémoire, de la concentration, de l''organisation, de l''orientation ou de tout autre changement de la pensée, qu''il soit léger ou grave. Ces changements peuvent être si légers qu''ils n''affectent pas la vie quotidienne, ou si graves qu''ils conduisent à une perte d''autonomie et à la démence. (Le pourcentage que vous indiquez ici doit être au moins aussi élevé (mais pas plus élevé) que le pourcentage que vous avez indiqué à la dernière question).</i><br /><br /><b>Si vous pensez que peu de personnes auront des changements de pensée, choisissez un chiffre bas sur l''échelle ci-dessous. Choisissez un chiffre élevé si vous pensez qu''un plus grand nombre de personnes atteintes de la maladie de Parkinson auront des symptômes de l''humeur.</b><br /><br /><i><b>Par exemple:</b></i><br /><b>0%</b> = Aucune personnes atteinte de la MP développe des changements de pensée<br /><b>100%</b> = Toutes les personnes atteintes de la MP développent des changements de pensée"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "helperText": {
                                "en": "Select a percentage by sliding the circle icon",
                                "fr": "Sélectionnez un pourcentage en faisant glisser le curseur circulaire"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "27-percentage-develops-thinking-changes",
                            "legend": [ 
                                {
                                    "en": "0%: No one with PD develops any degree of thinking changes",
                                    "fr": "0%: Aucune personnes atteinte de la MP développe des changements de pensée"
                                },
                                {
                                    "en": "100%: Everyone with PD develops some degree of thinking changes",
                                    "fr": "100%: Toutes les personnes atteintes de la MP développent des changements de pensée"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "28-treatment-for-cognitive-changes-involves",
                            "title": {
                                "en": "The treatment for <b>thinking changes</b> in Parkinson''s disease involves: (please select all that apply)",
                                "fr": "Le traitement des <b>changements de pensée</b> dans la maladie de Parkinson comprend : (sélectionnez toutes les réponses qui s''appliquent)"
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Medication to cure the thinking changes, i.e. to permanently reverse the thinking changes",
                                        "fr": "Des médicaments pour guérir les changements de pensée, c''est-à-dire pour inverser de façon permanente les changements de pensée."
                                    },
                                    "value": "medication-to-cure-thinking-changes"
                                },
                                {
                                    "label": {
                                        "en": "Medication to alleviate the symptoms of thinking changes, i.e. to reduce their severity",
                                        "fr": "Des médicaments pour soulager les symptômes des changements de pensée, c''est-à-dire pour en réduire la sévérité. "
                                    },
                                    "value": "medication-to-alleviate-thinking-change-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "No medications exist, but therapies that do not involve medications (e.g. occupational therapy) can help cope with the changes",
                                        "fr": "Il n''existe aucun médicament, mais certaines thérapies qui n''impliquent pas les médicaments (par exemple, l''ergothérapie) peuvent aider à gérer les changements. "
                                    },
                                    "value": "no-medications-exist-but-therapies-can-help-cope"
                                },
                                {
                                    "label": {
                                        "en": "Nothing at all can be done for the thinking changes in PD",
                                        "fr": "Rien ne peut être fait pour les changements de pensée de la maladie de Parkinson"
                                    },
                                    "value": "nothing-can-be-done"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "slider",
                            "title": {
                                "en": "<b>MOOD SYMPTOMS</b>: As people progress with PD, what percentage of people will, at some point, experience changes to their mood due to Parkinson''s disease?<br /><br />",
                                "fr": "<b>Symptômes d''humeur</b> : Au fur et à mesure que la maladie de Parkinson évolue, selon vous, quel pourcentage de personnes connaîtront, à un moment donné, des changements d''humeur dus à la maladie de Parkinson?<br /><br />"
                            },
                            "textContent": {
                                "en": "<i>Mood symptoms include depression, anxiety, excessive worrying, loss of motivation, paranoia, etc.</i><br /><br /><i><b>If you believe few people will experience mood symptoms, choose a low number on the slider below. Choose a high number if you believe more people with PD will experience mood symptoms.</b></i><br /><br /><i><b>For example:</b></i></br /><b>0%</b> = No one with PD develops any degree of mood symptoms<br /><b>100%</b> = Everyone with PD develops some degree of mood symptoms",
                                "fr": "<i>Les symptômes de l''humeur comprennent la dépression, l''anxiété, l''inquiétude excessive, la perte de motivation et l''apathie, la paranoïa, etc.</i><br /><br /><b>Si vous pensez que peu de personnes auront des symptômes d''humeur, choisissez un chiffre bas sur l''échelle ci-dessous. Choisissez un chiffre élevé si vous pensez qu''un plus grand nombre de personnes atteintes de la maladie de Parkinson auront des symptômes d''humeur.</b><br /><br /><i><b>Par exemple</b></i>:<br /><b>0%</b> = Aucune personne développe des symptômes d''humeur dus à la maladie de Parkinson<br /><b>100%</b> = Toutes les personnes atteintes de la maladie de Parkinson développent des symptômes d''humeur"
                            },
                            "helperText": {
                                "en": "Select a percentage by sliding the circle icon",
                                "fr": "Sélectionnez un pourcentage en faisant glisser le curseur circulaire"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "29-percentage-develops-mood-changes",
                            "legend": [ 
                                {
                                    "en": "0%: No one with PD develops any degree of mood symptoms",
                                    "fr": "0%: Aucune personne développe des symptômes d''humeur dus à la maladie de Parkinson"
                                },
                                {
                                    "en": "100%: Everyone with PD develops some degree of mood symptoms",
                                    "fr": "100%: Toutes les personnes atteintes de la maladie de Parkinson développent des symptômes d''humeur"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "30-treatment-of-mood-symptoms-involves",
                            "textContent": {
                                "en": "The treatment of <b>mood symptoms</b> in Parkinson''s disease involves: (please select all that apply)",
                                "fr": "Le traitement des <b>symptômes d''humeur</b> dans la maladie de Parkinson comprend: (sélectionnez toutes les réponses qui s''appliquent)"
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Medication to cure the mood symptoms, i.e. to permanently reverse the mood symptoms",
                                        "fr": "Des médicaments pour guérir les symptômes de l''humeur, c''est-à-dire pour inverser de façon permanente les symptômes."
                                    },
                                    "value": "medication-to-cure-mood-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "Medication to alleviate the mood symptoms",
                                        "fr": "Des médicaments pour atténuer la sévérité des symptômes d''humeur"
                                    },
                                    "value": "medication-to-alleviate-mood-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "No medications exist, but therapy that does not involve medications (e.g. talk therapy) can help cope with or reduce the symptoms",
                                        "fr": "Il n''existe pas de médicaments, mais certaines thérapies qui n''impliquent pas les médicaments (par exemple, la psychothérapie) peuvent aider à gérer les symptômes."
                                    },
                                    "value": "no-medications-exist-but-therapies-can-help-cope"
                                },
                                {
                                    "label": {
                                        "en": "Nothing at all can be done for the mood symptoms in PD",
                                        "fr": "Rien du tout ne peut être fait pour les symptômes d''humeur dans maladie de Parkinson"
                                    },
                                    "value": "nothing-can-be-done"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider5",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText10",
                            "title": {
                                "en": "About your interaction with the healthcare team",
                                "fr": "À propos de votre interaction avec l''équipe médicale"
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText11",
                            "title": {
                                "en": "In this section we are interested in finding out how much information you receive from your <b>healthcare team</b> and whether you are satisfied with your interactions with the <b>healthcare team</b>.<br /><br />Your <b>healthcare team</b> can include any of the health professionals that assist in the management of your Parkinson''s disease, such as a neurologist, nurses, occupational therapist, social workers, primary care physicians, etc",
                                "fr": "Dans cette section, nous cherchons à comprendre si vos interactions avec <b>l''équipe médicale</b> servent à vous informer sur la maladie de Parkinson et si vous êtes satisfait(e) de ces interactions.<br /><br />Votre <b>équipe médicale</b> peut comprendre tous les professionnels de la santé qui participent à la prise en charge de la maladie de Parkinson, tels que les neurologues, les infirmier.ères, les ergothérapeutes, les travailleur.ses sociaux, les médecins de famille, etc."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "31-how-often-thinking-changes-discussed",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "How often do you discuss whether you''ve experienced <b>changes to your thinking</b> in your visits?",
                                "fr": "À quelle fréquence discutez-vous de l''évolution des <b>changements au niveau de votre pensée</b> lors de vos visites?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Each visit",
                                        "fr": "A chaque visite"
                                    },
                                    "value": "each-visit"
                                },
                                {
                                    "label": {
                                        "en": "Only when I bring it up",
                                        "fr": "Seulement quand j''aborde moi-même le sujet"
                                    },
                                    "value": "only-when-i-bring-it-up"
                                },
                                {
                                    "label": {
                                        "en": "My healthcare team occasionally brings it up",
                                        "fr": "Mon équipe médicale en parle de temps en temps"
                                    },
                                    "value": "my-healthcare-team-occasionally-brings-it-up"
                                },
                                {
                                    "label": {
                                        "en": "I have never discussed this with my healthcare team",
                                        "fr": "Je n''en ai jamais discuté avec mon équipe médicale"
                                    },
                                    "value": "never-discussed-this-with-my-healthcare-team"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "32-time-spent-discussing-thinking-changes-sufficient",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "textContent": {
                                "en": "Do you think the time you spend with your <b>healthcare team</b> discussing <b>your thinking</b> is sufficient?",
                                "fr": "Pensez-vous que le temps passé avec votre <b>équipe médicale</b> à discuter de <b>changements de pensée</b> est suffisant?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "33-how-often-mood-symptoms-discussed",
                            "validation": {
                                "required": true
                            },
                            "textContent": {
                                "en": "How often do you discuss your <b>mood symptoms</b> in your visits?",
                                "fr": "À quelle fréquence discutez-vous de vos <b>symptômes d''humeur</b> lors de vos visites?"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Each visit",
                                        "fr": "A chaque visite"
                                    },
                                    "value": "each-visit"
                                },
                                {
                                    "label": {
                                        "en": "Only when I bring it up",
                                        "fr": "Seulement quand j''aborde moi-même le sujet"
                                    },
                                    "value": "only-when-i-bring-it-up"
                                },
                                {
                                    "label": {
                                        "en": "My healthcare team occasionally brings it up",
                                        "fr": "Mon équipe médicale en parle de temps en temps"
                                    },
                                    "value": "my-healthcare-team-occasionally-brings-it-up"
                                },
                                {
                                    "label": {
                                        "en": "I have never discussed this with my healthcare team",
                                        "fr": "Je n''en ai jamais discuté avec mon équipe médicale"
                                    },
                                    "value": "never-discussed-this-with-my-healthcare-team"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "34-time-spent-discussing-mood-symptoms-sufficient",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "textContent": {
                                "en": "Do you think the time you spend with your <b>healthcare team</b> discussing <b>mood symptoms</b> is sufficient?",
                                "fr": "Pensez-vous que le temps passé avec votre <b>équipe médicale</b> à discuter <b>de symptômes d''humeur</b> est suffisant?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "35-care-partner-attending-medical-appointments-always-or-sometimes",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "textContent": {
                                "en": "Do you have a care partner who attends medical appointments with you some or all of the time?",
                                "fr": "Avez-vous un proche ( par ex., conjoint(e), ami(e), aidant naturel) qui assiste à vos rendez-vous médicaux avec vous (que cela soit à l''occasion ou régulièrement)?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "35a-care-partner-sufficiently-involved-in-medical-team-conversations",
                            "validation": {
                                "required": true
                            },
                            "indent": 1,
                            "textContent": {
                                "en": "Do you find that your care partner is sufficiently involved in the conversations with the medical team?",
                                "fr": "Trouvez-vous que votre partenaire de soins est suffisamment impliqué dans les conversations avec l''équipe médicale?"
                            },
                            "condition": {
                                "dependsOnKey": "35-care-partner-attending-medical-appointments-always-or-sometimes",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "label": {
                                        "en": "No because they can''t attend often enough",
                                        "fr": "Non, car il ou elle ne peut pas être présent(e) assez souvent"
                                    },
                                    "value": "no-they-cant-attend-often-enough"
                                },
                                {
                                    "label": {
                                        "en": "No because the medical team does not include them enough in the discussion",
                                        "fr": "Non parce que l''équipe médicale ne l''inclus pas assez dans la discussion"
                                    },
                                    "value": "no-medical-team-doesnt-include-them"
                                },
                                {
                                    "label": {
                                        "en": "No because they prefer not to be involved in the discussions",
                                        "fr": "Non parce qu''il ou elle préfère ne pas être impliqué(e) dans les discussions"
                                    },
                                    "value": "no-they-prefer-not-to-be-involved"
                                },
                                {
                                    "label": {
                                        "en": "No because I prefer them not to be involved in the discussions",
                                        "fr": "Non parce que je préfère qu''il ou elle ne soit pas impliqué(e) dans les discussions"
                                    },
                                    "value": "no-i-prefer-them-not-to-be-involved"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "36-i-view-thinking-and-mood-symptoms-i-experience",
                            "textContent": {
                                "en": "Since my time of PD diagnosis, I view the <b>thinking and mood symptoms</b> that I experience as: (please select all that apply)",
                                "fr": "Depuis le moment où j''ai reçu mon diagnostic de maladie de Parkinson, je considère les <b>changements de pensée et les symptômes d''humeur</b> que je ressens comme étant: (choisissez toutes les réponses qui s''appliquent à vous)"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "allowMultipleSelections": true,
                            "validation": {
                                "required": true
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "A part of life",
                                        "fr": "Une partie de la vie"
                                    },
                                    "value": "a-part-of-life"
                                },
                                {
                                    "label": {
                                        "en": "Related to Parkinson''s disease",
                                        "fr": "Liés à la maladie de Parkinson"
                                    },
                                    "value": "related-to-parkinsons-disease"
                                },
                                {
                                    "label": {
                                        "en": "Entirely under my control and therefore I would rather not discuss them with the medical team",
                                        "fr": "Entièrement sous mon contrôle et je préfère donc ne pas en parler avec l''équipe médicale"
                                    },
                                    "value": "under-my-control-so-i-prefer-not-discuss-them"
                                },
                                {
                                    "label": {
                                        "en": "Without effective treatment, therefore I would rather not discuss them",
                                        "fr": "Sans traitement efficace, je préfère donc ne pas en parler."
                                    },
                                    "value": "without-effective-treatment"
                                },
                                {
                                    "label": {
                                        "en": "Less important than my motor symptoms",
                                        "fr": "Moins importants que mes symptômes moteurs"
                                    },
                                    "value": "less-important-than-my-motor-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "More important than my motor symptoms",
                                        "fr": "Plus importants que mes symptômes moteurs"
                                    },
                                    "value": "more-important-than-my-motor-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "Embarrassing",
                                        "fr": "Gênants"
                                    },
                                    "value": "embarrassing"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider6",
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText12",
                            "title": {
                                "en": "Understanding what you would like to know",
                                "fr": "Comprendre ce que vous souhaitez savoir."
                            },
                            "styles": {
                                "title-font-size": "lg"
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText13",
                            "title": {
                                "en": "In this section, we are interested in finding out how you <i><b>would ideally like</b></i> the different aspects of Parkinson''s disease to be discussed with you",
                                "fr": "Dans cette section, nous voulons comprendre comment <i><b>vous aimeriez idéalement</b></i> que votre équipe médicale discute avec vous des différents aspects de la maladie de Parkinson."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "37-value-discussing-thinking-and-mood-symptoms",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "actions": {
                                "clearOtherOptionsWhenValueSelected": ["prefer-not-to-answer"],
                                "onlyDisableOtherOptionsWhenValueSelected": ["prefer-not-to-answer"]
                            },
                            "textContent": {
                                "en": "What is the <b>value</b> to you of discussing your <b>thinking and mood symptoms</b> with your medical team? Please select all that apply:",
                                "fr": "Quel est <b>l''intérêt</b> pour vous de discuter de vos <b>symptômes de pensée et d''humeur</b> avec votre équipe médicale ? Veuillez choisir toutes les réponses qui s''appliquent :"
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "It is helpful to talk about the symptoms and have them validated",
                                        "fr": "Il est utile de parler des symptômes et de les faire valider"
                                    },
                                    "value": "helpful-to-talk-about-symptoms-and-have-them-validated"
                                },
                                {
                                    "label": {
                                        "en": "It is helpful to talk about the symptoms so that they can be treated",
                                        "fr": "Il est utile de parler de ces symptômes pour qu''ils puissent être traités"
                                    },
                                    "value": "helpful-to-talk-about-symptoms-so-that-they-can-be-treated"
                                },
                                {
                                    "label": {
                                        "en": "It is helpful to talk about these symptoms in front of my caregiver so that they have a better understanding of what I''m going through",
                                        "fr": "Il est utile de parler de ces symptômes en présence de mes proches/aidants pour qu''ils comprennent mieux ce que je vis."
                                    },
                                    "value": "helpful-to-talk-about-symptoms-in-front-of-my-caregiver"
                                },
                                {
                                    "label": {
                                        "en": "It is helpful for the medical team to hear my caregiver''s perspective on these issues",
                                        "fr": "Il est utile pour l''équipe médicale d''entendre le point de vue de mes proches ou aidants sur ces questions."
                                    },
                                    "value": "helpful-for-medical-team-to-hear-my-caregivers-perspective"
                                },
                                {
                                    "label": {
                                        "en": "It is not useful; I would prefer to focus on other symptoms of Parkinson''s disease",
                                        "fr": "Ce n''est pas utile; je préférerais me concentrer sur d''autres symptômes de la maladie de Parkinson."
                                    },
                                    "value": "not-useful-id-prefer-to-focus-on-other-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "It is not useful; I don''t experience these symptoms",
                                        "fr": "Ce n''est pas utile; je ne ressens pas ces symptômes."
                                    },
                                    "value": "not-useful-i-dont-experience-these-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "key": "38-want-to-be-told-of-possibility-of-developing-thinking-mood-symptoms-at-time-of-diagnosis",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": ["yes"]
                                }
                            },
                            "textContent": {
                                "en": "Ideally, would you have wanted to be told about the <i><b>possibility</b></i> of developing <b>thinking and mood symptoms</b> as part of Parkinson''s disease <b>at the time of your diagnosis</b>?",
                                "fr": "Idéalement, auriez-vous souhaité être informé dès votre diagnostic de la <i><b>possibilité</b></i> de développer des <b>symptômes de pensée et d''humeur</b> liés à la maladie de Parkinson?"
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes, I think it''s important to be informed about the possibility of developing these symptoms, even if I was not experiencing them yet",
                                        "fr": "Oui, je pense qu''il est important d''être informé de la possibilité de développer ces symptômes, même si je ne les ressens pas encore au moment du diagnostic."
                                    },
                                    "value": "yes-important-to-be-informed-even-before-experiencing-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "No, I would have preferred to wait until I develop the symptoms before being told about their link to Parkinson''s disease",
                                        "fr": "Non, j''aurais préféré attendre que les symptômes soient présents avant qu''on discute avec moi de leur lien avec la maladie de Parkinson."
                                    },
                                    "value": "no-preferred-to-wait-until-i-develop-symptoms"
                                },
                                {
                                    "label": {
                                        "en": "Other",
                                        "fr": "Autre"
                                    },
                                    "value": "other"
                                },
                                {
                                    "label": {
                                        "en": "Not sure",
                                        "fr": "Pas certain(e)"
                                    },
                                    "value": "not-sure"
                                },
                                {
                                    "label": {
                                        "en": "Prefer not to answer",
                                        "fr": "Je préfère ne pas répondre"
                                    },
                                    "value": "prefer-not-to-answer"
                                }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText15",
                            "title": {
                                "en": "Thank you for taking part in this survey. Your answers will help us learn more about your experience as a person living with Parkinson''s disease.",
                                "fr": "Nous vous remercions d''avoir participé à cette étude. Vos réponses nous aideront à mieux comprendre votre expérience en tant que personne vivant avec la maladie de Parkinson."
                            },
                            "condition": {
                                "dependsOnKey": "1-diagnosed-with-parkinsons",
                                "doConditional": {
                                    "onlyHideWhenEmpty": true
                                }
                            }
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 86;