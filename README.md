[![Codacy Badge](https://api.codacy.com/project/badge/Grade/00e659dd629c4cbaa3a2d543f6bcc27b)](https://www.codacy.com/gh/cognitive-neuroscience/neuron?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=cognitive-neuroscience/neuron&amp;utm_campaign=Badge_Grade) ![CI](https://github.com/cognitive-neuroscience/neuron/workflows/CI/badge.svg) [![Go Report Card](https://goreportcard.com/badge/github.com/cognitive-neuroscience/neuron)](https://goreportcard.com/report/github.com/cognitive-neuroscience/neuron)

# neuron

## SQL Config Files

Neuron runs on JSON config files in order to populate views for the user. This allows a high degree of flexibility when editing specific tasks.
Tasks, questionnaires, and display slides all utilize JSON config files in order to populate the view.

---

### Tasks

#### Overview

Task config files are used to describe sharplab tasks. These include a display component that can display instructions to the participant, and task specific components to run the actual task itself.

Task config files take this form:
```
{
  "config": {},
  "metadata": [
    {
      "component": "DISPLAYCOMPONENT",
      "content": {
        "title": "Some example title",
        "subtitle": "Some example subtitle",
        "timerConfig": {},
        "sections": [
          {
            "sectionType": "text",
            "textContent": "example text content"
          }
        ]
      }
    },
    {
      "component": "DIGITSPANCOMPONENT",
      "config": {
        ...
      }
    }
  ]
}
```

- The **config** property is used for when we want to counterbalance different groups of participants.
- The **metadata** property is an array that holds each slide in order. In the above example, we are showing a display slide followed by the digit span task.
  - The **component** property is used on the frontend and tells the code which component to render.
  - The **content** property holds the text/image properties of a display component. More info on this below.
    - The **title** property specifies a title for the top of the page
    - The **subtitle** property specifies a subtitle under the title
    - The **timerConfig** property indicates values to set to make the slide act as a timer. More info on this below
    - The **sections** property is an array that holds an ordered list of all the content to be rendered for a display slide
  - The **config** property within metadata is used for components that render a task (digit span, stroop, nback, etc). The config tells the frontend to run the game with specific configurations such as max response time, feedback duration, and other necessary inputs.

#### Useful JSON values for the Display Component

Most likely, the use case for editing these config files is to modify/create views to display to the participant within a task. This is the purpose of the **display component**. There are a few possible configurations that are supported.

#### 1. Text

```
{
  "config": {},
  "metadata": [
    {
      "component": "DISPLAYCOMPONENT",
      "content": {
        "title": "Some example title",
        "sections": [
          {
            "sectionType": "text",
            "textContent": "example text content"
          }
        ]
      }
    },
    ...
  ]
}
```
The first is the most basic example. The property ```"sectionType": "text"``` indicates that text will be rendered. Set the desired text for the ```textContent``` property.
```textContent``` supports french/english language translations as well. To add french translations, the textContent should be given en and fr properties:
```
{
  "textContent": {
    "en": "hello world",
    "fr": "bonjour le monde"
  }
}
```

#### 2. Images

```
{
  "config": {},
  "metadata": [
    {
      "component": "DISPLAYCOMPONENT",
      "content": {
        "title": "Some example title",
        "sections": [
          {
              "sectionType": "image-horizontal", // possible values are: "image-horizontal", "image-square", "image-small",
              "imageAlignment": "left", // possible values are: "left", "center", "right"
              "imagePath": "/assets/images/instructions/fingertapping/index-finger-banner.png"
          },
        ]
      }
    },
    ...
  ]
}
```
SectionType should be set to image-horizontal, image-square, or image-small if you want to render an image.
The imageAlignment property should be set to left, center, or right. It specifies whether the image should be left, center, or right aligned respectively.
The imagePath property must be set to reference the desired image.
Note: the image must be uploaded in the frontend in order to reference them via an imagePath

#### Example of image-horizontal

<img width="1345" alt="Screen Shot 2022-01-23 at 10 02 54 PM" src="https://user-images.githubusercontent.com/26612023/150730262-395aa275-25ad-4f06-b0de-c6d2527de5f3.png">

#### Exanple of image-square

<img width="1345" alt="Screen Shot 2022-01-23 at 10 07 33 PM" src="https://user-images.githubusercontent.com/26612023/150730645-740bd058-f3e3-4d7d-aecb-e77024e84270.png">

#### Example of image-small

(in this case, the "3" and "8" are images)

<img width="1345" alt="Screen Shot 2022-01-23 at 10 11 48 PM" src="https://user-images.githubusercontent.com/26612023/150731096-4f675910-a544-452b-9941-064d4976f27d.png">

#### 3. Timer

```
{
    "component": "DISPLAYCOMPONENT",
    "content": {
        "title": {
            "en": "Get ready!",
            "fr": "Sois prêt!"
        },
        "timerConfig": {
            "timer": 10000,
            "showTimer": true,
            "canSkipTimer": false,
            "skipAvailableAfterXSeconds": 5000,
            "countDown": true
        },
        "sections": [
            {
                "sectionType": "image-horizontal",
                "imagePath": "/assets/images/instructions/smileyface/countdown.png"
            }
        ]
    }
},
```
The timerConfig property should be set if you want to convert the slide into a timer. This can be useful if you want the participants to wait a certain amount of time before continuing on to the next slide.
 - the **timer** property is the amount of time to wait in milliseconds.
 - the **showTimer** property indicates whether to show the numbers counting down or not
 - the **canSkipTimer** property indicates whether the participant is allowed to skip to the next section
 - the **countDown** property set to true will have the timer count down, and false will have it counting up
 - the **skipAvailableAfterXSeconds** works with the ```canSkipTimer: true``` property. Setting this property to a specific number will allow the participant to skip to the next slide only after that number of seconds has elapsed.

---

### Questionnaires

#### Overview

Questionnaire config files are used to describe the questions included in the online form.

Questionnaire config files take this form:
```
{
  "title": "Some title",
  "questions": [
    "questionType": "input", // possible values: "multipleChoiceSelect", "radiobuttons", "freeTextResponse", "displayText", "divider", "input", "slider"
    "title": "Age question",
    "textContent": "what is your age?"
    "validation": {
      "required":true,
      "isNumeric":true,
      "min":18
    },
    "key":"age"
  ]
}
```
 - The **title** property represents the name of the form displayed to the participant
 - The **questions** property is an array of questions rendered to the participant
     - The **questionType** property is the type of input to be rendered. Possible options are "multipleChoiceSelect", "radiobuttons", "freeTextResponse", "displayText", "divider", "input", and "slider"
     - The **title** property is the title of that specific question
     - The **textContent** property is the text content for that specific question
     - The **validation** property is a configuration that allows you to apply specific validation rules to the rendered question
 - The **key** property is a string that is used as the identifier for this specific question. This is also the value that will be used for this question when downloading the spreadsheet data for this questionnaire. In the above example, the spreadsheet would say "age" along with all participant responses. _This must be unique._

Different questionTypes have different properties to set. More info on that below.

#### 1. Input

```
{
  "title": "Some title",
  "questions": [
    "questionType": "input",
    "title": {
      "en": "what is your age?",
      "fr": "quel âge as-tu?"
    },
    "validation": {
      "required":true,
      "isNumeric":true,
      "min":18
    },
    "key":"age"
  ]
}
```
The most basic example is a input with ```"questionType": "input"```. This renders a basic textbox that allows the user to type a response.
You can apply certain validations:
 - ```required: true``` makes it so that the question must be answered
 - ```isNumeric: true``` makes it so that the question must be answered with a number
 - ```min: 18``` makes it so that the number entered must be at least 18
 - ```max: 80``` makes it so that the number entered must be at most 80
 - ```minLength: 20``` makes is so that the response must be at least 20 characters
 - ```maxLength: 100``` makes it so that the response must be at most 100 characters

Note that all questionnaires accept french translations for the title and textContent.

Example:

<img width="618" alt="Screen Shot 2022-01-23 at 11 02 52 PM" src="https://user-images.githubusercontent.com/26612023/150736658-d29f2bd3-7215-4137-bb51-89ec0f393991.png">

#### 2. MultiplChoiceSelect

```
{
  "title": "Some title",
  "questions": [
    "questionType": "multipleChoiceSelect",
    "title": {
      "en": "What sex were you assigned at birth?",
      "fr": "quel est ton sexe?"
    },
    "validation": {
        "required": true
    },
    "key": "sex",
    "multipleChoiceOptions": [
      {
        "label": {
          "en": "Female",
          "fr": "Femelle"
        },
        "value": "female"
      },
      {
        "label": {
          "en": "Male",
          "fr": "Mâle"
        },
        "value": "male"
      }
    ]
  ]
}
```
This question type renders a select. This requires that the user select one option out of multiple possibilities.
For ```"questionType": "multipleChoiceSelect"```, you need to provide multiple choice options. In the above example, the multiple choice options are "Female" and "Male"

Note that french translations are supported for label values.

Example:

<img width="642" alt="Screen Shot 2022-01-23 at 11 10 48 PM" src="https://user-images.githubusercontent.com/26612023/150737591-257b84d9-180e-4ba5-9188-5cc0df4bef29.png">

#### 3. Radiobuttons









// TODO finish this






---

### Display Slides

---

## Download and Install Go
### Linux, macOS, and FreeBSD tarballs
[Download the archive](https://golang.org/dl/) and extract it into /usr/local, creating a Go tree in `/usr/local/go`. For example:

```shell
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
```
Choose the archive file appropriate for your installation. For instance, if you are installing Go version 1.2.1 for 64-bit x86 on Linux, the archive you want is called `go1.2.1.linux-amd64.tar.gz`.

(Typically these commands must be run as root or through sudo.)

Add `/usr/local/go/bin` to the PATH environment variable. You can do this by adding this line to your `/etc/profile` (for a system-wide installation) or `$HOME/.profile`:

```shell
export PATH=$PATH:/usr/local/go/bin
```
**Note**: changes made to a profile file may not apply until the next time you log into your computer. To apply the changes immediately, just run the shell commands directly or execute them from the profile using a command such as source `$HOME/.profile`.

### macOS package installer

[Download the package file](https://golang.org/dl/), open it, and follow the prompts to install the Go tools. The package installs the Go distribution to `/usr/local/go`.

The package should put the `/usr/local/go/bin directory` in your PATH environment variable. You may need to restart any open Terminal sessions for the change to take effect.

### Windows

Open the [MSI file](https://golang.org/dl/) and follow the prompts to install the Go tools. By default, the installer puts the Go distribution in `C:\Go`.

The installer should put the `C:\Go\bin` directory in your PATH environment variable. You may need to restart any open command prompts for the change to take effect.

### Zip archive

[Download the zip file](https://golang.org/dl/) and extract it into the directory of your choice (we suggest `C:\Go`).

Add the `bin` subdirectory of your Go root (for example, `C:\Go\bin`) to your PATH environment variable.

### Setting environment variables under Windows

Under Windows, you may set environment variables through the "Environment Variables" button on the "Advanced" tab of the "System" control panel. Some versions of Windows provide this control panel through the "Advanced System Settings" option inside the "System" control panel.

## Setting up the repository
### Clone the repository

Use `git` to clone the repository:

```shell
git clone https://github.com/cognitive-neuroscience/neuron.git
```

### Install the dependencies

The package uses Go Modules to manage dependencies. Install dependencies by typing:

```shell
go mod download
```

### Run the package

Run the package by typing:

```shell
go run ./src/main
```

### Run tests

```shell
go test -v ./src/* -race -coverprofile=coverage.txt -covermode=atomic
```

### Build the package

Generate a binary build for your operating system by typing:

```shell
# For Windows
env GOOS=windows GOARCH=amd64 go build -o ./bin/windows/neuron ./src/main

# For macOS
env GOOS=darwin GOARCH=amd64 go build -o ./bin/darwin/neuron ./src/main

# For Linux
env GOOS=linux GOARCH=amd64 go build -o ./bin/linux/neuron ./src/main
````

## License
MIT licensed. See the LICENSE file for details.
