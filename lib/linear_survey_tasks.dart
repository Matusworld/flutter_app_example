import 'package:research_package/model.dart';

final timeChoices = [
  RPChoice(text: "timeChoice0", value: 0),
  RPChoice(text: "timeChoice1", value: 1),
  RPChoice(text: "timeChoice2", value: 2),
  RPChoice(text: "timeChoice3", value: 3),
  RPChoice(text: "timeChoice4", value: 4),
  RPChoice(text: "timeChoice5", value: 5)
];

final joyfulActivities = [
  RPChoice(text: "Your input", value: 6, isFreeText: true),
  RPChoice(text: "Jogging", value: 5, detailText: "Running in a moderate pace"),
  RPChoice(text: "Playing an instrument", value: 4),
  RPChoice(text: "Family and friends", value: 3),
  RPChoice(text: "Doing sports", value: 2),
  RPChoice(text: "Reading", value: 1),
  RPChoice(text: "Being productive", value: 0),
];

final instruments = [
  RPChoice(
      text: "Guitar",
      value: 3,
      detailText:
          "A guitar is an instrument. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rutrum facilisis turpis, vitae congue nunc. Cras gravida tempor elit eu congue. Nam ut est eget enim imperdiet ullamcorper. Curabitur ac consequat augue. Suspendisse hendrerit, est eu varius suscipit, nisi magna congue purus, quis facilisis massa nibh sit amet est. Sed ut ligula diam. Nunc mollis iaculis nulla in hendrerit. Nulla facilisi. Vivamus faucibus augue vel auctor lacinia."),
  RPChoice(text: "Piano", value: 2),
  RPChoice(text: "Saxophone", value: 1),
];

final yesNo = [
  RPChoice(text: "Yes", value: 1),
  RPChoice(text: "No", value: 0),
];

final images = [
  RPImageChoice(
    imageUrl: 'assets/images/very-sad.png',
    value: -2,
    description: 'Feeling very sad',
  ),
  RPImageChoice(
    imageUrl: 'assets/images/sad.png',
    value: -1,
    description: 'Feeling sad',
  ),
  RPImageChoice(
    imageUrl: 'assets/images/ok.png',
    value: 0,
    description: 'Feeling ok',
  ),
  RPImageChoice(
    imageUrl: 'assets/images/happy.png',
    value: 1,
    description: 'Feeling happy',
  ),
  RPImageChoice(
    imageUrl: 'assets/images/very-happy.png',
    value: 2,
    description: 'Feeling very happy',
  ),
];

final timeAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: timeChoices,
);

// All types of DateTime answer formats
final timeOfDayAnswerFormat = RPDateTimeAnswerFormat(
    dateTimeAnswerStyle: RPDateTimeAnswerStyle.TimeOfDay);
final dateAndTimeAnswerFormat = RPDateTimeAnswerFormat(
    dateTimeAnswerStyle: RPDateTimeAnswerStyle.DateAndTime);
final dateAnswerFormat =
    RPDateTimeAnswerFormat(dateTimeAnswerStyle: RPDateTimeAnswerStyle.Date);

final sliderAnswerFormat = RPSliderAnswerFormat(
  minValue: 0,
  maxValue: 100,
  divisions: 10,
  prefix: "\$",
  suffix: " paid",
);

final joyfulActivitiesAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.MultipleChoice,
  choices: joyfulActivities,
);

final instrumentsAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.MultipleChoice,
  choices: instruments,
);

final weightIntegerAnswerFormat =
    RPIntegerAnswerFormat(minValue: 0, maxValue: 200, suffix: "KG");

final bloodGlucoseDoubleAnswerFormat =
    RPDoubleAnswerFormat(minValue: 0, maxValue: 20, suffix: "mmol/l");

final yesNoAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: yesNo,
);

final minutesIntegerAnswerFormat =
    RPIntegerAnswerFormat(minValue: 0, maxValue: 10000, suffix: "minutes");

final textAnswerFormat = RPTextAnswerFormat(hintText: "Write your answer here");

final imageChoiceAnswerFormat = RPImageChoiceAnswerFormat(choices: images);

final additionalInfoQuestionStep = RPQuestionStep(
    identifier: 'additionalInfoQuestionStepID',
    title: 'Do you have any more details you would like to add?',
    answerFormat: textAnswerFormat,
    optional: true);

