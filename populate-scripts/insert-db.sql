-- File used to update the DB for existing tasks

INSERT INTO tasks (id, from_platform, task_type, name, description, external_url, config) 
VALUES
(
    NULL,
    "PSHARPLAB",
    "INFO_DISPLAY",
    "Deception Debrief",
    "Debriefing about the deception used in the study",
    "",
    '{
        "title": "Debriefing About The Deception Used In The Study",
        "sections": [
            {
                "header": "",
                "textContent": "Thank you for participating!"
            },
            {
                "header": "",
                "textContent": "Earlier, we informed you that our study was about measuring aspect of cognition. While this is true, we were specifically interested in <b>the effects of stress on cognition</b>. As a result, one of the two sessions involved the participants placing their hand in ice water and being socially evaluated in order to create a short-term stressful experience."
            },
            {
                "header": "",
                "textContent": "In order to properly study this, <b>it was required that we deceive you about the actual nature of the study</b>. We could not warn you that you would experience stress because knowing this in advance would have minimized the experience of the stress."
            },
            {
                "header": "",
                "textContent": "The specific deception elements in this study included:"
            },
            {
                "header": "",
                "textContent": "1. Not telling you in the consent form that this study was about the effect of stress on cognition."
            },
            {
                "header": "",
                "textContent": "2. Ice water task: "
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "a. We withheld the amount of time that we required you keep your hand in the ice water, which was a maximum of three minutes."
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "b. We refused to answer any questions you had throughout the task."
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "c. We said that removing your hand from the ice water would impact our study when in fact it was only used to induce stress."
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "d. We instructed the research assistant to behave in a cold, stoic matter and act like they were evaluating your behavior when in fact they were only pretending to do so to add an element of social stress."
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "e. We told you that you were being filmed to have the videos analyzed but the videos were deleted immediately after recording and were only used to add to the stress of the experience."
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "f. We told you the goal of the ice water task was to measure pain tolerance when it was actually our means of inducing stress."
            },
            {
                "header": "",
                "textContent": "Given the ubiquitous nature of stress, it is critical that we study it in order to understand the range of consequences it can hold for brain health."
            },
            {
                "header": "",
                "textContent": "We followed standard research procedures commonly used to cause stress in the research setting. <b>The stress was meant to be relatively mild and very short-term</b>. If you still feel lingering effects of this stress, or have any questions about the study or your rights as a participant, please contact us:"
            },
            {
                "header": "",
                "indent": 1,
                "textContent": "<b>Madeleine Sharp, Department of Neurology and Neurosurgery, Montreal Neurological Institute, McGill University: madeleine.sharp@mcgill.ca or sharplab.neuro@mcgill.ca"
            },
            {
                "header": "",
                "textContent": "Please also consider the following mental health resource: Mental Health Services Locator - http://store.samhsa.gov/mhlocator"
            },
            {
                "header": "",
                "textContent": "Finally, if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223."
            },
            {
                "header": "",
                "textContent": "Thank you again for your participation!"
            }
        ]
    }'
);