import 'package:flutter/material.dart';
import 'package:flutter_quiz/models/answer_model.dart';

class Answer extends StatelessWidget {
  Answer({required this.answer, required this.selectHandler});
  final void Function(int) selectHandler;
  final AnswerModel answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => selectHandler(answer.score),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          textStyle: const TextStyle(
            fontSize: 16,
          )
        ), 
        child: Text(answer.text)
      )
    );
  }
}