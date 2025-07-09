import 'package:flutter/material.dart';
//import 'package:quiz/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            height: 400,
          ),
          const SizedBox(height: 50),
          const Text(
            'Learn Flutter the Fun Way!!',
            style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252),
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz, // ✅ Fixed here
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
