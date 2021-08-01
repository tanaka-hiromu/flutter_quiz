import 'package:flutter_quiz/models/answer_model.dart';

class QuestionModel {
  QuestionModel({required this.questionText, required this.answers});
  final String questionText;
  final List<AnswerModel> answers;
}