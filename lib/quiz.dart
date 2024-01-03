import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:quizz_app/result_screen.dart';

import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //create a list to save the answers
  List<String> selectedAnswers = [];
  // function to get the answers from question screen
  void chooseAnswer(answer) {
    selectedAnswers.add(answer);
    //to check the last of questions ,and go to result screen
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result_screen";
      });
    }
  }
  //------------------------

  // to change the screen
  var activeScreen = "start_screen";
  void swichScreen() {
    setState(() {
      activeScreen = "question_screen";
    });
  }

//-----------------------
  void onPressed() {
    setState(() {
      activeScreen = "question_screen";
      selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(swichScreen);
    if (activeScreen == "question_screen") {
      screenWidget = QuestionScreen(chooseAnswer: chooseAnswer);
    }
    if (activeScreen == "result_screen") {
      screenWidget = ResultScreen(
        selectedAnswers: selectedAnswers,
        onPressed: onPressed,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black, Colors.lightBlue])),
            child: screenWidget),
      ),
    );
    ;
  }
}
