import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_quiz/controller/question_controller.dart';

class Result extends StatelessWidget {
  Result({required this.totalScore});
  final int totalScore;
  final QuestionController questionController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('your score $totalScore'),
        ElevatedButton(
          child: Text('Retry'),
          onPressed: questionController.retry,
        )
      ],
    );
  }
}