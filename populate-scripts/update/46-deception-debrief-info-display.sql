
-- Deception Debrief Info Display
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Deception Debrief",
    description = "Debriefing about the deception used in the study",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Debriefing About The Deception Used In The Study",
                        "fr": "Compte rendu de la tromperie utilisée dans la recherche"
                    },
                    "sections": [
                        {
                            "header": "",
                            "textContent": {
                                "en": "Thank you for participating!",
                                "fr": "Merci d''avoir participé!"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Earlier, we informed you that our study was about measuring aspects of cognition. While this is true, we were specifically interested in <b>the effects of stress on cognition</b>. As a result, one of the two sessions involved the participants placing their hand in ice water and being socially evaluated in order to create a short-term stressful experience.",
                                "fr": "Nous avions partagé avec vous que cette étude portait sur la la cognition. Bien que cela soit vrai, le but spécifique de l''étude était de mesurer les <b>effets du stress sur la cognition</b>. Pour faire cela, l''une des deux sessions impliquait que les participants placent leur main dans un bac d''eau glacée et soient socialement évalués afin de créer une expérience stressante à court terme."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "In order to properly study this, <b>it was required that we deceive you about the actual nature of the study</b>. We could not warn you that you would experience stress because knowing this in advance would have minimized the experience of the stress.",
                                "fr": "Afin de bien étudier l''effet du stress, <b>il était nécessaire que nous vous trompions sur l''objectif réel de l''étude</b>. Nous ne pouvions pas vous avertir que vous éprouveriez du stress, car le savoir à l''avance aurait minimisé l''expérience du stress."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "The specific deception elements in this study included:",
                                "fr": "Les éléments spécifiques de tromperie de cette étude étaient:"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "1. Not telling you in the consent form that this study was about the effect of stress on cognition.",
                                "fr": "1. Ne pas vous dire dans le formulaire de consentement que cette étude portait sur les effets du stress sur la cognition."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "2. Ice water task: ",
                                "fr": "2. Tâche d''eau glacée"
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "a. We withheld the amount of time that we required you keep your hand in the ice water, which was a maximum of three minutes.",
                                "fr": "a. Nous n''avons pas partagé avec vous la durée de temps durant lequel il vous faudrait garder la main dans l''eau glacée, soit un maximum de trois minutes."
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "b. We refused to answer any questions you had throughout the task.",
                                "fr": "b. Nous avons refusé de répondre aux questions que vous aviez pendant cette partie de l''étude."
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "c. We said that removing your hand from the ice water would impact our study when in fact it was only used to induce stress.",
                                "fr": "c. Nous vous avons laissé croire que retirer votre main de l''eau glacée aurait un impact sur notre étude alors qu''en fait elle n''était utilisée que pour provoquer du stress."
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "d. We instructed the research assistant to behave in a cold, stoic matter and act like they were evaluating your behavior when in fact they were only pretending to do so to add an element of social stress.",
                                "fr": "d. Nous avons demandé à l''assistant de recherche de se comporter de manière froide et stoïque et d''agir comme s''il évaluait votre comportement alors qu''en fait il faisait semblant de le faire simplement pour ajouter un élément de stress social."
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "e. We told you that you were being filmed to have the videos analyzed but the videos were deleted immediately after recording and were only used to add to the stress of the experience.",
                                "fr": "e. Nous vous avons dit que vous étiez filmé pour analyser vos réactions, mais les vidéos ont été supprimées immédiatement après l''enregistrement et n''ont été utilisées que pour ajouter un autre élément de stress."
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "f. We told you the goal of the ice water task was to measure pain tolerance when it was actually our means of inducing stress.",
                                "fr": "f. Nous vous avons dit que le but de la tâche de l''eau glacée était de mesurer la tolérance à la douleur alors que c''était en fait notre moyen d''induire le stress."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Given the ubiquitous nature of stress, it is critical that we study it in order to understand the range of consequences it can hold for brain health.",
                                "fr": "Compte tenu de la nature omniprésente du stress, il est essentiel que nous l''étudions afin de comprendre l''éventail des conséquences qu''il peut avoir sur la santé du cerveau."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "We followed standard research procedures commonly used to cause stress in the research setting. <b>The stress was meant to be relatively mild and very short-term</b>. If you still feel lingering effects of this stress, or have any questions about the study or your rights as a participant, please contact us:",
                                "fr": "Nous avons suivi des procédures de recherche standard couramment utilisées pour causer du stress dans le cadre de la recherche. <b>Le stress devait être relativement léger et de très courte durée</b>. Si vous ressentez toujours des effets persistants de ce stress, ou si vous avez des questions sur l''étude ou sur vos droits en tant que participant.e, veuillez nous contacter:"
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "<b>Madeleine Sharp, Department of Neurology and Neurosurgery, Montreal Neurological Institute, McGill University: madeleine.sharp@mcgill.ca or sharplab.neuro@mcgill.ca",
                                "fr": "<b>Madeleine Sharp, Département de Neurologie et de Neurochirurgie, Institut Neurologique de Montréal, Université McGill: madeleine.sharp@mcgill.ca ou sharplab.neuro@mcgill.ca"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Please also consider the following mental health resource: Mental Health Services Locator - http://store.samhsa.gov/mhlocator",
                                "fr": "Veuillez également considérer la ressource de santé mentale suivante : Localisateur des services de santé mentale - http://store.samhsa.gov/mhlocator"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Finally, if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223.",
                                "fr": "Finalement, si vous avez des commentaires, ou souhaitez déposer une plainte, vous pouvez communiquer avec l''ombudsman de l''Hôpital Neurologique de Montréal au (514) 934-1934 ext. 22223."
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "Thank you again for your participation!",
                                "fr": "Merci encore pour votre participation!"
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
WHERE id = 46;