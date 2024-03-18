
-- Info Slide to provide info on computer games
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "INFO_DISPLAY",
    name = "Game Disclaimer Info Slide",
    description = "Informing about feedback in games and performance metrics",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "INFODISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Information message about the computer games",
                        "fr": "Message à propos des jeux d’ordinateur"
                    },
                    "sections": [
                        {
                            "header": "",
                            "textContent": {
                                "en": "We will be starting the computer games portion of our study. Throughout this portion, you will experience many types of games. <i>Some of these games may feel more difficult than others, which is completely normal!</i>",
                                "fr": "Nous allons commencer la partie de notre étude centrée sur les jeux de cerveau. Pendant cette partie, vous verrez plusieurs types de jeux. <i>Certains de ces jeux pourront sembler plus difficiles que d’autres, ce qui est complètement normal!</i>"
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "1. About the games and the feedback you will receive",
                                "fr": "1. À propos des jeux et du ''feedback'' que vous recevrez"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "One type of game asks you to click keys on your keyboard after performing a calculation in your head. To compare results across different participants, there is a set time window for you to respond, after which words such as “Too Slow“ will appear if we do not detect a response. This is merely to remind participants to aim for a certain speed. <b>This level of speed requirement is designed to feel restrictive.</b>",
                                "fr": "Certains des jeux vous demanderont de taper sur les touches de votre clavier après avoir effectué un calcul dans votre tête. Afin de pouvoir comparer les résultats entre les différents participants, vous devrez répondre à l''intérieur d''un délai fixe. Si une réponse n’est pas détectée dans ce délai, des mots comme « Trop lent » apparaîtront à votre écran. Ceci est simplement pour rappeler aux participants de viser une certaine vitesse. <b>Ce niveau de vitesse est conçu pour être difficile.</b>"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "<b>However, <i>we know this may feel very unpleasant.</i></b> If this is the case, you can skip the game by letting it run on its own until it reaches the next game. <i>We do not want you to feel forced to answer!</i>",
                                "fr": "<b>Cela dit, <i>nous savons que cela peut être très désagréable.</i></b> Si c’est le cas, vous pouvez sauter le jeu en le laissant se dérouler tout seul jusqu’au prochain jeu. <i>Nous ne voulons pas que vous vous sentiez obligé.e d’y répondre !</i>"
                            }
                        },
                        {
                            "header": "",
                            "indent": 1,
                            "textContent": {
                                "en": "2. About measures of your performance",
                                "fr": "2. À propos des indicateurs de votre performance"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "We want to emphasize that our goal is to identify <i>patterns</i> of performance (such as relationships to mood or to medications) rather than to measure any one individual’s level of performance. The games used here cannot be used to produce individualized cognitive assessments, as such we cannot send any individualized reports of performance. <b>However, we will be sending you updates on the cognitive patterns we do identify across our group of participants as soon as possible!</b>",
                                "fr": "Nous voulons souligner que l''objectif de cette étude est d’identifier des <i>schémas</i> de performance (comme les liens avec l''humeur ou avec les différents médicaments). Ce n''est pas de mesurer le niveau de performance des individus. Les jeux utilisés ici ne peuvent pas être utilisés pour produire des évaluations cognitives individualisées, et nous ne pouvons donc pas vous envoyer de rapports de performance individualisés. <b>Cependant, nous vous enverrons des mises à jour sur nos résultats sommaires dès que possible!</b>"
                            }
                        },
                        {
                            "header": "",
                            "textContent": {
                                "en": "If you find that any of these games are especially restrictive or have any further comments, please don’t hesitate to email us at: sharplab.neuro@mcgill.ca",
                                "fr": "Si vous trouvez que certains entre ces jeux sont particulièrement désagréable ou si vous avez d''autres commentaires quelconques, n’hésitez pas à nous envoyer un courriel à l’adresse suivante : sharplab.neuro@mcgill.ca"
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
WHERE id = 75;