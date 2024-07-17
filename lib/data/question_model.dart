class QuestionModel {
  final int id, answer;
  final String question;
  final List<String> options;

  QuestionModel(
      {required this.id,
      required this.answer,
      required this.question,
      required this.options});
}
