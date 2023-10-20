import 'package:flutter/material.dart';

class QuestionAndResult extends StatelessWidget {
  final String question;
  final String userAnswer;
  final String correctAnswer;

  const QuestionAndResult({
    super.key,
    required this.question,
    required this.correctAnswer,
    required this.userAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(
            color: Color.fromARGB(255, 234, 219, 250),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          userAnswer,
          style: const TextStyle(
            color: Colors.amber,
            fontSize: 15,
          ),
        ),
        Text(
          correctAnswer,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
