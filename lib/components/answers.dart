import 'package:flutter/material.dart';
import 'package:flutter_quiz/components/answer.dart';
import 'package:flutter_quiz/models/answer_model.dart';

class Answers extends StatelessWidget {
  Answers({required this.answers, required this.selectHandler});
  final List<AnswerModel> answers;
  final void Function(int) selectHandler;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(var answer in answers)
        Answer(answer: answer, selectHandler: selectHandler,)
      ]
    );
  }
}