import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerChosen;
  final int counter;

  Quiz({
    @required this.questions,
    @required this.answerChosen,
    @required this.counter
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[counter]['questionText']),
        ...(questions[counter]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerChosen(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
