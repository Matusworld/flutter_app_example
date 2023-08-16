import 'package:research_package/model.dart';

RPConsentSection overviewSection = RPConsentSection(
    type: RPConsentSectionType.Overview,
    title: "Overview",
    summary: "Overview Summary",
    content: "Overview Content");

RPConsentSection dataGatheringSection = RPConsentSection(
    type: RPConsentSectionType.DataGathering,
    title: "Data Gathering",
    summary: "Data Gathering Summary",
    content: "Data Gathering Content");

RPConsentSection privacySection = RPConsentSection(
    type: RPConsentSectionType.Privacy,
    title: "Privacy",
    summary: "Privacy Summary",
    content: "Privacy Content");

RPConsentSection dataUseSection = RPConsentSection(
    type: RPConsentSectionType.DataUse,
    title: "Data Use",
    summary: "Data Use Summary",
    content: "Data Use Content");

RPConsentSection timeCommitmentSection = RPConsentSection(
    type: RPConsentSectionType.TimeCommitment,
    summary: "This is a summary for Time Commitment.",
    content: 'This is a content for Time Commitment.');

RPConsentSection durationSection = RPConsentSection(
    type: RPConsentSectionType.Duration,
    summary: "This is a summary for Duration.",
    content: "This is a content for Duration.");

RPConsentSection studyTasksSection = RPConsentSection(
    title: "What should you do?",
    type: RPConsentSectionType.StudyTasks,
    summary: "This is a summary for Study Tasks.",
    content: "This is a content for Study Tasks.");

RPConsentSection studySurveySection = RPConsentSection(
    type: RPConsentSectionType.StudySurvey,
    summary: "This is a summary for Study Survey.",
    content: "This is a content for Study Survey.");

RPConsentSection withdrawingSection = RPConsentSection(
    type: RPConsentSectionType.Withdrawing,
    summary: "This is a summary for Withdrawing.",
    content: "Withdrawing dolor sit amet");

RPConsentSection yourRightsSection = RPConsentSection(
    type: RPConsentSectionType.YourRights,
    summary: "This is a summary for Your Rights.",
    content: "Your Rights dolor sit amet");

RPConsentSection welcomeSection = RPConsentSection(
    type: RPConsentSectionType.Welcome,
    summary: "This is a summary for Welcome.",
    content: "Welcome dolor sit amet");

RPConsentSection aboutUs = RPConsentSection(
    type: RPConsentSectionType.AboutUs,
    summary: "This is a summary for About Us.",
    content:
        "About Us dolor sit amet, consectetur adipiscing elit. Aenean a mi porttitor, bibendum elit elementum, placerat augue. Quisque eu sollicitudin tortor, sed egestas ante. Sed convallis, mauris quis malesuada convallis, lectus ante vestibulum ante, vel lobortis magna dui eu nisl. Proin ac pellentesque nulla. Morbi facilisis dui aliquam quam pulvinar efficitur. Duis at lorem vitae leo pharetra ultricies. Proin viverra eleifend varius. Nulla sed nisi ut enim placerat venenatis. Maecenas imperdiet accumsan ligula id varius. Donec rhoncus gravida odio vitae convallis.Nullam at tempor erat. Praesent euismod orci nec sollicitudin placerat. Nunc nec nibh efficitur, mattis ante sit amet, scelerisque libero. Aliquam et mollis erat. Pellentesque aliquam convallis turpis sit amet molestie. Duis accumsan venenatis imperdiet. Integer quis est non elit varius mattis. Donec hendrerit in nisl eget sollicitudin. Nulla sapien lacus, mattis non orci sed, commodo tincidunt risus.");

RPConsentSection goalsSection = RPConsentSection(
    type: RPConsentSectionType.Goals,
    summary: "This is a summary for Goals.",
    content: "Goals dolor sit amet");

RPConsentSection benefitsSection = RPConsentSection(
    type: RPConsentSectionType.Benefits,
    summary: "This is a summary for Benefits.",
    content: "Benefits dolor sit amet");

RPConsentSection dataHandlingSection = RPConsentSection(
    type: RPConsentSectionType.DataHandling,
    summary: "This is a summary for Data Handling.",
    content: "Data Handling dolor sit amet");

RPConsentSection locationSection = RPConsentSection(
    type: RPConsentSectionType.Location,
    summary: "This is a summary for Location.",
    content: "Location dolor sit amet");

