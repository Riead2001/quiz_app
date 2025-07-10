class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // Make a copy
    shuffledList.shuffle(); // Shuffle in-place
    return shuffledList;
  }
}
