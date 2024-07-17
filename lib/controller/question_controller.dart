import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/data/question_model.dart';
import 'package:project/routes/routes.dart';

// Controller class for managing quiz questions
class QuestionController extends GetxController {
  // User's name (currently not used)
   String name = '';
  var nameController = TextEditingController();

  // List of questions for the quiz
  final List<QuestionModel> _questionsList = [
    QuestionModel(
      id: 1,
      answer: 4,
      question: "What is my name?",
      options: ['Musa', 'Mubeey', 'Muhammad', 'Mubarak'],
    ),
    QuestionModel(
      id: 2,
      answer: 1,
      question: "Programming language used for Flutter?",
      options: ['Dart', 'Java', 'Python', 'HTML'],
    ),
    QuestionModel(
      id: 3,
      answer: 4,
      question: "What is my name again?",
      options: ['Musa', 'Mubeey', 'Muhammad', 'Mubarak'],
    ),
  ];

  // Getter for the list of questions
  List<QuestionModel> get questionList => [..._questionsList];

  // Boolean to check if a question has been answered
  bool _isPressed = false;
  bool get isPressed => _isPressed;

  // Number of questions in the quiz
  final double _numberOfQuestions = 1;
  double get numberOfQuestions => _numberOfQuestions;

  // Variables to store the selected and correct answers
  int? _selectedAnswer;
  int? get selectedAnswer => _selectedAnswer;

  int? _correctAnswer;
  int? get correctAnswer => _correctAnswer;

  // Count of correct answers given by the user
  int _countOfCorrectAnswer = 0;
  int get countOfCorrectAnswer => _countOfCorrectAnswer;

  // Map to check if a question is answered
  final Map<int, bool> _questionIsAnswered = {};

  // Timer for the quiz
  Timer? _timer;

  // Maximum seconds for the timer
  final maxsec = 10;

  // Observable integer for the countdown
  final RxInt sec = 10.obs;

  // Calculate the score result
  double get scoreResult {
    return _countOfCorrectAnswer * 100 / _questionsList.length;
  }

  // Method to check the selected answer
  void checkAnswer(QuestionModel questionModel, int selectedAnswer) {
    _isPressed = true;
    _selectedAnswer = selectedAnswer;
    _correctAnswer = questionModel.answer;

    // Increment count of correct answers if the selected answer is correct
    if (_correctAnswer == _selectedAnswer) {
      _countOfCorrectAnswer++;
    }

    stopTimer();

    // Mark the question as answered
    _questionIsAnswered.update(
      questionModel.id,
      (value) => true,
    );

    // Move to the next question after a delay
    Future.delayed(const Duration(milliseconds: 500)).then(
      (value) => nextQuestion(),
    );

    update();
  }

  // Check if a question has been answered
  bool checkIsQuestionAnswered(int questionId) {
    return _questionIsAnswered.entries
        .firstWhere(
          (element) => element.key == questionId,
        )
        .value;
  }

  // Start the timer for the quiz
  void startTimer() {
    resetTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (sec > 0) {
        sec.value--;
      } else {
        stopTimer();
        nextQuestion();
      }
    });
  }

  // Reset the timer to maximum seconds
  void resetTimer() => sec.value = maxsec;

  // Stop the timer
  void stopTimer() => _timer?.cancel();

  // Move to the next question (method implementation needed)
  void nextQuestion() {}

  // Restart the quiz
  void startAgain() {
    _correctAnswer = null;
    _countOfCorrectAnswer = 0;
    resetQuestion();
    _selectedAnswer = null;
    Get.offAllNamed(Routes.welcomeScreenRoute);
  }

  // Reset the question states
  void resetQuestion() {
    for (var element in _questionsList) {
      _questionIsAnswered.addAll({
        element.id: false,
      });
      update();
    }
  }
}