RPConsentSection healthSection = RPConsentSection(
    type: RPConsentSectionType.Health,
    summary: "This is a summary for Health.",
    content: "Health dolor sit amet");

RPConsentSection userDataCollection = RPConsentSection(
    type: RPConsentSectionType.UserDataCollection,
    summary:
        "This is a summary for User Data Collection i.e. you will need to provide the information about the following categories.",
    dataTypes: [
      RPDataTypeSection(
          dataName: "Alcohol",
          dataInformation:
              "You will need to provide information about your alcohol consumption."),
      RPDataTypeSection(
          dataName: "Blood Pressure",
          dataInformation:
              "You will need to provide information about your blood pressure."),
      RPDataTypeSection(
          dataName: "Weight",
          dataInformation:
              "You will need to provide information about your weight."),
      RPDataTypeSection(
          dataName: "Medications",
          dataInformation:
              "You will need to provide information about your medications."),
    ]);

RPConsentSection passiveDataCollection = RPConsentSection(
  type: RPConsentSectionType.PassiveDataCollection,
  summary:
      "This is a summary for Passive Data Collection i.e. the following data will be collected automatically.",
  dataTypes: [
    RPDataTypeSection(
        dataName: "Location",
        dataInformation:
            "Your location will be collected automatically in the background."),
    RPDataTypeSection(dataName: "Weather", dataInformation: "Weather data"),
    RPDataTypeSection(
        dataName: "Health",
        dataInformation:
            "Your health data will be collected automatically in the background from your Phone as well from your smart watch. This includes your heart rate, steps, flights climbed, etc."),
  ],
);

RPConsentSection customSection = RPConsentSection(
  title: "Custom section",
  type: RPConsentSectionType.Custom,
  summary: "This is a summary for a Custom section.",
  content: "A Custom section dolor sit amet",
);

RPConsentSignature signature =
    RPConsentSignature(identifier: "consentSignatureID");

RPConsentDocument consentDocumentAllSections = RPConsentDocument(
  title: "Informed Consent",
  sections: [
    overviewSection,
    dataGatheringSection,
    privacySection,
    dataUseSection,
    timeCommitmentSection,
    durationSection,
    studyTasksSection,
    studySurveySection,
    withdrawingSection,
    yourRightsSection,
    welcomeSection,
    aboutUs,
    goalsSection,
    benefitsSection,
    dataHandlingSection,
    locationSection,
    healthSection,
    userDataCollection,
    passiveDataCollection,
    customSection,
  ],
)..addSignature(signature);

RPConsentReviewStep consentReviewStep = RPConsentReviewStep(
  identifier: "consentreviewstepID",
  title: 'Consent Review',
  consentDocument: consentDocumentAllSections,
  reasonForConsent: 'By tapping AGREE you can take part in the study',
  text: 'Agreed?',
);

RPVisualConsentStep consentVisualStep = RPVisualConsentStep(
    identifier: "visualStep", consentDocument: consentDocumentAllSections);

RPInstructionStep instructionStep = RPInstructionStep(
  identifier: "instructionID",
  title: "Welcome!",
  detailText:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ultricies feugiat turpis nec efficitur. Integer in pharetra libero. Proin a leo eu enim porttitor hendrerit. Suspendisse vestibulum interdum mollis. Donec in sapien ut orci ultricies laoreet. Ut maximus ante id arcu feugiat scelerisque. Proin non rutrum libero. Aliquam blandit arcu ac dolor consequat maximus. Integer et dolor quis quam tempor porta quis vel nibh. Phasellus ullamcorper fringilla lorem, ac tempus sem cursus a. Aliquam maximus facilisis quam. Morbi hendrerit tempor tellus, ac hendrerit augue tincidunt eu. Cras convallis lorem at nulla mattis tristique.",
  footnote: "(1) Important footnote",
  text: "informed_consent.welcome_text",
);

RPCompletionStep completionStep = RPCompletionStep(
  identifier: "completionID",
  title: "Thank you!",
  text: "We saved your consent.",
);

RPOrderedTask consentTask = RPOrderedTask(
  identifier: "consentTaskID",
  steps: [
    instructionStep,
    consentVisualStep,
    consentReviewStep,
    completionStep,
  ],
);
