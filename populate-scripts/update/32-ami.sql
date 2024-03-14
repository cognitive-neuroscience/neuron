
-- AMI
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "QUESTIONNAIRE",
    name = "AMI",
    description = "Apathy Motivation Index",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "QUESTIONNAIRECOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Questionnaire",
                        "fr": "Le Questionnaire"
                    },
                    "questions": [
                        {
                            "questionType": "displayText",
                            "key": "displayText1",
                            "title": {
                                "en": "<p>Below are a number of statements. Each statement asks you to think about your life <em>over the last 2 weeks</em>.</p> <p>For each statement, select how appropriately it describes your life right now. Select \\"Completely true\\" if the statement describes you perfectly, \\"Completely untrue\\" if the statement does not describe you at all over the last 2 weeks, and use the answers in between accordingly.</p>",
                                "fr": "<p>Vous trouverez ci-dessous des énoncés. Chaque énoncé vous demande de réfléchir à votre vie <em>au cours des deux dernières semaines</em>.</p> <p>Pour chacun d’eux, sélectionnez à quel point l’énoncé décrit votre vie actuellement. Sélectionnez \\"Complètement vrai\\" si l''énoncé vous décrit parfaitement, ou \\"Complètement faux\\" si l''énoncé ne vous décrit pas du tout au cours des deux dernières semaines. Utilisez aussi les réponses intermédiaires si elles sont plus appropriés à la façon dont vous vous sentez.</p>"
                            }
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I feel sad or upset when I hear bad news.",
                                "fr": "Je me sens triste ou bouleversé.e lorsque j''entends une mauvaises nouvelle."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I feel sad or upset when I hear bad news",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I start conversations with random people.",
                                "fr": "J''entame des conversations avec des inconnus."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I start conversations with random people",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I enjoy doing things with people I have just met.",
                                "fr": "J''aime faire des choses avec des gens que je viens de rencontrer."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I enjoy doing things with people I have just met",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I suggest activities for me and my friends to do.",
                                "fr": "Je propose des activités à faire pour moi et mes amis."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I suggest activities for me and my friends to do",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I make decisions firmly and without hesitation.",
                                "fr": "Je prends des décisions avec fermeté et sans hésitation."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I make decisions firmly and without hesitation",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "After making a decision, I will wonder if I have made the wrong choice.",
                                "fr": "Après avoir pris une décision, je me demande si j''ai fait le mauvais choix."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "After making a decision, I will wonder if I have made the wrong choice",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Based on the last two weeks, I would say I care deeply about how my loved ones think of me.",
                                "fr": "Basé sur les deux dernières semaines, je dirais que je me soucie beaucoup de ce que mes proches pensent de moi."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "Based on the last two weeks, I would say I care deeply about how my loved ones think of me",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I go out with friends on a weekly basis.",
                                "fr": "Je sors avec des amis chaque semaine."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I go out with friends on a weekly basis",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "When I decide to do something, I am able to make an effort easily.",
                                "fr": "Quand je décide de faire quelque chose, je suis capable d''y mettre un effort facilement."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "When I decide to do something, I am able to make an effort easily",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I don''t like to laze around.",
                                "fr": "Je n''aime pas paresser."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I don''t like to laze around",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "Select \\"Quite True\\". This is simply to ensure you are paying attention!",
                                "fr": "Sélectionnez « Plutôt Vrai ». Ceci sert à vérifier votre niveau d’attention!"
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "attentionCheck-Choose quite true for this question please",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I get things done when they need to be done, without requiring reminders from others.",
                                "fr": "Je fais les choses au moment où elles doivent être faites, sans qu''on ait besoin de me le rappeler."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I get things done when they need to be done, without requiring reminders from others",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "When I decide to do something, I am motivated to see it through to the end.",
                                "fr": "Quand je décide de faire quelque chose, je suis motivé.e d''aller jusqu''au bout."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "When I decide to do something, I am motivated to see it through to the end",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I feel awful if I say something insensitive.",
                                "fr": "Je me sens mal si je dis quelque chose d''insensible."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I feel awful if I say something insensitive",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I start conversations without being prompted.",
                                "fr": "J''entame des conversations sans y être invité.e."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I start conversations without being prompted",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "When I have something I need to do, I do it straightaway so it is out of the way.",
                                "fr": "Quand j''ai quelque chose à faire, je le fais tout de suite pour ne pas avoir à y repenser."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "When I have something I need to do, I do it straightaway so it is out of the way",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I feel bad when I hear an acquaintance had an accident or illness.",
                                "fr": "Je me sens mal quand j''apprends qu''une connaissance a subit un accident ou une maladie."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I feel bad when I hear an acquaintance has an accident or illness",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "I enjoy choosing what to do from a range of activities.",
                                "fr": "J''aime choisir ce que je fais faire parmi un éventail d''activités."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "I enjoy choosing what to do from a range of activities",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        },
                        {
                            "questionType": "radiobuttons",
                            "radiobuttonPresentation": "vertical",
                            "title": {
                                "en": "If I realise I have been unpleasant to someone, I will feel terribly guilty afterwards.",
                                "fr": "Si je me rends compte que j''ai été désagréable avec quelqu''un, je me sens terriblement coupable par la suite."
                            },
                            "validation": {
                                "required": true
                            },
                            "key": "If I realise I have been unpleasant to someone, I will feel terribly guilty afterwards",
                            "options": [
                                {
                                    "label": {
                                        "en": "Completely UNTRUE",
                                        "fr": "Complètement FAUX"
                                    },
                                    "value": "Completely UNTRUE"
                                },
                                {
                                    "label": {
                                        "en": "Mostly untrue",
                                        "fr": "Plutôt faux"
                                    },
                                    "value": "Mostly untrue"
                                },
                                {
                                    "label": {
                                        "en": "Neither true nor untrue",
                                        "fr": "Ni vrai, ni faux"
                                    },
                                    "value": "Neither true nor untrue"
                                },
                                {
                                    "label": {
                                        "en": "Quite true",
                                        "fr": "Plutôt vrai"
                                    }, 
                                    "value": "Quite true"
                                },
                                {
                                    "label": {
                                        "en": "Completely TRUE",
                                        "fr": "Complètement VRAI"
                                    },
                                    "value": "Completely TRUE"
                                }
                            ]
                        }
                    ]
                }
            }
        ]
    }'
WHERE id = 32;