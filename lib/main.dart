import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './page/top.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Top();
  }
}

// class _MyAppState extends State<MyApp> {
//   int _questionIndex = 0;

//   void _answerQuestion(){
//     setState(() {
//       _questionIndex++;
//     });
//     print(_questionIndex);
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Question(questions[_questionIndex]['questionText'] as String),
//             Answer(_answerQuestion),
//             Answer(_answerQuestion),
//             Answer(_answerQuestion),
//           ],
//         )
//       )
//     );
//   }
// }
