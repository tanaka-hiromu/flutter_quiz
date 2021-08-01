import 'package:flutter/material.dart';
import 'package:flutter_quiz/components/question.dart';
import 'package:flutter_quiz/components/answers.dart';
import 'package:flutter_quiz/models/question_model.dart';

class Quiz extends StatelessWidget {
  Quiz({
    required this.question, 
    required this.selectHandler
  });
  final void Function(int) selectHandler;
  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Question(
              question.questionText
            ),
            const SizedBox(
              height: 30,
            ),
            Answers(
              answers: question.answers, 
              selectHandler: selectHandler
            )
          ],
        ),
      );
  }
}