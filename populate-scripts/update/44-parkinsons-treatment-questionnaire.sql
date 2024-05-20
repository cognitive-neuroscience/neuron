
-- Parkinson's treatment Questionnaire
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "[ARCHIVED] Parkinson's treatment Questionnaire",
    description = "Parkinson's treatment Questionnaire. This should no longer be used.",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Parkinson''s Treatment Questionnaire",
                        "fr": "Questionnaire sur le traitement du Parkinson" 
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "The following questions are about some medications you might be taking. Some of these questions ask about Parkinson’s medication. If you DON’T have Parkinson’s disease, please check the appropriate box.",
                                "fr": "Les questions suivantes portent sur certains médicaments que vous prenez peut-être. Certaines des questions concernent les médicaments pour le Parkinson. Si vous N’AVEZ PAS la maladie de Parkinson, cochez la case appropriée."
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
                                        "en": "I don’t have Parkinson’s disease / I don''t take medications for my Parkinson''s disease",
                                        "fr": "Je n’ai pas la maladie de Parkinson / Je ne prends pas de médicaments pour traiter ma maladie de Parkinson"
                                    },
                                    "value": "No medications"
                                },
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
                                        "en": "I don''t have Parkinson''s disease / I have not undergone any of the procedures listed above",
                                        "fr": "Je n''ai pas la maladie de Parkinson / Je n''ai subi aucune des procédures mentionnées ci-dessus"
                                    },
                                    "value": "I have not undergone any of the PD procedures listed above"
                                },
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
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 44;