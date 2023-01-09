import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 80, right: 80, top: 80),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        textAlign: TextAlign.center,
      ),
    );
  }
}