final wakeUpStep = RPQuestionStep(
    identifier: 'wakeUpStep',
    title: 'When did you wake up?',
    answerFormat: timeOfDayAnswerFormat);

final foodStep = RPQuestionStep(
    identifier: 'foodStep',
    title: 'When did you last eat unhealthy food?',
    answerFormat: dateAndTimeAnswerFormat);

final alcoholStep = RPQuestionStep(
  identifier: 'alcoholStep',
  title: 'When did you last drink alcohol?',
  answerFormat: dateAnswerFormat,
  autoSkip: false,
);

final insulinStep = RPQuestionStep(
  identifier: "insulinStep",
  title: "What did you pay for insulin?",
  answerFormat: sliderAnswerFormat,
  optional: true,
);

// Using keys for translations
final singleChoiceQuestionStep = RPQuestionStep(
  identifier: "questionStep1ID",
  title: "singleChoiceQuestionStep-title",
  answerFormat: timeAnswerFormat,
);

final smokingQuestionStep = RPQuestionStep(
  identifier: "booleanQuestionStepID",
  title: "Do you smoke?",
  answerFormat: yesNoAnswerFormat,
);

final instrumentChoiceQuestionStep = RPQuestionStep(
    identifier: "instrumentChoiceQuestionStepID",
    title: "Which instrument are you playing?",
    answerFormat: instrumentsAnswerFormat,
    optional: true);

final happinessChoiceQuestionStep = RPQuestionStep(
    identifier: "happinessChoiceQuestionStepID",
    title: "What makes you happy?",
    answerFormat: joyfulActivitiesAnswerFormat);

final weightQuestionStep = RPQuestionStep(
    identifier: "weightQuestionStepID",
    title: "What is your weight?",
    answerFormat: weightIntegerAnswerFormat);

final bloodGlucoseStep = RPQuestionStep(
    identifier: "bloodGlucoseStep",
    title: "Please enter your Blood Glucose",
    answerFormat: bloodGlucoseDoubleAnswerFormat);

final minutesQuestionStep = RPQuestionStep(
    identifier: "minutesQuestionStepID",
    title: "How many minutes do you spend practicing a week?",
    answerFormat: minutesIntegerAnswerFormat,
    optional: true);

final imageChoiceQuestionStep = RPQuestionStep(
  identifier: "imageStepID",
  title: "Indicate you mood by selecting a picture!",
  answerFormat: imageChoiceAnswerFormat,
);

final textQuestionStep = RPQuestionStep(
  identifier: "textStepID",
  answerFormat: RPTextAnswerFormat(hintText: "Write here"),
  title: "Describe your morning routine",
);

final formStep = RPFormStep(
  identifier: "formstepID",
  title: "Questions about music",
  questions: [
    instrumentChoiceQuestionStep, // optional
    textQuestionStep,
    minutesQuestionStep, // optional
    alcoholStep
  ],
  autoSkip: false,
  saveResultsOnAutoSkip: true,
);

final completionStep = RPCompletionStep(
    identifier: "completionID",
    title: "Finished",
    text: "Thank you for filling out the survey!");

final instructionStep = RPInstructionStep(
    identifier: "instructionID",
    title: "Welcome!",
    detailText: "For the sake of science of course...",
    text:
        "Please fill out this questionnaire!\n\nIn this questionnaire the questions will come after each other in a given order. You still have the chance to skip a some of them though.");

final timerStep = RPTimerStep(
  identifier: 'RPTimerStepID',
  timeout: Duration(seconds: 5),
  title:
      "Please think for a moment about how your day was and note it down in the next step",
  playSound: true,
  autoSkip: false,
);

final linearSurveyTask = RPOrderedTask(
  identifier: "surveyTaskID",
  steps: [
    instructionStep,
    timerStep,
    formStep,
    // smokingQuestionStep,
    insulinStep,
    // wakeUpStep,
    foodStep,
    alcoholStep,
    bloodGlucoseStep,
    imageChoiceQuestionStep,
    // singleChoiceQuestionStep,
    // happinessChoiceQuestionStep,
    // weightQuestionStep,
    // additionalInfoQuestionStep,
    // completionStep
  ],
);