class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;

  // Prvá odpoveď v zozname je vždy správna.
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
