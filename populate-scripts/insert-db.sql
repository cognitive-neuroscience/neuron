-- File used to update the DB for existing tasks

-- source /Users/nicholaslee/Work/go/src/github.com/cognitive-neuroscience/neuron/populate-scripts/insert-db.sql
-- source C:/Users/nlee30/Documents/sidetings/sharplab/goNeuronWorkspace/src/github.com/cognitive-neuroscience/neuron/populate-scripts/insert-db.sql
-- source /sbin/sharplab/populate-scripts/insert-db.sql

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "QUESTIONNAIRE",
    "Basic Background Questionnaire",
    "",
    "",
    '{
        "title": "Parkinson''s Treatment Questionnaire",
        "questions": [
            {
                "questionType": "displayText",
                "title": "The following questions are about the treatment you receive for your parkinson''s disease and for related conditions."
            },
            {
                "questionType": "multipleChoiceSelect",
                "title": "Are you currently taking any of the following prescription medications to treat your Parkinson''s disease symptoms? (Please check all that apply)",
                "key": "PDMeds",
                "radiobuttonPresentation": "vertical",
                "validation": {
                    "required": true
                },
                "allowMultipleSelections": true,
                "multipleChoiceOptions": [
                    {
                        "label": "No, I don''t take any prescription medications to treat my Parkinson''s disease",
                        "value": "No medications"
                    },
                    {
                        "label": "Sinemet or Carbidopa-Levodopa or Parcopa (Oral)",
                        "value": "Sinemet or Carbidopa-Levodopa or Parcopa (Oral)"
                    },
                    {
                        "label": "Sinemet CR or Carbidopa-Levodopa, Extended Release (Oral)",
                        "value": "Sinemet CR or Carbidopa-Levodopa, Extended Release (Oral)"
                    },
                    {
                        "label": "Rytary or Numient (i.e. Carbidopa-Levodopa, Extended Release, Oral)",
                        "value": "Rytary or Numient"
                    },
                    {
                        "label": "Duopa or Duodopa (i.e. Carbidopa-Levodopa Intestinal Gel)",
                        "value": "Duopa or Duodopa"
                    }
                ]
            }
        ]
    }'
);