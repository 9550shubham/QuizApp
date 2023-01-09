import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int queindx;
  final Function anspressed;
  const Quiz(this.anspressed, this.questions, this.queindx);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questions(
        questions[queindx]['que']?.toString() ?? '',
      ),
      ...(questions[queindx]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
          () => anspressed(answer['score']),
          answer['text']?.toString() ?? '',
        );
      })
    ]);
  }
}
