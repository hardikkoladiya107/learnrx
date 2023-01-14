import 'package:flutter/material.dart';
import 'package:learnrx/subject/publish_subject/publish_subject_screen.dart';
import 'package:learnrx/subject/replay_subject/replay_subject_screen.dart';


import 'subject/subject_behavior/demo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      //home: const DemoScreen(),
     // home: const PublishSubjectScreen(),
      home: const ReplaySubjectScreen(),
    );
  }
}
