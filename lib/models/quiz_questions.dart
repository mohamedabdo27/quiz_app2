class QuizQuestion {
  QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getSuffledList() {
    /*create acopy of the list */ final shuffledList = List.of(answers);

    /* create a shuffled list*/ shuffledList.shuffle();

    /* return the shuffled list*/ return shuffledList;
  }
}
