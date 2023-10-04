import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
          ),
          const SizedBox(height: 80),
          const StyledText("Learn Flutter the fun way!"),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
