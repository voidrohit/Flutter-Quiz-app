import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhase,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      TextButton(
        child: Text('Restart Quiz!',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
        onPressed: resetHandler,
      ),
    ]));
  }
}
