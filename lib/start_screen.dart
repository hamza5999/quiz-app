import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Making image transparent

          // Approach 1 - Use this as much as possible
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(180, 255, 255, 255),
          ),
          // Approach 2 - Avoid this as much as possible (power intensive)
          // Opacity(
          //   opacity: 0.8,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          const StyledText("Learn Flutter the fun way!"),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
