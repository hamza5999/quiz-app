class QuizQuestion {
  final String text;
  final List<String> answers;

  const QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswers() {
    final List<String> shuffledAnswers =
        List.of(answers); // List.of copies a List
    shuffledAnswers.shuffle();

    return shuffledAnswers;
  }
}
