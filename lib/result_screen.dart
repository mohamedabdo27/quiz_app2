import 'package:flutter/material.dart';
import 'package:quizz_app/question%20summary/question_summary.dart';
import 'package:quizz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.selectedAnswers, super.key, required this.onPressed});
  final List<String> selectedAnswers;
  final Function() onPressed;
  List<Map<String, Object>> getSummary() {
    //-----------------------------------------
    //list of map to set the questions and answers
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question_text": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": selectedAnswers[i]
      });
    }
    return summary;
  }

  //----------------------------------------
  @override
  Widget build(BuildContext context) {
    final numQuestion = questions.length;
    final summaryList = getSummary();
    //list of number of correct answers that choosed
    final numCorrectAnswers = summaryList.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "You answered $numCorrectAnswers out of $numQuestion questions correctly!",
              style: TextStyle(
                  color: Color.fromARGB(255, 243, 234, 234), fontSize: 20),
            ),
            const SizedBox(height: 30),
            //column contain alist of rows
            QustionsSummary(summary: summaryList),
            const SizedBox(height: 30),
            TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 157, 142, 238),
                    foregroundColor: Colors.white),
                icon: Icon(Icons.restart_alt_outlined),
                onPressed: onPressed,
                label: Text("Restart Quiz")),
          ],
        ),
      ),
    );
  }
}
