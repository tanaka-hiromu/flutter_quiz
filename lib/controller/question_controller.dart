import 'package:get/get.dart';
import 'package:flutter_quiz/models/question_model.dart';
import 'package:flutter_quiz/models/answer_model.dart';

class QuestionController extends GetxController{
  RxInt questionIndex = 0.obs;
  final List<QuestionModel> questions = [
    QuestionModel(
      questionText: 'What is your favorite color?',
      answers: [
        AnswerModel(text: 'Black', score: 10),
        AnswerModel(text: 'Red', score: 5),
        AnswerModel(text: 'Green', score: 3),
        AnswerModel(text: 'White', score: 1)
      ]
    ),
    QuestionModel(
      questionText: 'What is your favorite animal?',
      answers: [
        AnswerModel(text: 'Rabbit', score: 10),
        AnswerModel(text: 'Snake', score: 5),
        AnswerModel(text: 'Elephant', score: 3),
        AnswerModel(text: 'Lion', score: 1),
      ]
    ),
    QuestionModel(
      questionText: 'Who is your favorite instructor?',
      answers: [
        AnswerModel(text: 'Max', score: 10),
        AnswerModel(text: 'Mix', score: 5),
        AnswerModel(text: 'Mux', score: 3),
        AnswerModel(text: 'Mex', score: 1),
      ]
    ),
  ];
  RxBool isQuestionDone = false.obs;
  RxInt totalScore = 0.obs;

  QuestionModel getCurrentQuestion() {
    return questions[questionIndex.value];
  }
  void answerQuestion(int score) {
    totalScore += score;
    if(questionIndex < questions.length - 1){
      questionIndex++;
    }else{
      finishQuestion();
    }
  }
  void finishQuestion() {
    isQuestionDone(true);
  }
  void retry() {
    isQuestionDone(false);
    totalScore(0);
    questionIndex(0);
  }
}