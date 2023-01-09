import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resetHandler;
  const Result(this.resultscore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'end';
    if (resultscore == 3) {
      resultText = 'great you scored 3';
    } else if (resultscore == 2) {
      resultText = 'ok you scored 2';
    } else if (resultscore == 1) {
      resultText = 'ohh your score is only 1';
    } else {
      resultText = 'sorry you score nothing means 0';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 60, left: 60, right: 60),
            child: ElevatedButton(
              child: Text('Restart quiz!'),
              onPressed: resetHandler,
            ),
          ),
          Container(
            height: 70,
            width: 100,
            margin: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 78, 177, 227),
                border: Border.all(width: 3),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 50)
                ]),
            alignment: Alignment.center,
            child: const Text(
              'end',
              style: TextStyle(
                  fontFamily: 'ananda',
                  color: Colors.orange,
                  shadows: [
                    Shadow(
                        color: Colors.deepPurple,
                        offset: Offset(5, 5),
                        blurRadius: 20)
                  ],
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
