import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.chooseAnswer, super.key});
  final void Function(String onSelectedanswer) chooseAnswer;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  void changeQuestion(String onSelectAnswer) {
    setState(() {
      widget.chooseAnswer(onSelectAnswer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getSuffledList().map((answer) {
                return AnswerButton(
                  answer: answer,
                  onPressed: () {
                    changeQuestion(answer);
                  },
                );
              }),
            ]),
      ),
    );
  }
}
