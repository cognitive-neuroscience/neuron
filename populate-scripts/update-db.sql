-- File used to update the DB for existing tasks
-- source C:/Users/nlee30/Documents/sidetings/sharplab/goNeuronWorkspace/src/github.com/cognitive-neuroscience/neuron/populate-scripts/update-db.sql

-- update tasks set config = 
INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
-- QUESTIONNAIRES
-- APATHY AES ENGLISH CLEAN
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Apathy AES English Clean",
    "Apathy Evaluation Scale",
    "",
    '{
        "title": "Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Instructions: For each statement, select the answer that best describes your thoughts, feelings, and activity in the past 4 weeks."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am interested in things.",
                "validation": {
                    "required":true
                },
                "key": "I am interested in things",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I get things done during the day.",
                "validation":{
                    "required":true
                },
                "key": "I get things done during the day",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Getting things started on my own is important to me.",
                "validation":{
                    "required":true
                },
                "key": "Getting things started on my own is important to me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am interested in having new experiences.",
                "validation":{
                    "required":true
                },
                "key": "I am interested in having new experiences",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am interested in learning new things.",
                "validation":{
                    "required":true
                },
                "key": "I am interested in learning new things",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I put little effort into anything.",
                "validation":{
                    "required":true
                },
                "key": "I put little effort into anything",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I approach life with intensity.",
                "validation":{
                    "required":true
                },
                "key": "I approach life with intensity",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Seeing a job through to the end is important to me.",
                "validation":{
                    "required":true
                },
                "key": "Seeing a job through to the end is important to me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I spend time doing things that interest me.",
                "validation":{
                    "required":true
                },
                "key": "I spend time doing things that interest me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Someone has to tell me what to do each day.",
                "validation":{
                    "required":true
                },
                "key": "Someone has to tell me what to do each day",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am less concerned about my problems than I should be.",
                "validation":{
                    "required":true
                },
                "key": "I am less concerned about my problems than I should be",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have friends.",
                "validation":{
                    "required":true
                },
                "key": "I have friends",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Getting together with friends is important to me.",
                "validation":{
                    "required":true
                },
                "key": "Getting together with friends is important to me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "When something good happens, I get excited.",
                "validation":{
                    "required":true
                },
                "key": "When something good happens, I get excited",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have an accurate understanding of my problems.",
                "validation":{
                    "required":true
                },
                "key": "I have an accurate understanding of my problems",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Getting things done during the day is important to me.",
                "validation":{
                    "required":true
                },
                "key": "Getting things done during the day is important to me",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have initiative.",
                "validation":{
                    "required":true
                },
                "key": "I have initiative",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have motivation.",
                "validation":{
                    "required":true
                },
                "key": "I have motivation",
                "multipleChoiceOptions": [
                    { "label": "Not at all", "value": "not at all" },
                    { "label": "Slightly", "value": "slightly" },
                    { "label": "Somewhat", "value": "somewhat" },
                    { "label": "A lot", "value": "a lot" }
                ]
            }
        ]
    }'
),
-- APATHY AES FRENCH CLEAN
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Apathy AES French Clean",
    "Apathy Evaluation Scale FR",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Instructions: Pour chacun des énoncés suivants mettez un X dans la case qui décrit le mieux vos pensées, sentiments et activités au cours des 4 dernières semaines."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je m’intéresse à des choses.",
                "validation": {
                    "required":true
                },
                "key": "Je m’intéresse à des choses",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’accompli des choses durant la journée.",
                "validation":{
                    "required":true
                },
                "key": "J’accompli des choses durant la journée",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Démarrer les choses par moi-même est important pour moi.",
                "validation":{
                    "required":true
                },
                "key": "Démarrer les choses par moi-même est important pour moi",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Avoir de nouvelles expériences m’intéresse.",
                "validation":{
                    "required":true
                },
                "key": "Avoir de nouvelles expériences m’intéresse",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Apprendre de nouvelles choses m’intéresse.",
                "validation":{
                    "required":true
                },
                "key": "Apprendre de nouvelles choses m’intéresse",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je mets peu d’effort dans n’importe quoi.",
                "validation":{
                    "required":true
                },
                "key": "Je mets peu d’effort dans n’importe quoi",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’approche la vie avec intensité.",
                "validation":{
                    "required":true
                },
                "key": "J’approche la vie avec intensité",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "C’est important pour moi de voir une tâche jusqu’à sa fin.",
                "validation":{
                    "required":true
                },
                "key": "C’est important pour moi de voir une tâche jusqu’à sa fin",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je passe beaucoup de temps à faire des choses qui  m’intéressent.",
                "validation":{
                    "required":true
                },
                "key": "Je passe beaucoup de temps à faire des choses qui  m’intéressent",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelqu’un doit me dire quoi faire tous les jours.",
                "validation":{
                    "required":true
                },
                "key": "Quelqu’un doit me dire quoi faire tous les jours",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Mes problèmes me concernent moins qu’il le devraient.",
                "validation":{
                    "required":true
                },
                "key": "Mes problèmes me concernent moins qu’il le devraient",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai des amis.",
                "validation":{
                    "required":true
                },
                "key": "J’ai des amis",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "C’est important pour moi de rencontrer me amis.",
                "validation":{
                    "required":true
                },
                "key": "C’est important pour moi de rencontrer me amis",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quand quelque chose de bon arrive, je suis excité(e).",
                "validation":{
                    "required":true
                },
                "key": "Quand quelque chose de bon arrive, je suis excité(e)",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai une compréhension précise de mes problèmes.",
                "validation":{
                    "required":true
                },
                "key": "J’ai une compréhension précise de mes problèmes",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Il est important pour moi de compléter des tâches durant la  journée.",
                "validation":{
                    "required":true
                },
                "key": "Il est important pour moi de compléter des tâches durant la  journée",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai de l’initiative.",
                "validation":{
                    "required":true
                },
                "key": "J’ai de l’initiative",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai de la motivation.",
                "validation":{
                    "required":true
                },
                "key": "J’ai de la motivation",
                "multipleChoiceOptions": [
                    { "label": "Pas du tout", "value": "pas du tout" },
                    { "label": "Un peu", "value": "un peu" },
                    { "label": "Assez", "value": "assez" },
                    { "label": "Beaucoup", "value": "beaucoup" }
                ]
            }
        ]
    }'
),
-- BIS-11 English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "BIS-11 English Version",
    "The Barratt Impulsiveness Scale",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "DIRECTIONS: People differ in the ways they act and think in different situations. This is a test to measure some of the ways in which you act and think. Read each statement and put an X on  the appropriate circle on the right side of this page. Do not spend too much time on any statement. Answer quickly and honestly."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I plan tasks carefully.",
                "validation": {
                    "required":true
                },
                "key": "I plan tasks carefully",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I do things without thinking.",
                "validation":{
                    "required":true
                },
                "key": "I do things without thinking",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I make-up my mind quickly.",
                "validation":{
                    "required":true
                },
                "key": "I make-up my mind quickly",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am happy-go-lucky.",
                "validation":{
                    "required":true
                },
                "key": "I am happy-go-lucky",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I don''t \\"pay attention\\".",
                "validation":{
                    "required":true
                },
                "key": "I don''t \\"pay attention\\"",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I have \\"racing\\" thoughts.",
                "validation":{
                    "required":true
                },
                "key": "I have \\"racing\\" thoughts",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I plan trips well ahead of time.",
                "validation":{
                    "required":true
                },
                "key": "I plan trips well ahead of time",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am self controlled.",
                "validation":{
                    "required":true
                },
                "key": "I am self controlled",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I concentrate easily.",
                "validation":{
                    "required":true
                },
                "key": "I concentrate easily",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I save regularly.",
                "validation":{
                    "required":true
                },
                "key": "I save regularly",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I \\"squirm\\" at plays or lectures.",
                "validation":{
                    "required":true
                },
                "key": "I \\"squirm\\" at plays or lectures",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am a careful thinker.",
                "validation":{
                    "required":true
                },
                "key": "I am a careful thinker",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I plan for job security.",
                "validation":{
                    "required":true
                },
                "key": "I plan for job security",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I say things without thinking.",
                "validation":{
                    "required":true
                },
                "key": "I say things without thinking",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I like to think about complex problems.",
                "validation":{
                    "required":true
                },
                "key": "I like to think about complex problems",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I change jobs.",
                "validation":{
                    "required":true
                },
                "key": "I change jobs",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I act \\"on impulse.\\"",
                "validation":{
                    "required":true
                },
                "key": "I act \\"on impulse\\"",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I get easily bored when solving thought problems.",
                "validation":{
                    "required":true
                },
                "key": "I get easily bored when solving thought problems",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I act on the spur of the moment.",
                "validation":{
                    "required":true
                },
                "key": "I act on the spur of the moment",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am a steady thinker.",
                "validation":{
                    "required":true
                },
                "key": "I am a steady thinker",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I change residences.",
                "validation":{
                    "required":true
                },
                "key": "I change residences",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I buy things on impulse.",
                "validation":{
                    "required":true
                },
                "key": "I buy things on impulse",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I can only think about one thing at a time.",
                "validation":{
                    "required":true
                },
                "key": "I can only think about one thing at a time",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I change hobbies.",
                "validation":{
                    "required":true
                },
                "key": "I change hobbies",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I spend or charge more than I earn.",
                "validation":{
                    "required":true
                },
                "key": "I spend or charge more than I earn",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I often have extraneous thoughts when thinking.",
                "validation":{
                    "required":true
                },
                "key": "I often have extraneous thoughts when thinking",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am more interested in the present than the future.",
                "validation":{
                    "required":true
                },
                "key": "I am more interested in the present than the future",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am restless at the theater or lectures.",
                "validation":{
                    "required":true
                },
                "key": "I am restless at the theater or lectures",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I like puzzles.",
                "validation":{
                    "required":true
                },
                "key": "I like puzzles",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "I am future oriented.",
                "validation":{
                    "required":true
                },
                "key": "I am future oriented",
                "multipleChoiceOptions": [
                    { "label": "Rarely/Never", "value": "rarely/never" },
                    { "label": "Occasionally", "value": "occasionally" },
                    { "label": "Often", "value": "often" },
                    { "label": "Almost Always/Always", "value": "almost always/always" }
                ]
            }
        ]
    }'
),
-- BIS-11 French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "BIS-11 French Version",
    "The Barratt Impulsiveness Scale FR",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Instructions: Pour chacun des énoncés suivants mettez un X dans la case appropriée. Ne passez pas trop de temps sur les énoncés. Répondez rapidement et honnêtement."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je planifie les tâches soigneusement.",
                "validation": {
                    "required":true
                },
                "key": "Je planifie les tâches soigneusement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’agis sans réfléchir.",
                "validation":{
                    "required":true
                },
                "key": "J’agis sans réfléchir",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je me décide rapidement.",
                "validation":{
                    "required":true
                },
                "key": "Je me décide rapidement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis insouciant(e).",
                "validation":{
                    "required":true
                },
                "key": "Je suis insouciant(e)",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je ne porte pas attention.",
                "validation":{
                    "required":true
                },
                "key": "Je ne porte pas attention",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Mes pensées se suivent rapidement.",
                "validation":{
                    "required":true
                },
                "key": "Mes pensées se suivent rapidement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je planifie mes voyages bien en avance.",
                "validation":{
                    "required":true
                },
                "key": "Je planifie mes voyages bien en avance",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai contrôle sur moi-même.",
                "validation":{
                    "required":true
                },
                "key": "J’ai contrôle sur moi-même",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je me concentre facilement.",
                "validation":{
                    "required":true
                },
                "key": "Je me concentre facilement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’économise régulièrement.",
                "validation":{
                    "required":true
                },
                "key": "J’économise régulièrement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je me tortille durant les pièces de théâtre et les conférences.",
                "validation":{
                    "required":true
                },
                "key": "Je me tortille durant les pièces de théâtre et les conférences",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis un(e) penseur(-euse) prudent.",
                "validation":{
                    "required":true
                },
                "key": "Je suis un(e) penseur(-euse) prudent",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je planifie ma sécurité d’emploi.",
                "validation":{
                    "required":true
                },
                "key": "Je planifie ma sécurité d’emploi",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je dis des choses sans penser.",
                "validation":{
                    "required":true
                },
                "key": "Je dis des choses sans penser",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’aime penser aux problèmes compliqués.",
                "validation":{
                    "required":true
                },
                "key": "J’aime penser aux problèmes compliqués",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je change d’emploi.",
                "validation":{
                    "required":true
                },
                "key": "Je change d’emploi",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’agis impulsivement.",
                "validation":{
                    "required":true
                },
                "key": "J’agis impulsivement",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Résoudre des problèmes de pensée m’ennuie.",
                "validation":{
                    "required":true
                },
                "key": "Résoudre des problèmes de pensée m’ennuie",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
                        {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’agis sous l’impulsion du moment.",
                "validation":{
                    "required":true
                },
                "key": "J’agis sous l’impulsion du moment",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis un(e) penseur(-euse) pondéré(e).",
                "validation":{
                    "required":true
                },
                "key": "Je suis un(e) penseur(-euse) pondéré(e)",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je change de logements.",
                "validation":{
                    "required":true
                },
                "key": "Je change de logements",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’achète des choses sur un coup de tête.",
                "validation":{
                    "required":true
                },
                "key": "J’achète des choses sur un coup de tête",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je peux seulement penser à une chose à la fois.",
                "validation":{
                    "required":true
                },
                "key": "Je peux seulement penser à une chose à la fois",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je change de hobbys.",
                "validation":{
                    "required":true
                },
                "key": "Je change de hobbys",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je dépense plus que ce que je gagne.",
                "validation":{
                    "required":true
                },
                "key": "Je dépense plus que ce que je gagne",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’ai souvent des pensées étrangères.",
                "validation":{
                    "required":true
                },
                "key": "J’ai souvent des pensées étrangères",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je m’intéresse plus au présent qu’au futur.",
                "validation":{
                    "required":true
                },
                "key": "Je m’intéresse plus au présent qu’au futur",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis agité(e) au théâtre et durant les conférences.",
                "validation":{
                    "required":true
                },
                "key": "Je suis agité(e) au théâtre et durant les conférences",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "J’aime les casse-têtes.",
                "validation":{
                    "required":true
                },
                "key": "J’aime les casse-têtes",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Je suis orienté(e) vers l’avenir.",
                "validation":{
                    "required":true
                },
                "key": "Je suis orienté(e) vers l’avenir",
                "multipleChoiceOptions": [
                    { "label": "Rarement/Jamais", "value": "rarement/jamais" },
                    { "label": "Des fois", "value": "des fois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Presque toujours/Toujours", "value": "presque toujours/toujours" }
                ]
            }
        ]
    }'
),
-- GDS English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "GDS Short Form English",
    "Geriatric Depression Scale English",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Choose the best answer for how you have felt over the past week."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Are you basically satisfied with your life?",
                "validation": {
                    "required":true
                },
                "key": "Are you basically satisfied with your life?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Have you dropped many of your activities and interests?",
                "validation":{
                    "required":true
                },
                "key": "Have you dropped many of your activities and interests?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel that your life is empty?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel that your life is empty?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you often get bored?",
                "validation":{
                    "required":true
                },
                "key": "Do you often get bored?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Are you in good spirits most of the time?",
                "validation":{
                    "required":true
                },
                "key": "Are you in good spirits most of the time?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Are you afraid that something bad is going to happen to you?",
                "validation":{
                    "required":true
                },
                "key": "Are you afraid that something bad is going to happen to you?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel happy most of the time?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel happy most of the time?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you often feel helpless?",
                "validation":{
                    "required":true
                },
                "key": "Do you often feel helpless?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you prefer to stay at home rather than going out and doing new things?",
                "validation":{
                    "required":true
                },
                "key": "Do you prefer to stay at home rather than going out and doing new things?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel you have more problems with memory than most?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel you have more problems with memory than most?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you think it is wonderful to be alive now?",
                "validation":{
                    "required":true
                },
                "key": "Do you think it is wonderful to be alive now?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel pretty worthless the way you are now?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel pretty worthless the way you are now?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel full of energy?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel full of energy?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you feel that your situation is hopeless?",
                "validation":{
                    "required":true
                },
                "key": "Do you feel that your situation is hopeless?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Do you think that most people are better off than you are?",
                "validation":{
                    "required":true
                },
                "key": "Do you think that most people are better off than you are?",
                "multipleChoiceOptions": [
                    { "label": "Yes", "value": "yes" },
                    { "label": "No", "value": "no" }
                ]
            }
        ]
    }'
),
-- GDS French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "GDS Short Form French",
    "Geriatric Depression Scale French",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Choisissez la réponse qui correspond à la façon dont vous vous sentiez la semaine dernière."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Êtes-vous satisfait de votre vie?",
                "validation": {
                    "required":true
                },
                "key": "Êtes-vous satisfait de votre vie?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Avez-vous abandonné beaucoup de vos activités et de vos intérêts?",
                "validation":{
                    "required":true
                },
                "key": "Avez-vous abandonné beaucoup de vos activités et de vos intérêts?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Avez-vous le sentiment que votre vie est vide?",
                "validation":{
                    "required":true
                },
                "key": "Avez-vous le sentiment que votre vie est vide?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Vous ennuyez-vous souvent?",
                "validation":{
                    "required":true
                },
                "key": "Vous ennuyez-vous souvent?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Êtes-vous de bonne humeur la plupart du temps?",
                "validation":{
                    "required":true
                },
                "key": "Êtes-vous de bonne humeur la plupart du temps?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Craignez-vous qu’un malheur vous arrive?",
                "validation":{
                    "required":true
                },
                "key": "Craignez-vous qu’un malheur vous arrive?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Vous sentez-vous heureux la plupart du temps?",
                "validation":{
                    "required":true
                },
                "key": "Vous sentez-vous heureux la plupart du temps?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Avez-vous souvent l’impression de ne pouvoir être aidé?",
                "validation":{
                    "required":true
                },
                "key": "Avez-vous souvent l’impression de ne pouvoir être aidé?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Préférez-vous rester à la maison plutôt que de sortir et faire des choses nouvelles?",
                "validation":{
                    "required":true
                },
                "key": "Préférez-vous rester à la maison plutôt que de sortir et faire des choses nouvelles?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Avez-vous l’impression d’avoir plus de problèmes de mémoire que la plupart des gens?",
                "validation":{
                    "required":true
                },
                "key": "Avez-vous l’impression d’avoir plus de problèmes de mémoire que la plupart des gens?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Pensez-vous qu’il est merveilleux de vivre actuellement??",
                "validation":{
                    "required":true
                },
                "key": "Pensez-vous qu’il est merveilleux de vivre actuellement??",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Sentez-vous que vous ne valez pas grand-chose tel que vous êtes actuellement?",
                "validation":{
                    "required":true
                },
                "key": "Sentez-vous que vous ne valez pas grand-chose tel que vous êtes actuellement?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Vous sentez-vous plein d’énergie?",
                "validation":{
                    "required":true
                },
                "key": "Vous sentez-vous plein d’énergie?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Pensez-vous que votre situation est sans espoir?",
                "validation":{
                    "required":true
                },
                "key": "Pensez-vous que votre situation est sans espoir?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            },
            {
                "questionType":"radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Pensez-vous que la plupart des gens sont en meilleure forme que vous?",
                "validation":{
                    "required":true
                },
                "key": "Pensez-vous que la plupart des gens sont en meilleure forme que vous?",
                "multipleChoiceOptions": [
                    { "label": "Oui", "value": "oui" },
                    { "label": "Non", "value": "non" }
                ]
            }
        ]
    }'
),
-- QUIP English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "QUIP",
    "Questionnaire for Impulsive-Compulsive Disorders in Parkinson's Disease - Rating Scale (QUIP-RS)",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Description Of Behaviors",
                "textContent": "A. <b>Gambling</b>: casinos, internet gambling lotteries, scratch tickets, betting, slot or poker machines <br /> B. <b>Sex</b>: making sexual demads on others, promiscuity, prostitution, change in sexual orientation, masturbation, internet and telephone sexual activities, pornography <br /> C. <b>Buying</b>: too much of the same thing or things you don’t need or use <br /> D. <b>Eating</b>: eating larger amounts or different types of food than in the past, more rapidly than normal, at different times (such as overnight), until feeling uncomfortable full or when not hungry <br /> E. <b>Hobbyism</b>: specific tasks, hobbies or other organized activities, such as writing, painting, gardening, repairing or dismantling things, collecting, computer use, working on projects, etc. <br /> F. <b>Punding</b>: repeating cetain simple motor activities, such as cleaning, tidying, handling, examining, sorting, ordering, collecting, hoarding, or arranging objects, etc. <br /> G. <b>Medication Use</b>: consistently taking too much of your Parkinson’s medications, or increasing on your own, without medical advice, your overall intake of PD medications"
            },
            {
                "questionType": "displayText","title": "Frequency Of Behaviours","textContent": "<b>Never</b>: not at all <br /><b>Rarely</b>: 1 day/week <br /><b>Sometimes</b>: 2-3 days/week <br /><b>Often</b>: 4-5 days/week <br /><b>Very Often</b>: 6-7 days/week <br />"
            },
            {
                "questionType": "displayText",
                "title": "In the last 4 weeks...(see definitions above)"
            },
            {
                "questionType": "displayText",
                "title": "1. How much do you think about the following behaviors (such as having trouble keeping thoughts out of your mind or feeling guilty)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Gambling?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about gambling",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sex?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about sex",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Buying?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about buying",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Eating?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about eating",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Performing tasks or hobbies?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Repeating simple activities?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Taking your PD medications?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "2. Do you have urges or desires for the following behaviors that you feel are excessive or cause you distress (including becoming restless or irritable when unable to participate in them)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Gambling?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by gambling",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sex?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by sex",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Buying?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by buying",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Eating?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by eating",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Performing tasks or hobbies?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Repeating simple activities?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Taking your PD medications?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "3. Do you have difficulty controlling the following behaviors (such as increasing them over time, or having trouble cutting down or stopping them)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Gambling?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling gambling",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sex?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling sex",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Buying?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling buying",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Eating?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling eating",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Performing tasks or hobbies?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Repeating simple activities?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Taking your PD medications?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "4. Do you engage in activities specifically to continue the following behaviors (such as hiding what you are doing, lying, hoarding things, borrowing from others, accumulating debt, stealing, or being involved in illegal acts)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Gambling?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide gambling",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sex?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide sex",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Buying?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide buying",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Eating?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide eating",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Performing tasks or hobbies?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Repeating simple activities?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Taking your PD medications?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Never", "value": "never" },
                    { "label": "Rarely", "value": "rarely" },
                    { "label": "Sometimes", "value": "sometimes" },
                    { "label": "Often", "value": "often" },
                    { "label": "Very Often", "value": "very often" }
                ]
            }
        ]
    }'
),
-- QUIP French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "QUIP French",
    "Questionnaire sur les troubles impulsifs-compulsifs dans la maladie de Parkinson (QUIP-RS)",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Dans les 4 dernières semaines..."
            },
            {
                "questionType": "displayText",
                "title": "1. À quel point pensez-vous aux comportements suivant (comme la difficulté à garder des pensées hors de votre esprit, ou vous sentir coupable)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Jeu (''gambling'')?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about gambling",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sexe?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about sex",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Achats compulsifs?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about buying",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Manger?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about eating",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Exécuter des tâches ou pratiquer des passe-temps?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Répéter des activités simples?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Prendre vos médicaments contre le Parkinson?",
                "validation": {
                    "required":true
                },
                "key": "how much do you think about taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "2. Avez-vous des pulsions ou des désirs pour les comportements suivants que vous jugez excessifs ou qui vous causent de la détresse (y compris devenir agité ou irritable lorsque vous ne pouvez pas vous y adonner)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Jeu (''gambling'')?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by gambling",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sexe?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by sex",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Achats compulsifs?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by buying",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Manger?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by eating",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Exécuter des tâches ou pratiquer des passe-temps?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Répéter des activités simples?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Prendre vos médicaments contre le Parkinson?",
                "validation": {
                    "required":true
                },
                "key": "how much distress is caused by taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "3. Avez-vous de la difficulté à contrôler les comportements suivants ci-dessous (par exemple, les augmenter au fil du temps, ou avoir de la difficulté à les réduire ou les arrêter)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Jeu (''gambling'')?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling gambling",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sexe?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling sex",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Achats compulsifs?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling buying",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Manger?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling eating",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Exécuter des tâches ou pratiquer des passe-temps?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Répéter des activités simples?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Prendre vos médicaments contre le Parkinson?",
                "validation": {
                    "required":true
                },
                "key": "how much difficulty to you have controlling taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "divider"
            },
            {
                "questionType": "displayText",
                "title": "4. Vous livrez-vous à des activités expressément pour poursuivre les comportements suivants (par exemple, cacher ce que vous faîtes, mentir, accumuler des choses, emprunter aux autres, accumuler des dettes, voler ou participer à des actes illicites)?"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Jeu (''gambling'')?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide gambling",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Sexe?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide sex",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Achats compulsifs?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide buying",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Manger?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide eating",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Exécuter des tâches ou pratiquer des passe-temps?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide performing tasks or hobbies",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Répéter des activités simples?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide repeating simple activities",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "textContent": "Prendre vos médicaments contre le Parkinson?",
                "validation": {
                    "required":true
                },
                "key": "how much do you engage in activities to hide taking your PD medications",
                "multipleChoiceOptions": [
                    { "label": "Jamais", "value": "jamais" },
                    { "label": "Rarement", "value": "rarement" },
                    { "label": "Parfois", "value": "parfois" },
                    { "label": "Souvent", "value": "souvent" },
                    { "label": "Très souvent", "value": "Très souvent" }
                ]
            }
        ]
    }'
),
-- SHAPS English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "SHAPS English",
    "Snaith-Hamilton Pleasure Scale English",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "This questionnaire is designed to measure your ability to experience pleasure in the last few days. Please read each  statement very carefully. Tick one of the boxes to indicate how much you agree or disagree with each statement."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy my favourite television or radio program:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy my favourite television or radio program",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy being with my family or close friends:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy being with my family or close friends",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would find pleasure in my hobbies and pastimes:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in my hobbies and pastimes",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would be able to enjoy my favourite meal:",
                "validation": {
                    "required":true
                },
                "key": "I would be able to enjoy my favourite meal",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy a warm bath or refreshing shower:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy a warm bath or refreshing shower",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy seeing other people''s smiling faces:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy seeing other people''s smiling faces",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy looking smart when I have made an effort with my appearance:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy looking smart when I have made an effort with my appearance",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy reading a book, magazine or newspaper:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy reading a book, magazine or newspaper",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would enjoy a cup of tea or coffee or my favourite drink:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy a cup of tea or coffee or my favourite drink",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would be able to enjoy a beautiful landscape or view:",
                "validation": {
                    "required":true
                },
                "key": "I would be able to enjoy a beautiful landscape or view",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would get pleasure from helping others:",
                "validation": {
                    "required":true
                },
                "key": "I would get pleasure from helping others",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "I would feel pleasure when I receive praise from other people:",
                "validation": {
                    "required":true
                },
                "key": "I would feel pleasure when I receive praise from other people",
                "multipleChoiceOptions": [
                    { "label": "Strongly Disagree", "value": "strongly disagree" },
                    { "label": "Disagree", "value": "disagree" },
                    { "label": "Agree", "value": "agree" },
                    { "label": "Strongly Agree", "value": "Strongly agree" }
                ]
            }
        ]
    }'
),
-- SHAPS French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "SHAPS French",
    "Échelle de Plaisir de Snaith-Hamilton",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Ce questionnaire a été conçu pour mesurer votre capacité à éprouver du plaisir <b> au cours des ces derniers jours</b>. Il est important de lire chaque énoncé <b> très attentivement </b>. Cochez l''une des cases pour préciser votre degré d’accord ou de désaccord pour chacun des énoncés."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Mon émission préférée de télévision ou de radio me procure beaucoup de plaisir:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy my favourite television or radio program",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’apprécie beaucoup d’être avec ma famille ou avec des amis intimes:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy being with my family or close friends",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je trouve du plaisir dans me hobbies et passe temps:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in my hobbies and pastimes",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je suis capable d’apprécier mon plat favori:",
                "validation": {
                    "required":true
                },
                "key": "I would be able to enjoy my favourite meal",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’aime beaucoup prendre un bain chaud ou une douche rafraîchissante:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy a warm bath or refreshing shower",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je trouve du plaisir dans le parfum des fleurs ou dans l’odeur d’une fraîche brise de mer ou du pain fraîchement cuit:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in the scent of flowers or the smell of a fresh sea breeze or freshly baked bread",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’aime beaucoup voir des visages souriants autour de moi:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy seeing other people''s smiling faces",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’apprécie beaucoup de paraître élégant quand j’ai fait un effort pour soigner mon apparence:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy looking smart when I have made an effort with my appearance",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’aime beaucoup lire un livre, un magazine ou un journal:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy reading a book, magazine or newspaper",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "J’apprécie beaucoup une tasse de thé ou de café  ou un verre de ma boisson favorite.:",
                "validation": {
                    "required":true
                },
                "key": "I would enjoy a cup of tea or coffee or my favourite drink",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je trouve du plaisir dans des petits riens tels  que, par exemple, une journée fortement ensoleillée ou un coup de téléphone d’un ami:",
                "validation": {
                    "required":true
                },
                "key": "I would find pleasure in small things, e.g. bright sunny day, a telephone call from a friend",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je suis capable d’apprécier un très beau paysage ou une très belle vue:",
                "validation": {
                    "required":true
                },
                "key": "I would be able to enjoy a beautiful landscape or view",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je prends plaisir à aider les autres:",
                "validation": {
                    "required":true
                },
                "key": "I would get pleasure from helping others",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "vertical",
                "title": "Je ressens du plaisir à recevoir les éloges d’autres personnes:",
                "validation": {
                    "required":true
                },
                "key": "I would feel pleasure when I receive praise from other people",
                "multipleChoiceOptions": [
                    { "label": "Fortement en désaccord", "value": "fortement en désaccord" },
                    { "label": "En désaccord", "value": "en désaccord" },
                    { "label": "D’accord", "value": "d’accord" },
                    { "label": "Fortement d’accord", "value": "fortement d’accord" }
                ]
            }
        ]
    }'
),
-- PDAQ English
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PDAQ English",
    "Penn Parkinson's Daily Activities Questionnaire-15",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Please check or fill in the following that best describes YOU."
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have reading the newspaper or a magazine?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have reading the newspaper or a magazine",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have using a map to tell where to go?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have using a map to tell where to go",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have doing more than one thing at a time?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have doing more than one thing at a time",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have understanding your personal financial affairs?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have understanding your personal financial affairs",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have maintaining or completing a train of thought?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have maintaining or completing a train of thought",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "How much DIFFICULTY do you currently have remembering what day and month it is?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering what day and month it is",
                "multipleChoiceOptions": [
                    { "label": "None (4)", "value": 4 },
                    { "label": "A Little (3)", "value": 3 },
                    { "label": "Somewhat (2)", "value": 2 },
                    { "label": "A Lot (1)", "value": 1 },
                    { "label": "Cannot Do (0)", "value": 0 }
                ]
            }
        ]
    }'
),
-- PDAQ French
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "PDAQ French",
    "Penn Parkinson's Daily Activities Questionnaire-15 French",
    "",
    '{
        "title":"Questionnaire",
        "questions":[
            {
                "questionType": "displayText",
                "title": "Voici des questions sur des activités de tous les jours. Veuillez indiquer ce qui VOUS décrit le mieux"
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à lire le journal ou un magazine?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have reading the newspaper or a magazine",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à garder la notion du temps qui passe (ex. en utilisant une montre)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have keeping track of time (e.g. using a clock)",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à compter le montant correct lors de vos achats?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have counting the correct amount of money when making purchases",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à lire et à suivre des instructions complexes?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have reading and following complex instructions (e.g. directions for a new medication)",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à gérer un problème auquel vous n’êtes pas habitué (ex. réparer le réfrigérateur)?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have handling an unfamiliar problem (e.g. getting the refrigerator fixed)",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à expliquer à une autre personne comment faire quelque chose qui implique plusieurs étapes?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have explaining how to do something involving several steps to another person",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir d’une liste de 4 ou 5 courses que vous avez à faire sans l’écrire?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering a list of 4 or 5 errands without writing it down",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à utiliser une carte pour vous orienter?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have using a map to tell where to go",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir de nouvelles informations telles qu’un numéro de téléphone ou des instructions simples?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering new information like phone number or simple instructions",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à faire plus d’une chose en même temps?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have doing more than one thing at a time",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à apprendre à utiliser de nouveaux gadgets ou machines dans la maison?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have learning to use new gadgets or machines around the house",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à comprendre et gérer vos finances personnelles?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have understanding your personal financial affairs",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à garder ou à terminer le fil de votre pensée?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have maintaining or completing a train of thought",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à discuter d’une émission de télévision, d’un livre, d’un film ou d’actualités?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have discussing a TV show, book, movie, or current events",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            },
            {
                "questionType": "radiobuttons",
                "radiobuttonPresentation": "horizontal",
                "title": "Quelle DIFFICULTÉ avez-vous actuellement à vous souvenir de quel jour et de quel mois il s’agit?",
                "validation": {
                    "required":true
                },
                "key": "How much DIFFICULTY do you currently have remembering what day and month it is",
                "multipleChoiceOptions": [
                    { "label": "Aucun(e) (4)", "value": 4 },
                    { "label": "Un Peu (3)", "value": 3 },
                    { "label": "Quelque Peu (2)", "value": 2 },
                    { "label": "Beaucoup (1)", "value": 1 },
                    { "label": "Ne Peut Pas Faire (0)", "value": 0 }
                ]
            }
        ]
    }'
);