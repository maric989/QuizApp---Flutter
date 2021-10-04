import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;
  final int score;
  final Function resetQuiz;

  Result(this.text, this.score, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(onPressed: resetQuiz, child: Text('Restart quiz'))
      ],
    ));
  }
}
