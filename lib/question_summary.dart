import 'package:flutter/material.dart';
import 'package:quiz_app/question_and_result.dart';
import 'package:quiz_app/question_number_icon.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Row(
                  children: [
                    QuestionNumberIcon(
                        ((data["question_index"] as int) + 1).toString(),
                        data["user_answer"] == data["correct_answer"]
                            ? Colors.amber
                            : Colors.blue),

                    // Used Expanded widget to expand the size according to the
                    // content to overcome space issue
                    Expanded(
                      child: QuestionAndResult(
                        question: data["question"] as String,
                        correctAnswer: data["correct_answer"].toString(),
                        userAnswer: data["user_answer"].toString(),
                      ),
                    )
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
