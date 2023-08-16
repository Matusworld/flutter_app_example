import 'package:flutter/material.dart';

import 'informed_consent_page.dart';
import 'linear_survey_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      title: 'Research Package Example',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Research Package Example',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              child: const Text(
                'Informed_consent',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                print("Informed_consent");
                Navigator.of(context).push(MaterialPageRoute<dynamic>(
                    builder: (context) => InformedConsentPage()));
              },
            ),
            const SizedBox(
              width: 16,
              height: 16,
            ),
            ElevatedButton(
              child: const Text(
                'Survey',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                print("Survey");
                Navigator.of(context).push(MaterialPageRoute<dynamic>(
                    builder: (context) => LinearSurveyPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
