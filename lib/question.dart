import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(50),
        width: double.infinity,
        child: Text(
          questionText,
          style: const TextStyle(
              fontSize: 20,
              fontFamily: 'DoHyeon',
              color: Color.fromARGB(255, 69, 123, 157)),
          textAlign: TextAlign.center,
        ));
  }
}
