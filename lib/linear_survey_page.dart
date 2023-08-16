import 'package:flutter/material.dart';
import 'package:research_package/research_package.dart';
import 'linear_survey_tasks.dart';
import 'dart:convert';

class LinearSurveyPage extends StatelessWidget {
  String _encode(Object object) =>
      const JsonEncoder.withIndent(' ').convert(object);

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  void resultCallback(RPTaskResult result) {
    // Do anything with the result
    // print(_encode(result));
    printWrapped(_encode(result));
  }

  void cancelCallBack(RPTaskResult result) {
    // Do anything with the result at the moment of the cancellation
    print("The result so far:\n" + _encode(result));
  }

  @override
  Widget build(BuildContext context) {
    return RPUITask(
      task: linearSurveyTask,
      onSubmit: resultCallback,
      onCancel: (RPTaskResult? result) {
        if (result == null) {
          print("No result");
        } else
          cancelCallBack(result);
      },
    );
  }
}