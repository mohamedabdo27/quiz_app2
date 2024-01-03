import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.swichScreen, {super.key});
  final void Function() swichScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
              color: const Color.fromARGB(151, 255, 255, 255),
            ),

            // Opacity(
            //   opacity: 0.6,
            //   child: Image.asset(
            //     "assets/images/quiz-logo.png",
            //     width: 300,
            //   ),
            // ),
            const SizedBox(height: 100),
            Text(
              "Learn Flutter the fun way",
              style: GoogleFonts.aboreto(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 231, 222, 222),
                    backgroundColor: const Color.fromARGB(255, 0, 141, 203)),
                onPressed: swichScreen,
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text("Start Quizz")),
          ],
        ),
      ),
    );
  }
}
