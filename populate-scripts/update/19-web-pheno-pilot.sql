
-- WEB PHENO PILOT
UPDATE tasks set
    from_platform = "PSHARPLAB",
    task_type = "CONSENT",
    name = "Web Pheno Pilot",
    description = "",
    external_url = "",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "CONSENT",
                "componentConfig": {
                    "imgPath": "../../../assets/images/consent/consentOrgs.png",
                    "title": "BEFORE YOU CAN PROCEED YOU MUST READ THE FOLLOWING CONSENT FORM",
                    "summary": [
                        {
                            "caption": "Study title:",
                            "words": ["Deep cognitive endophenotyping of Parkinson’s disease: A platform development and pilot study"]
                        },
                        {
                            "caption": "Principal investigator:",
                            "words": ["Madeleine Sharp MD MSc, Department of Neurology and Neurosurgery"]
                        },
                        {
                            "caption": "Sponsor:",
                            "words": ["Parkinson Foundation"]
                        },
                        {
                            "caption": "Protocol:",
                            "words": ["2020-6045, version 2"]
                        }
                    ],
                    "secondTitle": ["** You must be over the age of 18 to participate in the following research study. **"],
                    "body": [
                        {
                            "caption": "STUDY PURPOSE",
                            "words": [
                                "This study aims to use computer tests of cognitive function to identify mechanisms of cognitive dysfunction in patients with Parkinson’s disease. You are being asked to participate in the development phase of this research. We are recruiting a total of 2000 men and women over the age of 18 for this phase of the research study."
                            ]
                        },
                        {
                            "caption": "PROCEDURES",
                            "words": [
                                "If you choose to participate you will be asked to:<br><br>",
                                "1. Provide basic information about your demographics and your health (age, sex, education, medication use, history of neurological and psychiatric disorders).",
                                "2. Complete a combination of short ‘brain games’ and questionnaires, designed to examine different aspects of cognition, where you will be required to use the keys of your keyboard to provide responses.",
                                "This will take under 60 minutes"
                            ]
                        },
                        {
                            "caption": "CONFIDENTIALITY",
                            "words": [
                                "This study does not involve the collection of any personal or identifiable information about you. Nonetheless, your research data will be assigned a unique code number and stored in a secure manner on a McGill University server, protected by standard physical and digital security measures, and will be stored for 20 years. For monitoring, control, and security your study file may be examined by representatives of the institution or the Research Ethics Board. All these individuals and organizations adhere to policies on confidentiality."
                            ]
                        },
                        {
                            "caption": "BENEFITS",
                            "words": ["There is no direct benefit to you for participating in this research."]
                        },
                        {
                            "caption": "POTENTIAL RISKS",
                            "words": [
                                "Despite removal of identifying information and the use of standard security measures to collect and store data, in some circumstances it may be possible to re-identify individuals, however we believe this risk to be very low. There are no anticipated physical risks of participating in this research. You may find the tasks dull or tiring."
                            ]
                        },
                        {
                            "caption": "VOLUNTARY PARTICIPATION AND THE RIGHT TO WITHDRAW",
                            "words": [
                                "Your participation in this research project is voluntary. Therefore, you may refuse to participate or withdraw at any time, and you can do so by simply closing the webpage. If you withdraw from the study, the information already collected for the study will be stored, analyzed and used to ensure the integrity of the study."
                            ]
                        },
                        {
                            "caption": "COMPENSATION",
                            "words": [
                                "If you complete the study, you will be compensated based on a 4$ per 30 minutes of task duration."
                            ]
                        },
                        {
                            "caption": "CONTACT INFORMATION",
                            "words": [
                                "If you have questions or if you have a problem you think may be related to your participation in this research study, or if you would like to withdraw, you may communicate with the study researcher, Dr. Madeleine Sharp, or with someone on the research team at the following number Monday to Friday 9h00 to 17h00 EST: (514) 398-5174. You may also reach the study team at sharplab.neuro@mcgill.ca.",
                                "For any question concerning your rights as a research participant taking part in this study, or if you have comments, or wish to file a complaint, you may communicate with the Ombudsman of the Montreal Neurological Hospital at (514) 934-1934 ext. 22223."
                            ]
                        },
                        {
                            "caption": "OVERVIEW OF ETHICAL ASPECTS OF THE RESEARCH",
                            "words": [
                                "The McGill University Health Centre Research Ethics Board reviewed this research and is responsible for monitoring the study."
                            ]
                        }
                    ],
                    "endMessage": "By clicking \\"Accept\\", you are confirming that you reviewed the information and consent form and that you agree to participate in the study in accordance with the conditions stated above.",
                    "buttons": {
                        "reject": {
                            "show": true,
                            "text": "DECLINE"
                        },
                        "accept": {
                            "show": true,
                            "text": "ACCEPT"
                        }
                    }
                }
            }
        ]
    }'
WHERE id = 19;