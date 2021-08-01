import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_quiz/controller/question_controller.dart';
import 'package:flutter_quiz/page/quiz.dart';
import 'package:flutter_quiz/page/result.dart';

class Top extends StatelessWidget {
  final QuestionController _questionController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('quiz')
      ),
      body: Obx(() =>
        _questionController.isQuestionDone.value
        ? Result(totalScore: _questionController.totalScore.value)
        : Quiz(
          question: _questionController.getCurrentQuestion(), 
          selectHandler: _questionController.answerQuestion
        )
      )
    );
  }
}