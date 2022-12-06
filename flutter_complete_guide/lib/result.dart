import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;

  Result({required this.resultScore, required this.reset});

  String get resultPhrase {
    String resultText = 'You did it';
    if (resultScore < 7) {
      resultText = 'You are .....strange?!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are awesome and innocent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        )),
        TextButton(
            onPressed: reset,
            child: Text(
              'Reset Text',
              style: TextStyle(color: Colors.blue),
            ))
      ],
    );
  }
}
