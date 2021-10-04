import 'package:flutter/material.dart';

import 'result.dart';
import 'quiz.dart';

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
  var _counter = 0;
  var _totalScore = 0;

  var questions = [
    {
      'questionText': 'What\s your favorite color?',
      'answers': [{'text': 'Black', 'score': 10}, {'text': 'Red', 'score': 12}, {'text': 'Green', 'score': 8}, {'text': 'Yellow', 'score': 2}]
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answers': [{'text': 'Tiger', 'score': 10}, {'text': 'Cat', 'score': 12}, {'text': 'Dog', 'score': 8}, {'text': 'Horse', 'score': 2}]
    },
    {
      'questionText': 'What\s your favorite car?',
      'answers': [{'text': 'Opel', 'score': 10}, {'text': 'Toyota', 'score': 12}, {'text': 'BMW', 'score': 8}, {'text': 'Audi', 'score': 2}]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _counter = 0;
    });
  }

  void _answerChosen(int score) {

    _totalScore += score;

    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('my first title'),
          ),
          body: _counter < questions.length ? Quiz(questions: questions, answerChosen:  _answerChosen, counter: _counter)
              : Result('You did it',  _totalScore, _resetQuiz)
      ),
    );
  }
}
