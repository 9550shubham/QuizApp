import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: const ButtonStyle(
            elevation: MaterialStatePropertyAll(10),
            backgroundColor: MaterialStatePropertyAll(Colors.green),
            foregroundColor:
                MaterialStatePropertyAll(Color.fromARGB(156, 11, 46, 204))),
        child: Text(answerText),
      ),
    );
  }
}
