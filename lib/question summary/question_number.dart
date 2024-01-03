import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber(
      {required this.questionNum, required this.isCorrect, super.key});
  final int questionNum;
  final bool isCorrect;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: isCorrect
          ? const Color.fromARGB(255, 22, 134, 226)
          : const Color.fromARGB(255, 245, 102, 92),
      child: Text(
        (questionNum + 1).toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
