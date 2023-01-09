import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(Myapp());
// }
void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  final _questions = const [
    {
      'que': 'Q1 capital of india',
      'answer': [
        {'text': 'new delhi', 'score': 1},
        {'text': 'mumbai', 'score': 0},
        {'text': 'goa', 'score': 0},
        {'text': 'up', 'score': 0}
      ]
    },
    {
      'que': 'Q2 Gandhi jayanti',
      'answer': [
        {'text': '26 jan', 'score': 0},
        {'text': '2 oct', 'score': 1}
      ]
    },
    {
      'que': 'Q3 independence day',
      'answer': [
        {'text': '26 jan', 'score': 0},
        {'text': '16 aug', 'score': 0},
        {'text': '15 aug', 'score': 1}
      ]
    },
  ];

  var _queindx = 0;
  var totalscore = 0;
  void _reset() {
    setState(() {
      _queindx = 0;
      totalscore = 0;
    });
  }

  void _anspressed(int score) {
    totalscore += score;
    setState(() {
      _queindx += 1;
    });
    print(_queindx);
    if (_queindx < _questions.length) {
      print('more que');
    } else {
      print('no more que');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Quiz App'),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          body: _queindx < _questions.length
              ? Quiz(_anspressed, _questions, _queindx)
              : Result(totalscore, _reset)),
    );
  }
}
