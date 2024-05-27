
-- Parkinson Clinical and Medication Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Parkinson Clinical and Medication Questionnaire",
    description = "Parkinson Clinical and Medication Questionnaire",
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
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Do you have a diagnosis of Parkinson''s disease given to you by a doctor (e.g. family doctor or neurologist)?",
                                "fr": "Avez-vous un diagnostic de la maladie de Parkinson qui vous a été donné par un médecin (par exemple, un médecin de famille ou un neurologue)?"
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
                                        "en": "No, but I think I have Parkinson''s disease",
                                        "fr": "Non, mais je pense avoir la maladie de Parkinson"
                                    },
                                    "value": "No, but I think I have Parkinson''s disease"
                                }
                            ],
                            "key": "do-you-have-a-diagnosis-of-parkinsons-disease-given-to-you-by-a-doctor"
                        },
                        {
                            "questionType": "divider",
                            "key": "divider-1",
                            "condition": {
                                "dependsOnKey": "do-you-have-a-diagnosis-of-parkinsons-disease-given-to-you-by-a-doctor",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "input",
                            "title": {
                                "en": "In what year were you diagnosed with Parkinson'' disease?",
                                "fr": "En quelle année avez-vous reçu votre diagnostic de Parkinson? Si vous n''avez PAS la maladie de Parkinson, SVP inscrire \\"0\\"."
                            },
                            "key": "in-what-year-were-you-diagnosed-with-parkinsons-disease",
                            "label": {
                                "en": "Year (e.g. 2009)",
                                "fr": "Année (ex. 2009)"
                            },
                            "condition": {
                                "dependsOnKey": "do-you-have-a-diagnosis-of-parkinsons-disease-given-to-you-by-a-doctor",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Do you have rest tremor as part of your symptoms of Parkinson''s disease (either currently or in the past)?",
                                "fr": "Avez-vous un tremblement de repos comme symptôme de votre maladie de Parkinson (soit présemntement ou dans le passé)?"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "do-you-have-a-diagnosis-of-parkinsons-disease-given-to-you-by-a-doctor",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
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
                                        "en": "Unsure",
                                        "fr": "Incertain"
                                    },
                                    "value": "unsure"
                                }
                            ],
                            "key": "do-you-have-rest-tremor-as-part-of-your-symptoms-of-parkinsons-disease"
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Have you had falls since your diagnosis of Parkinson''s disease?",
                                "fr": "Avez-vous eu des chutes depuis votre diagnostic de la maladie de Parkinson?"
                            },
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "do-you-have-a-diagnosis-of-parkinsons-disease-given-to-you-by-a-doctor",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "radiobuttonPresentation": "vertical",
                            "options": [
                                {
                                    "label": {
                                        "en": "No, I have not fallen since my diagnosis",
                                        "fr": "Non, je n''ai pas chuté depuis mon diagnostic"
                                    },
                                    "value": "no-i-have-not-fallen-since-my-diagnosis"
                                },
                                {
                                    "label": {
                                        "en": "Yes, about once per week",
                                        "fr": "Oui, environ une fois par semaine"
                                    },
                                    "value": "yes-about-once-per-week"
                                },
                                {
                                    "label": {
                                        "en": "Yes, about once per month",
                                        "fr": "Oui, environ une fois par mois"
                                    },
                                    "value": "yes-about-once-per-month"
                                },
                                {
                                    "label": {
                                        "en": "Yes, a few times per year",
                                        "fr": "Oui, quelques fois par an"
                                    },
                                    "value": "yes-a-few-times-per-year"
                                },
                                {
                                    "label": {
                                        "en": "Yes, only very rarely",
                                        "fr": "Oui, seulement très rarement"
                                    },
                                    "value": "yes-only-very-rarely"
                                }
                            ],
                            "key": "have-you-had-falls-since-your-diagnosis-of-parkinsons-disease"
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
                            "key": "do-you-currently-take-medication-for-parkinsons-disease",
                            "condition": {
                                "dependsOnKey": "do-you-have-a-diagnosis-of-parkinsons-disease-given-to-you-by-a-doctor",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "I have PD but DON''T take medications for it",
                                        "fr": "J''ai la MP mais je ne prends PAS de médicaments pour ça"
                                    },
                                    "value": "I have PD but don''t take medications for it"
                                },
                                {
                                    "label": {
                                        "en": "I have PD and I DO take medications for it",
                                        "fr": "J''ai la MP et je PRENDS des médicaments pour ça"
                                    },
                                    "value": "I-have-pd-and-i-do-take-medications-for-it"
                                }
                            ]
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "How long ago did you take the last dose?",
                                "fr": "Il y a combien de temps que vous avez pris la dernière dose?"
                            },
                            "condition": {
                                "dependsOnKey": "do-you-currently-take-medication-for-parkinsons-disease",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "I-have-pd-and-i-do-take-medications-for-it" ]
                                }
                            },
                            "indent": 1
                        },
                        {
                            "questionType": "input",
                            "indent": 1,
                            "condition": {
                                "dependsOnKey": "do-you-currently-take-medication-for-parkinsons-disease",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "I-have-pd-and-i-do-take-medications-for-it" ]
                                }
                            },
                            "key": "how-long-ago-did-you-take-the-last-dose-hours",
                            "label": {
                                "en": "Hours",
                                "fr": "Heures"
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "input",
                            "indent": 1,
                            "condition": {
                                "dependsOnKey": "do-you-currently-take-medication-for-parkinsons-disease",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "I-have-pd-and-i-do-take-medications-for-it" ]
                                }
                            },
                            "key": "how-long-ago-did-you-take-the-last-dose",
                            "label": {
                                "en": "Minutes",
                                "fr": "Minutes"
                            },
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "min": 0
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you feel ON (i.e. can feel that the PD medications are taking effect) or OFF (i.e. medications are not currently taking effect)?",
                                "fr": "Vous sentez-vous ACTIVÉ.E (\\"ON\\") (c.-à-d. sentir que les médicaments de la MP font effet) ou INACTIVÉ.E (\\"OFF\\") (c.-à-d. sentir que les médicaments ne font pas actuellement effet)?"
                            },
                            "key": "do-you-feel-on-or-off",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "do-you-currently-take-medication-for-parkinsons-disease",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "I-have-pd-and-i-do-take-medications-for-it" ]
                                }
                            },
                            "indent": 1,
                            "options": [
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
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Are you currently taking any of the following medications to treat your Parkinson''s disease symptoms? (Please check all that apply)",
                                "fr": "Prenez-vous actuellement l''un des ces médicaments pour traiter les symptômes de la maladie de Parkinson? (SVP sélectionner tout ce qui s''applique)"
                            },
                            "key": "are-you-taking-any-of-the-following-medications-to-treat-your-parkinsons-disease-symptoms",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "condition": {
                                "dependsOnKey": "do-you-currently-take-medication-for-parkinsons-disease",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "I-have-pd-and-i-do-take-medications-for-it" ]
                                }
                            },
                            "indent": 1,
                            "options": [
                                {
                                    "label": {
                                        "en": "Sinemet or carbidopa-levodopa or Parcopa (Oral)",
                                        "fr": "Sinemet ou carbidopa-levodopa ou Parcopa (Orale)"
                                    },
                                    "value": "Sinemet or Carbidopa-Levodopa or Parcopa (Oral)"
                                },
                                {
                                    "label": {
                                        "en": "Sinemet CR or carbidopa-levodopa Extended Release (Oral)",
                                        "fr": "Sinemet CR ou carbidopa-levodopa action/libération prolongée (Orale)"
                                    },
                                    "value": "Sinemet CR or Carbidopa-Levodopa, Extended Release (Oral)"
                                },
                                {
                                    "label": {
                                        "en": "Rytary or Numient (i.e. carbidopa-levodopa, Extended Release, Oral)",
                                        "fr": "Rytary ou Numient (c.-à-d. carbidopa-levodopa, Extended Release, Orale)"
                                    },
                                    "value": "Rytary or Numient"
                                },
                                {
                                    "label": {
                                        "en": "Duopa or Duodopa (i.e. Intestinal gel of carbidopa-levodopa)",
                                        "fr": "Duopa ou Duodopa (c.-à-d. Gel intestinal de carbidopa-levodopa)"
                                    },
                                    "value": "Duopa or Duodopa"
                                },
                                {
                                    "label": {
                                        "en": "Stalevo (i.e. combination in one pill of carbidopa, cevodopa, and entacapone)",
                                        "fr": "Stalevo (c.-à-d. la combinaison en une pilule de carbidopa, levodopa, et entacapone)"
                                    },
                                    "value": "Stalevo"
                                },
                                {
                                    "label": {
                                        "en": "Madopar or levodopa-benserazide",
                                        "fr": "Madopar ou levodopa-benserazide"
                                    },
                                    "value": "Madopar or Levodopa-Benserazide"
                                },
                                {
                                    "label": {
                                        "en": "Entacapone or Comtan",
                                        "fr": "Entacapone ou Comtan"
                                    },
                                    "value": "Entacapone or Comtan"
                                },
                                {
                                    "label": {
                                        "en": "Tolcapone or Tasmar",
                                        "fr": "Tolcapone ou Tasmar"
                                    },
                                    "value": "Tolcapone or Tasmar"
                                },
                                {
                                    "label": {
                                        "en": "Rasagiline or Azilect",
                                        "fr": "Rasagiline ou Azilect"
                                    },
                                    "value": "Rasagiline or Azilect"
                                },
                                {
                                    "label": {
                                        "en": "Selegiline or Deprenyl or Elderpryl or Zelapar",
                                        "fr": "Selegiline ou Deprenyl ou Elderpryl ou Zelapar"
                                    },
                                    "value": "Selegiline or Deprenyl or Elderpryl or Zelapar or Emasm"
                                },
                                {
                                    "label": {
                                        "en": "Pramipexole or Mirapex",
                                        "fr": "Pramipexole ou Mirapex"
                                    },
                                    "value": "Pramipexole or Mirapex"
                                },
                                {
                                    "label": {
                                        "en": "Ropinirole or Requip",
                                        "fr": "Ropinirole ou Requip"
                                    },
                                    "value": "Ropinirole or Requip"
                                },
                                {
                                    "label": {
                                        "en": "Neupro patch or Rotigotine patch",
                                        "fr": "timbre (\\"patch\\") de Neupro ou Rotigotine"
                                    },
                                    "value": "Neupro timbre or Rotigotine timbre"
                                },
                                {
                                    "label": {
                                        "en": "Amantadine or Symmetrel or Gocovri",
                                        "fr": "Amantadine ou Symmetrel ou Gocovri"
                                    },
                                    "value": "Amantadine or Symmetrel or Gocovri"
                                },
                                {
                                    "label": {
                                        "en": "Apokyn or Kinmobi or Apomorphine",
                                        "fr": "Apokyn ou Kinmobi ou Apomorphine"
                                    },
                                    "value": "Apokyn or Kinmobi or Apomorphine"
                                },
                                {
                                    "label": {
                                        "en": "Bromocriptine or Parlodel",
                                        "fr": "Bromocriptine ou Parlodel"
                                    },
                                    "value": "Bromocriptine or Parlodel"
                                },
                                {
                                    "label": {
                                        "en": "Onstryv or Xadago or Safinamide",
                                        "fr": "Onstryv ou Xadago ou Safinamide"
                                    },
                                    "value": "Onstryv or Xadago or Safinamide"
                                },
                                {
                                    "label": {
                                        "en": "Trihexyphenidyl or Artane",
                                        "fr": "Trihexyphenidyl ou Artane"
                                    },
                                    "value": "Trihexyphenidyl or Artane"
                                },
                                {
                                    "label": {
                                        "en": "Rivastigmine or Exelon",
                                        "fr": "Rivastigmine ou Exelon"
                                    },
                                    "value": "Rivastigmine or Exelon"
                                },
                                {
                                    "label": {
                                        "en": "Donepezil or Aricept",
                                        "fr": "Donepezil ou Aricept"
                                    },
                                    "value": "Donepezil or Aricept"
                                },
                                {
                                    "label": {
                                        "en": "Galantamine or Razadyne or Reminyl",
                                        "fr": "Galantamine ou Razadyne ou Reminyl"
                                    },
                                    "value": "Galantamine or Razadyne or Reminyl"
                                },
                                {
                                    "label": {
                                        "en": "Memantine or Namenda or Ebixa",
                                        "fr": "Memantine ou Namenda ou Ebixa"
                                    },
                                    "value": "Memantine or Namenda or Ebixa"
                                },
                                {
                                    "label": {
                                        "en": "I take other medications for my Parkinson''s disease but they are not on this list",
                                        "fr": "Je prends d''autres médicaments pour ma maladie de Parkinson mais ils ne sont pas inclus dans cette liste"
                                    },
                                    "value": "i-take-other-medications-for-my-parkinson-disease-but-they-are-not-on-this-list"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "title": {
                                "en": "If you take medications for Parkinson''s disease that are not on the list, please write it below.",
                                "fr": "Si vous prenez d''autres médicaments pour votre maladie de Parkinson qui ne sont pas inclus dans cette liste, SVP écrivez-les ci-dessous."
                            },
                            "key": "other-medications-not-on-list",
                            "indent": 1,
                            "condition": {
                                "dependsOnKey": "are-you-taking-any-of-the-following-medications-to-treat-your-parkinsons-disease-symptoms",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "i-take-other-medications-for-my-parkinson-disease-but-they-are-not-on-this-list" ]
                                }
                            },
                            "validation": {
                                "required": true
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have you ever undergone any of these PD surgeries or procedures? (Please check all that apply)",
                                "fr": "Avez-vous déjà subi l''une des chirurgies ou procédures suivantes pour votre maladie de Parkinson? (Veuillez cocher tout ce qui s''applique)"
                            },
                            "indent": 1,
                            "key": "have-you-ever-undergone-any-of-these-pd-surgeries-or-procedures",
                            "validation": {
                                "required": true
                            },
                            "condition": {
                                "dependsOnKey": "do-you-currently-take-medication-for-parkinsons-disease",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "I-have-pd-and-i-do-take-medications-for-it" ]
                                }
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "Deep brain stimulation (\\"DBS\\")",
                                        "fr": "Chirurgie de stimulation cérébrale profonde (\\"DBS\\")"
                                    },
                                    "value": "Deep brain stimulation"
                                },
                                {
                                    "label": {
                                        "en": "Pallidotomy",
                                        "fr": "Pallidotomie"
                                    },
                                    "value": "Pallidotomy"
                                },
                                {
                                    "label": {
                                        "en": "Thalamotomy",
                                        "fr": "Thalamotomie"
                                    },
                                    "value": "Thalamotomy"
                                },
                                {
                                    "label": {
                                        "en": "Focused ultrasound (\\"FUS\\")",
                                        "fr": "Ultrason focalisé (\\"FUS\\")"
                                    },
                                    "value": "Focused ultrasound"
                                },
                                {
                                    "label": {
                                        "en": "Gamma knife radiosurgery",
                                        "fr": "Radiochirurgie au scalpel gamma"
                                    },
                                    "value": "Gamma knife radiosurgery"
                                },
                                {
                                    "label": {
                                        "en": "I have not undergone any of the PD procedures listed above",
                                        "fr": "Je n''ai subi aucune des procédures mentionnées ci-dessus"
                                    },
                                    "value": "I have not undergone any of the PD procedures listed above"
                                }
                            ]
                        },
                        {
                            "questionType": "divider",
                            "key": "divider-2",
                            "condition": {
                                "dependsOnKey": "do-you-have-a-diagnosis-of-parkinsons-disease-given-to-you-by-a-doctor",
                                "doConditional": {
                                    "onlyShowWhenValuesSelected": [ "yes" ]
                                }
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Are you currently taking medications (prescription or over the counter) for any of the following conditions? (Please check all that apply)",
                                "fr": "Est-ce que vous prenez présentement des médicaments, soit sous ordonnance ou sans ordonnance, pour l''une ou plusieurs des conditions suivantes?"
                            },
                            "key": "are-you-currently-taking-medications-for-any-of-the-following-conditions",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "Depression",
                                        "fr": "Dépression"
                                    },
                                    "value": "Depression"
                                },
                                {
                                    "label": {
                                        "en": "Anxiety",
                                        "fr": "Anxiété"
                                    },
                                    "value": "Anxiety"
                                },
                                {
                                    "label": {
                                        "en": "Sleep problems",
                                        "fr": "Troubles du sommeil"
                                    },
                                    "value": "Sleep Problems"
                                },
                                {
                                    "label": {
                                        "en": "Problems with cognition",
                                        "fr": "Problèmes de cognition"
                                    },
                                    "value": "Problems with cognition"
                                },
                                {
                                    "label": {
                                        "en": "Hallucinations",
                                        "fr": "Hallucinations"
                                    },
                                    "value": "Hallucinations"
                                },
                                {
                                    "label": {
                                        "en": "I am not taking medication to treat any of the conditions listed above/ I have not been diagnosed with any of the following conditions",
                                        "fr": "Je prends aucun médicament pour les conditions mentionnées ci-dessus/ Je n''étais pas diagnostiqué.e par aucune de ces conditions"
                                    },
                                    "value": "I am not taking medication to treat any of the conditions listed above"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you have a family history of Parkinson''s disease?",
                                "fr": "Avez-vous des antécédents familiaux de maladie de Parkinson?"
                            },
                            "key": "do-you-have-a-family-history-of-parkinsons-disease",
                            "validation": {
                                "required": true
                            },
                            "options": [
                                {
                                    "label": {
                                        "en": "Yes, my biological mother or father has/had Parkinson''s disease",
                                        "fr": "Oui, ma mère/mon père biologiques ont/avaient la maladie de Parkinson"
                                    },
                                    "value": "Yes, biological mother or father"
                                },
                                {
                                    "label": {
                                        "en": "Yes, one of my siblings has/had Parkinson''s disease",
                                        "fr": "Oui, un.e de mes frères/soeurs a/avait la maladie de Parkinson"
                                    },
                                    "value": "Yes, siblings"
                                },
                                {
                                    "label": {
                                        "en": "Yes, one of my children has/had Parkinson''s disease",
                                        "fr": "Oui, un de mes enfants a/avait la maladie de Parkinson"
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
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 91;