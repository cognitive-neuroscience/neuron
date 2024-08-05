
-- Single Digit Modality Task (SDMT)
UPDATE tasks SET
    from_platform = "PSHARPLAB",
    task_type = "EXPERIMENTAL",
    name = "SDMT",
    description = "Symbol Digit Modalities Task. The participant needs to use a key that maps images to numbers. They must look at a grid of images, and input the associated numbers",
    config = '{
        "taskConfig": {},
        "metadata": [
            {
                "componentName": "SDMTCOMPONENT",
                "componentConfig": {
                    "isPractice": true,
                    "maxResponseTime": 180000,
                    "numRows": 1,
                    "numCols": 9,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            [
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": "3"
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": "1"
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": "5"
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                }
                            ]
                        ]
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "",
                        "fr": ""
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Good job!",
                                "fr": "Bravo!"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You will now start the real game. You will have <b>90 seconds</b> to complete as many blanks as possible. We will show you this grid row by row.",
                                "fr": "Vous allez maintenant commencer le vrai jeu. Vous aurez 90 secondes pour compléter autant de cases que possible. Nous vous montrerons cette grille ligne par ligne."
                            }
                        },
                        {
                            "sectionType": "image-horizontal",
                            "imagePath": "/assets/images/instructions/sdmt/grid.png",
                            "imageAlignment": "center"
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"START\\" when you are ready for the actual game",
                                "fr": "Cliquez sur \\"Commencer\\" pour commencer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": true,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            },
            {
                "componentName": "SDMTCOMPONENT",
                "componentConfig": {
                    "isPractice": false,
                    "maxResponseTime": 120000,
                    "numRows": 1,
                    "numCols": 16,
                    "stimuliConfig": {
                        "type": "hardcoded",
                        "stimuli": [
                            [
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/8.png",
                                    "expectedNumber": "8",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/4.png",
                                    "expectedNumber": "4",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/6.png",
                                    "expectedNumber": "6",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/9.png",
                                    "expectedNumber": "9",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/7.png",
                                    "expectedNumber": "7",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/3.png",
                                    "expectedNumber": "3",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/5.png",
                                    "expectedNumber": "5",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/2.png",
                                    "expectedNumber": "2",
                                    "userAnswer": ""
                                },
                                {
                                    "imageURL": "/assets/images/stimuli/sdmt/1.png",
                                    "expectedNumber": "1",
                                    "userAnswer": ""
                                }
                            ]
                        ]
                    }
                }
            },
            {
                "componentName": "DISPLAYCOMPONENT",
                "componentConfig": {
                    "title": {
                        "en": "Congratulations!",
                        "fr": "Félicitations!"
                    },
                    "sections": [
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "You finished the game successfully",
                                "fr": "Vous avez terminé le jeu avec succès"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Thank you for your participation",
                                "fr": "Merci pour votre participation"
                            }
                        },
                        {
                            "sectionType": "text",
                            "textContent": {
                                "en": "Click \\"NEXT\\" to continue",
                                "fr": "Cliquez sur \\"NEXT\\" pour continuer"
                            }
                        }
                    ],
                    "buttons": {
                        "isStart": false,
                        "previousDisabled": true,
                        "nextDisabled": false
                    }
                }
            }
        ]
    }'
WHERE id = 93;