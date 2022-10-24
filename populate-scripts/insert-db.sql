-- File used to insert new tasks into the DB

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Everyday choice middle display",
    "Informing about two brain games that are left",
    "",
    '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Almost Done!",
                        "fr": "Presque fini!"
                    },
                    "sections": [
                        {
                            "header": "",
                            "textContent": {
                                "en": "Thank you for your participation so far!",
                                "fr": "Merci d''avoir participé jusqu''ici!"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "The only part left is two short Brain Games to complete!",
                                "fr": "Il vous reste seulement deux petits jeux à compléter!"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "We understand the study may feel long, but we ask you for just <b>10 more minutes of your time</b>.",
                                "fr": "Nous comprenons que cela était une longue étude mais nous vous demanderons encore <b>10 minutes</b> pour compléter l''étude au complet."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "If you would like, you have the option of coming back to the study to complete these two tasks at a later time.",
                                "fr": "Si vous préférez, vous avez l''option d''arrêter ici et retourner après pour compléter ces deux dernières tâches."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Simply re-click on the link that we have sent you on your recruitment email!",
                                "fr": "Quand vous êtes prêt.e à commencer, allez ouvrir le même lien qu''on vous a envoyé par courriel!"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Thank you again for helping us further understand the cognitive symptoms of Parkinson''s disease!",
                                "fr": "Merci beaucoup encore pour votre contribution à la recherche pour mieux comprendre les symptômes cognitives de la maladie de Parkinson!"
                            }
                        }
                    ],
                    "buttons": {
                        "displayContinueButton": true
                    }
                }
            }
        ]
    }'
);