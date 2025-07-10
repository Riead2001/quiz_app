import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Track which screen to show
  String activeScreen = 'start-screen';

  // Switch to question screen
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Decide which screen widget to show
    Widget screenWidget;

    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    } else {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          alignment: Alignment.center,
          child: screenWidget,
        ),
      ),
    );
  }
}
