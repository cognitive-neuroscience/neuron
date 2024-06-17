
-- Everyday Choice Clinical Info Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "Everyday Choice Clinical Info Questionnaire",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Everyday Choice Clinical Info Questionnaire",
                        "fr": "Everyday Choice Questionnaire d''information clinique"
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "The following questions are related to your physical and mental health. If you don''t have Parkinson''s disease (PD), not all of them will apply to you, so select the \\"I don''t have Parkinson''s disease\\" option.",
                                "fr": "Les questions suivantes sont liées à votre santé physique et mentale. Si vous n''avez pas la maladie de Parkinson (MP), certaines ne s''appliqueront pas à vous, alors sélectionnez l''option \\"Je n''ai pas la maladie de Parkinson\\"."
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "title": {
                                "en": "Do you have a diagnosis of Parkinson''s disease given to you by a doctor (e.g. family doctor or neurologist)?",
                                "fr": "Avez-vous un diagnostic de la maladie de Parkinson qui vous a été donné par un médecin (p.ex. un médecin de famille ou un neurologue)?"
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
                            "validation": {
                                "required": true,
                                "isNumeric": true,
                                "max": 2030,
                                "min": 0
                            },
                            "label": {
                                "en": "Year (e.g. 2009)",
                                "fr": "Année (ex. 2009)"
                            },
                            "key": "diagnosisPD",
                            "textContent": {
                                "en": "In what year were you diagnosed with Parkinson''s disease? If you DON''T have Parkinson''s disease, please enter \\"0\\".",
                                "fr": "En quelle année avez-vous reçu votre diagnostic de Parkinson? Si vous n''avez PAS la maladie de Parkinson, SVP inscrire \\"0\\"."
                            }
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Are you currently taking any of the following medications to treat your Parkinson''s disease symptoms? (Please check all that apply)",
                                "fr": "Prenez-vous actuellement l''un des ces médicaments pour traiter les symptômes de la maladie de Parkinson? (SVP sélectionner tout ce qui s''applique)"
                            },
                            "key": "PDMeds",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "I don''t have Parkinson''s disease",
                                        "fr": "Je n''ai pas la maladie de Parkinson"
                                    },
                                    "value": "No PD"
                                },
                                {
                                    "label": {
                                        "en": "No, I DON''T take any prescription medications to treat my Parkinson''s diseas",
                                        "fr": "Non, je ne prends PAS de médicaments sous ordonnance pour traiter ma maladie de Parkinson"
                                    },
                                    "value": "Has PD, No medications"
                                },
                                {
                                    "label": {
                                        "en": "Sinemet or Carbidopa-Levodopa or Parcopa (Oral)",
                                        "fr": "Sinemet ou Carbidopa-Levodopa ou Parcopa (Orale)"
                                    },
                                    "value": "Sinemet or Carbidopa-Levodopa or Parcopa (Oral)"
                                },
                                {
                                    "label": {
                                        "en": "Sinemet CR or Carbidopa-Levodopa, Extended Release (Oral)",
                                        "fr": "Sinemet CR ou Carbidopa-Levodopa, Extended Release (Orale)"
                                    },
                                    "value": "Sinemet CR or Carbidopa-Levodopa, Extended Release (Oral)"
                                },
                                {
                                    "label": {
                                        "en": "Rytary or Numient (i.e. Carbidopa-Levodopa, Extended Release, Oral)",
                                        "fr": "Rytary ou Numient (c.-à-d. Carbidopa-Levodopa, Extended Release, Orale)"
                                    },
                                    "value": "Rytary or Numient"
                                },
                                {
                                    "label": {
                                        "en": "Duopa or Duodopa (i.e. Carbidopa-Levodopa Intestinal Gel)",
                                        "fr": "Duopa ou Duodopa (c.-à-d. Carbidopa-Levodopa Intestinal Gel)"
                                    },
                                    "value": "Duopa or Duodopa"
                                },
                                {
                                    "label": {
                                        "en": "Stalevo (i.e. combination of Carbidopa, Levodopa, and entacapone)",
                                        "fr": "Stalevo (c.-à-d. la combinaison de Carbidopa, de Levodopa, et de d''entacapone)"
                                    },
                                    "value": "Stalevo"
                                },
                                {
                                    "label": {
                                        "en": "Madopar or Levodopa-Benserazide",
                                        "fr": "Madopar ou Levodopa-Benserazide"
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
                                        "fr": "timbre (\\"patch\\") de Neupro ou de Rotigotin"
                                    },
                                    "value": "Neupro patch or Rotigotine patch"
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
                                        "en": "I take other medications for my Parkinson''s disease that are not on this list",
                                        "fr": "Je prends d''autres médicaments pour ma maladie de Parkinson mais ils ne sont pas inclus dans cette liste"
                                    },
                                    "value": "I take other medications for my Parkinson''s disease that are not on this list"
                                }
                            ]
                        },
                        {
                            "questionType": "freeTextResponse",
                            "title": {
                                "en": "If you take medications for Parkinson''s disease that are not on the list, please write it below. If not, skip to the next question.",
                                "fr": "Si vous prenez d''autres médicaments pour votre maladie de Parkinson qui ne sont pas inclus dans cette liste, SVP écrivez-les ci-dessous. Sinon, passez à la prochaine question."
                            },
                            "key": "PDMedsOthers",
                            "validation": {
                                "required": false
                            }
                        },
                        {
                            "questionType": "displayText",
                            "key": "displayText2",
                            "title": {
                                "en": "If you answered previously that you do take Parkinson''s disease medication, how long ago did you take the last dose?",
                                "fr": "Si vous avez répondu que vous prenez des médicaments pour votre maladie de Parkinson, il y a combien de temps que vous avez pris la dernière dose?"
                            }
                        },
                        {
                            "questionType": "input",
                            "textContent": {
                                "en": "If you answered that you don''t take any Parkinson''s medication in the last question, please write \\"0\\".",
                                "fr": "Si vous avez répondu que vous ne prenez aucun médicament contre la maladie de Parkinson à la dernière question, veuillez écrire \\"0\\"."
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
                                        "fr": "Je me sens ''ON''"
                                    },
                                    "value": "I feel ON"
                                },
                                {
                                    "label": {
                                        "en": "I feel OFF",
                                        "fr": "Je me sens ''OFF''"
                                    },
                                    "value": "I feel OFF"
                                },
                                {
                                    "label": {
                                        "en": "I can not tell the difference",
                                        "fr": "Je ne ressens pas la différence entre ON et OFF"
                                    },
                                    "value": "I can not tell the difference"
                                }
                            ]
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Have you ever undergone any of these PD surgeries or procedures? (Please check all that apply)",
                                "fr": "Avez-vous déjà subi l''une des chirurgies ou procédures suivantes pour votre maladie de Parkinson? (Veuillez cocher tout ce qui s''applique)"
                            },
                            "key": "PDSurgeries",
                            "validation": {
                                "required": true
                            },
                            "allowMultipleSelections": true,
                            "options": [
                                {
                                    "label": {
                                        "en": "Deep brain stimulation",
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
                                        "en": "Focused ultrasound",
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
                                        "fr": "Oui, un.e de mes frères/soeurs a/avait la maladie de Parkinson"
                                    },
                                    "value": "Yes, siblings"
                                },
                                {
                                    "label": {
                                        "en": "Yes, one of my children has/had Parkinson’s disease",
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
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Are you currently taking medications (prescription or over the counter) for any of the following conditions? (Please check all that apply)",
                                "fr": "Est-ce que vous prenez présentement des médicaments, soit sous ordonnance ou sans ordonnance, pour l''une ou plusieurs des conditions suivantes?"
                            },
                            "key": "otherMeds",
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
                                        "en": "Sleep Problems",
                                        "fr": "Troubles du sommeil"
                                    },
                                    "value": "Sleep Problems"
                                },
                                {
                                    "label": {
                                        "en": "Problems with cognition (e.g. trouble thinking or focusing or trouble with memory",
                                        "fr": "Problèmes de cognition (p.ex. difficulté à penser ou à se concentrer ou troubles de mémoire)"
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
                                "en": "Do you feel that your memory and thinking have gotten worse?",
                                "fr": "Avez-vous l''impression que votre mémoire et vos pensées se sont détériorées?"
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
                        },
                        {
                            "questionType": "multipleChoiceSelect",
                            "title": {
                                "en": "Do you have a diagnosis of dementia or Alzheimer''s disease given to you by a doctor?",
                                "fr": "Avez-vous un diagnostic de démence ou de maladie d''Alzheimer qui vous a été donné par un médecin?"
                            },
                            "key": "diagnosisAD",
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
                                        "fr": "Non, mais je pense j''ai des troubles cognitifs"
                                    },
                                    "value": "No, but I think I have cognitive impairment"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 57;