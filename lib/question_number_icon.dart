import 'package:flutter/material.dart';

class QuestionNumberIcon extends StatelessWidget {
  final String questionNumber;
  final Color circleColor;

  const QuestionNumberIcon(this.questionNumber, this.circleColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: const EdgeInsets.only(
        bottom: 55,
        right: 10,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: circleColor,
      ),
      child: Center(
        child: Text(
          questionNumber,
          style: const TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 103, 5, 121),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
