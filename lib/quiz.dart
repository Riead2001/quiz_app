
import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

import 'package:quiz/questionScreen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
     return _QuizState();
  }
}

class _QuizState extends State<Quiz>{

  Widget? activeScreen ;

  @override
  void initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState() ;
  }

  void switchScreen(){
    setState((){
        activeScreen = const QuestionsScreen();


    });
  }



  @override
  Widget build(context){
    return MaterialApp(
  home: Scaffold(
    body: Container(
      decoration : BoxDecoration(
           gradient: LinearGradient(colors: 
           [
             Color.fromARGB(255,78,13,151),
             Color.fromARGB(255,107,15,168),

           ],
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
           
           ),

      ),
                    // adds background color
      alignment: Alignment.center,       // centers the child
      child: activeScreen == 'start-screen'
              ?StartScreen(switchScreen):const QuestionsScreen(),
    ),
  ),
);
  }
}
