import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> chosenAnswers;

  const ResultsScreen({super.key, required this.chosenAnswers});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "user_answer": chosenAnswers[i],
        "correct_answer": questions[i].answers[0],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();

    final int totalQuestions = questions.length;
    final int correctQuestions = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length; // Used "where" to filter data - "where" returns a new array

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answered $correctQuestions out of $totalQuestions answers correctly"),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            AnswerButton(
              answerText: "Restart Quiz",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
