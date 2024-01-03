import 'package:flutter/material.dart';
import 'package:quizz_app/question%20summary/question_number.dart';

class SummartRow extends StatelessWidget {
  const SummartRow({super.key, required this.data});
  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    final questionNum = data["question_index"] as int;
    final isCorrect = (data["user_answer"] == data["correct_answer"]);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          QuestionNumber(questionNum: questionNum, isCorrect: isCorrect),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["question_text"] as String,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
                const SizedBox(height: 5),
                Text(
                  data["user_answer"] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 240, 166, 166), fontSize: 13),
                ),
                Text(
                  data["correct_answer"] as String,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
