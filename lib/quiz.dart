import 'package:flutter/material.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(navigateToQuestionsScreen);
  }

  void navigateToQuestionsScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 8, 73, 148),
            Color.fromARGB(255, 64, 196, 255)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: activeScreen,
        ),
      ),
    );
  }
}
