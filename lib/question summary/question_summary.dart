import 'package:flutter/material.dart';
import 'package:quizz_app/question%20summary/summary_row.dart';

//class to display a  coulms of rows that contain Map of answer and questions
class QustionsSummary extends StatelessWidget {
  const QustionsSummary({required this.summary, super.key});
  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          //to convert the map summary to a group of row widgets
          children: summary.map((data) {
            return SummartRow(data: data);
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     CircleAvatar(
            //         radius: 12,
            //         backgroundColor:
            //             data["user_answer"] == data["correct_answer"]
            //                 ? Color.fromARGB(255, 22, 134, 226)
            //                 : Color.fromARGB(255, 245, 102, 92),
            //         child:
            //             Text(((data["question_index"] as int) + 1).toString())),
            //     SizedBox(width: 10),
            //     Expanded(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             data["question_text"] as String,
            //             style: TextStyle(color: Colors.white, fontSize: 17),
            //           ),
            //           const SizedBox(height: 5),
            //           Text(
            //             data["user_answer"] as String,
            //             style: TextStyle(
            //                 color: Color.fromARGB(255, 240, 166, 166),
            //                 fontSize: 13),
            //           ),
            //           Text(
            //             data["correct_answer"] as String,
            //             style: TextStyle(color: Colors.grey, fontSize: 13),
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // );
          }).toList(),
        ),
      ),
    );
  }
}
