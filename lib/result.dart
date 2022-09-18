import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(
    this.resultScore,
    this.resetQuiz,
  );

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awesome and Innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are... Strange!?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
                fontFamily: 'Teko',
                fontSize: 30,
                color: Color.fromARGB(255, 251, 134, 0)),
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('Restart'),
          )
        ],
      ),
    );
  }
}
