import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favorite color?',
        'answers': [
          'Black',
          'Red',
          'Green',
          'White'
        ]
      },
      {
        'questionText': 'What is your favorite animal?',
        'answers': [
          'Rabbit',
          'Snake',
          'Elephant',
          'Lion'
        ]
      },
      {
        'questionText': 'Who is your favorite instructor?',
        'answers': [
          'Max',
          'Max',
          'Max',
          'Max'
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText'] as String),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        )
      )
    );
  }
}
