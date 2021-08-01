import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question(this.questionText);
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        questionText, 
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}