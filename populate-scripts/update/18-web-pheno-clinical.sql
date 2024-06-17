-- WEB PHENO CLINICAL
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "CONSENT",
    name = "Web Pheno Clinical",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "CONSENT",
                "componentConfig": {
                    "imgPath": "../../../assets/images/consent/consentOrgs.png",
                    "title": {
                        "en": "BEFORE YOU CAN PROCEED YOU MUST READ THE FOLLOWING CONSENT FORM",
                        "fr": "AVANT DE PROCÉDER VOUS DEVEZ LIRE CE FORMULAIRE DE CONSENTEMENT"
                    },
                    "summary": [
                        {
                            "caption": {
                                "en": "Study title:",
                                "fr": "Nom de l''étude:"
                            },
                            "words": [
                                {
                                    "en": "Deep cognitive endophenotyping of Parkinson’s disease: A platform development and pilot study",
                                    "fr": "Endophénotypage cognitif de la maladie de Parkinson: développement d''une plateforme et étude pilote"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Principal investigator:",
                                "fr": "Chercheur responsable du projet de recherche:"
                            },
                            "words": [
                                {
                                    "en": "Madeleine Sharp MD MSc, Department of Neurology and Neurosurgery",
                                    "fr": "Madeleine Sharp MD MSc, Département de Neurologie et Neurochirurgie, Université McGill"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Sponsor:",
                                "fr": "Commanditaire:"
                            },
                            "words": [
                                {
                                    "en": "Parkinson Foundation",
                                    "fr": "Parkinson Foundation"
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "Protocol:",
                                "fr": "Protocole:"
                            },
                            "words": [
                                {
                                    "en": "2020-6045, version 2",
                                    "fr": "2020-6045, version 2"
                                }
                            ]
                        }
                    ],
                    "body": [
                        {
                            "caption": "",
                            "words": [
                                {
                                    "en": "We are inviting you to take part in this research study because you are either affected by Parkinson’s disease, have REM-sleep behaviour disorder, or are interested in participating as a healthy volunteer. Please take the time to read the following information.",
                                    "fr": "Nous vous invitons à prendre à cette recherche parce que vous êtes affecté par la maladie de Parkinson, vous avez un trouble comportemental en sommeil paradoxal, ou parce que vous avez exprimé un intérêt pour la recherche reliée au Parkinson et que vous aimeriez participer en tant que sujet de contrôle. Veuillez prendre le temps de lire l''information suivante."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "STUDY PURPOSE",
                                "fr": "OBJECTIF DU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "Cognitive symptoms in Parkinson’s disease vary immensely. Some patients develop significant apathy or difficulty multi-tasking, others take up boxing or plan local support groups. Current tools used to identify symptoms fall short of being able to help us understand this variability because they don’t provide clues about the underlying brain mechanisms. The purpose of this study is to use computer tests of cognitive function, inspired by the tests used in laboratory animals, to arrive at a better understanding of the mechanisms underlying cognitive symptoms in Parkinson’s disease. For this research study, we will recruit a total of 1000 participants, men and women, aged between 50 and 90.",
                                    "fr": "Les symptômes cognitifs associés à la maladie de Parkinson varient énormément. Certains patients développent une apathie significative ou des problèmes de concentration tandis que d''autres s''adonnent à la boxe ou planifient des groupes de soutien locaux. Présentement, les outils disponibles pour identifier ces symptômes ne permettent pas de comprendre leur mécanisme au niveau du cerveau. Cette étude vise à utiliser des tests informatiques de la fonction cognitive pour mieux comprendre les mécanismes de dysfonctionnement cognitif chez les patients atteints de la maladie de Parkinson. Pour cette étude, nous recrutons un total de 1000 participants, hommes et femmes, âgés entre 50 et 90 ans."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "WHAT WILL YOU BE ASKED TO DO?",
                                "fr": "QU''AUREZ-VOUS À FAIRE?"
                            },
                            "words": [
                                {
                                    "en": "If you choose to participate you will be asked to:",
                                    "fr": "Si vous choisissez de participer, nous allons vous demander de:"
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "1. &nbsp;&nbsp;&nbsp;&nbsp; Create a username (your email address) and password of your choice",
                                    "fr": "1. &nbsp;&nbsp;&nbsp;&nbsp; Créer un nom d''utilisateur (votre adresse courriel) et un mot de passe de votre choix."
                                },
                                {
                                    "en": "2. &nbsp;&nbsp;&nbsp;&nbsp; Provide basic information about your demographics and your health (age, sex, education, medication use, history of neurological and psychiatric disorders), and, if applicable, about your Parkinson’s disease (duration, main motor and cognitive symptoms).",
                                    "fr": "2. &nbsp;&nbsp;&nbsp;&nbsp; Nous fournir des informations démographiques et sur votre santé (âge, sexe, éducation, médicaments, antécédents de troubles psychiatriques et neurologiques), et, le cas échéant, sur votre maladie de Parkinson (durée, principaux symptômes moteurs et cognitifs)."
                                },
                                {
                                    "en": "3. &nbsp;&nbsp;&nbsp;&nbsp; Complete seven questionnaires about your mood and cognition, and play four ‘brain games’, designed to examine different aspects of cognition.",
                                    "fr": "3. &nbsp;&nbsp;&nbsp;&nbsp; Compléter sept questionnaires à propos de votre humeur et votre cognition et jouer à quatre jeux conçus pour investiguer les différents aspects de la cognition."
                                },
                                {
                                    "en": "This will take under 2 hours and you will have the opportunity to pause part-way through and to return to it later.",
                                    "indent": 2,
                                    "fr": "Ceci prendra moins de 2 heures et vous aurez l''opportunité de prendre une pause et d''y revenir plus tard."
                                },
                                {
                                    "en": "4. &nbsp;&nbsp;&nbsp;&nbsp; Every year, for a maximum of 5 years, you will receive an email from the study website asking you to participate again. At these follow-up sessions, testing will be similar but not identical to the first session.",
                                    "fr": "4. &nbsp;&nbsp;&nbsp;&nbsp; Chaque année, pour un maximum de 5 ans, vous recevrez un courriel du site web de l''étude vous demandant de participer à nouveau. Lors de ces suivis, les tests seront similaires mais pas identiques à la première session."
                                },
                                {
                                    "en": "In addition, we will ask you whether you are interested in receiving offers to participate in other online research. If you are, you can check the appropriate box at the end of this consent form.",
                                    "indent": 2,
                                    "fr": "De plus, nous vous demanderons si vous êtes intéressés à recevoir des offres pour participer à d''autre études de recherche. Si vous l''êtes, vous n''avez qu''à cocher la boîte à la fin de ce formulaire."
                                },
                                {
                                    "en": "You can choose to terminate your participation at any time and after any number of visits.",
                                    "indent": 2,
                                    "fr": "Vous pouvez choisir de mettre fin à votre participation à n''importe quel moment et après n''importe quel nombre de visites."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "POTENTIAL RISKS AND CONFIDENTIALITY",
                                "fr": "CONFIDENTIALITÉ"
                            },
                            "words": [
                                {
                                    "en": "This study involves collecting and storing personal, identifiable information about you, so there is a potential for invasion of privacy or breach in confidentiality. To minimize these risks, your email will be stored in a password-protected file separately from your responses on the questionnaires and brain games. Your information will be assigned a unique code number and stored in a secure manner on a McGill University server, protected by standard physical and digital security measures, and will be stored for 20 years. No personal, identifiable information will be shared outside the study team. For monitoring, control, and security your study file may be examined by representatives of the institution or the Research Ethics Board. All these individuals and organizations adhere to policies on confidentiality.",
                                    "fr": "Cette étude implique la collection et le stockage de données personnelles et identifiables, il existe donc un risque d''atteinte à la vie privée ou un bris de confidentialité.  Pour minimiser ces risques, votre adresse courriel sera sauvegardée séparément de vos réponses aux questionnaires et aux jeux, dans un fichier protégé par un mot de passe. Vos données de recherche seront identifiées par un code unique et seront sauvegardées de manière sécuritaire sur le serveur de l''Université McGill, protégées par les mesures de sécurité physique et numérique standards, et seront sauvegardées pendant 20 ans. Aucune information personnelle ou identifiable ne sera partagée en dehors de l''équipe du Dr. Sharp. À des fins de surveillance, de contrôle, de protection et de sécurité, votre dossier de recherche pourrait être consulté par des représentants de l''établissement ou du comité d''éthique de la recherche. Ces personnes et ces organismes adhèrent à une politique de confidentialité."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "Your email address will be kept for the duration of the study so that we may contact you for the follow-up visits, and will then be deleted. It will be kept separate from all other information collected from you. If you choose to agree below, we will also use your email address to provide updates about the study findings (no more than twice per year) and to contact you about similar research opportunities, in which case it will be saved securely for 10 years. Your email address will not be used for any other purposes or nor shared with anyone.",
                                    "fr": "Votre adresse courriel sera conservée pendant toute la durée de l''étude afin que nous puissions vous contacter pour les visites de suivi, puis sera supprimée. Elle sera conservée séparément de toutes les autres informations recueillies auprès de vous. So vous choisissez d''accepter ci-dessous, nous utiliserons également votre adresse courriel pour fournir des mises à jour (pas plus de deux fois par an) et pour vous contacter au sujet d''opportunités de recherche similaires, auquel cas elle sera sauvegardée en toute sécurité pendant 10 ans. Votre courriel ne sera pas utilisé à d''autres fins, ni partagé avec quiconque."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "BENEFITS",
                                "fr": "AVANTAGES ASSOCIÉS AU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "There is no direct benefit to you for participating in this research. However, we hope that the study results will contribute to the advancement of scientific knowledge in this field and help us find better treatments for cognitive changes experienced by Parkinson’s patients.",
                                    "fr": "Vous ne retirerez pas de bénéfices de votre participation à ce projet de recherche. Nous espérons que les résultats obtenus contribueront à l''avancement des connaissances scientifiques dans ce domaine et au développement de meilleurs traitements pour les patients."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "POTENTIAL RISKS",
                                "fr": "RISQUES ASSOCIÉS AU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "Despite removal of identifying information and the use of standard security measures to collect and store data, in some circumstances it may be possible to re-identify individuals, however we believe this risk to be very low. There are no anticipated physical risks of participating in this research. You may find the tasks dull or tiring.",
                                    "fr": "Malgré la suppression des informations d''identification et l''utilisation de mesures de sécurité standard pour collecter et sauvegarder les données, il peut être possible, dans certaines circonstances, de réidentifier les individus, mais nous pensons que ce risque est très faible. Nous n''anticipons aucun risque physique associé à votre participation. Vous pourriez trouver les tâches ennuyeuses ou fatigantes."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "VOLUNTARY PARTICIPATION AND THE RIGHT TO WITHDRAW",
                                "fr": "PARTICIPATION VOLONTAIRE ET DROIT DE RETRAIT"
                            },
                            "words": [
                                {
                                    "en": "Your participation in this research project is voluntary. Therefore, you may refuse to participate. You may also withdraw from the project at any time, without giving any reason, though you may also email sharplab.neuro@mcgill.ca to discuss this with us. Your decision will not result in any penalty.",
                                    "fr": "Votre participation à ce projet est volontaire. Vous êtes donc libre de refuser d''y participer.  Vous pouvez également vous retirer de ce projet à n''importe quel moment, sans avoir à donner de raisons, mais vous pouvez également envoyer un courriel à sharplab.neuro@mcgill.ca pour en discuter avec nous. Votre décision n''entraînera aucune pénalité."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "If you withdraw from the study, the information already collected for the study will be stored, analyzed and used to ensure the integrity of the study.",
                                    "fr": "Si vous décidez de vous retirer de l''étude, l''information déjà recueillie dans le cadre de ce projet sera néanmoins conservée, analysée ou utilisée pour assurer l''intégrité du projet."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "WILL YOU BE PAID?",
                                "fr": "ALLEZ VOUS ÊTRE PAYÉ?"
                            },
                            "words": [
                                {
                                    "en": "You will be entered to win one of ten $100 Amazon e-gift cards.",
                                    "fr": "En participant vous courrez la chance de gagner l''une des dix cartes-cadeaux électroniques Amazon de $100."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "CONTACT INFORMATION",
                                "fr": "SURVEILLANCE DES ASPECTS ETHIQUES DU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "If you have questions or if you have a problem you think may be related to your participation in this research study, or if you would like to withdraw, you may communicate with the study researcher, Dr. Madeleine Sharp, or with someone on the research team at the following number Monday to Friday 9h00 to 17h00 EST: (514) 398-5174. You may also reach the study team at sharplab.neuro@mcgill.ca.",
                                    "fr": "Si vous avez des questions ou éprouvez des problèmes en lien avec le projet de recherche, ou si vous souhaitez vous en retirer, vous pouvez communiquer avec le médecin responsable ou avec une personne de l''équipe de recherche au numéro suivant du lundi au vendredi de 9h00 à 17h00 : (514) 398-5174. Vous pouvez aussi rejoindre l''équipe de recherche en envoyant un courriel à sharplab.neuro@mcgill.ca."
                                },
                                {
                                    "en": "",
                                    "fr": ""
                                },
                                {
                                    "en": "For any question concerning your rights as a research participant taking part in this study, or if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223.",
                                    "fr": "Pour toute question concernant vos droits en tant que participant à ce projet de recherche ou si vous avez des plaintes ou des commentaires à formuler, vous pouvez communiquer avec Le Commissaire local aux plaintes et à la qualité des services de l''Hôpital Neurologique de Montréal au numéro suivant : (514) 934-1934 ext. 22223."
                                }
                            ]
                        },
                        {
                            "caption": {
                                "en": "OVERVIEW OF ETHICAL ASPECTS OF THE RESEARCH",
                                "fr": "SURVEILLANCE DES ASPECTS ETHIQUES DU PROJET DE RECHERCHE"
                            },
                            "words": [
                                {
                                    "en": "The McGill University Health Centre Research Ethics Board reviewed this research and is responsible for monitoring the study.",
                                    "fr": "Le comité d''éthique de la recherche du Centre Universitaire de santé McGill a approuvé le projet et en assurera le suivi."
                                }
                            ]
                        }
                    ],
                    "inputs": [
                        {
                            "label": {
                                "en": "Do you accept to be contacted yearly (max. 5 years) for a follow-up online testing session? (you can always decline at that time)",
                                "fr": "Acceptez-vous d''être contacté annuellement (max. 5 années) pour un suivi en ligne? (vous pourrez toujours décliner à ce moment-là)"
                            },
                            "key": "agree to be contacted yearly",
                            "options": [
                                {
                                    "textContent": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "textContent": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "label": {
                                "en": "Please indicate whether you would like to be contacted by email for future online research opportunities.",
                                "fr": "Veuillez indiquer si vous acceptez d''être contacté par courriel à propos d''autres opportunités de recherche dans le futur."
                            },
                            "key": "agree to be contacted for future opportunities",
                            "options": [
                                {
                                    "textContent": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "textContent": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        },
                        {
                            "label": {
                                "en": "Please indicate whether you would like to receive updates about the findings from the study (no more than twice per year).",
                                "fr": "Veuillez indiquer si vous voudriez recevoir des mises à jour à propos des résultats de notre recherche (pas plus de 2 fois par année)."
                            },
                            "key": "would like to receive updates about study findings",
                            "options": [
                                {
                                    "textContent": {
                                        "en": "Yes",
                                        "fr": "Oui"
                                    },
                                    "value": "yes"
                                },
                                {
                                    "textContent": {
                                        "en": "No",
                                        "fr": "Non"
                                    },
                                    "value": "no"
                                }
                            ]
                        }
                    ],
                    "endMessage": {
                        "en": "By clicking \\"Accept\\", you are confirming that you reviewed the information and consent form and that you agree to participate in the study in accordance with the conditions stated above.",
                        "fr": "En cochant la boîte \\"Accepter\\" ci-dessous vous confirmez que vous avez pris connaissance de l''information dans le formulaire de consentement et que vous acceptez de participer aux conditions qui y sont énoncées."
                    },
                    "buttons": {
                        "reject": {
                            "show": true,
                            "text": {
                                "en": "DECLINE",
                                "fr": "DÉCLINER"
                            }
                        },
                        "accept": {
                            "show": true,
                            "text": {
                                "en": "ACCEPT",
                                "fr": "ACCEPTER"
                            }
                        }
                    }
                }
            }
        ]
    }' 
WHERE id = 18;