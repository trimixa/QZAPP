import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: selectHandler,
          child: Text(
            answerText,
            style: const TextStyle(
                color: Color.fromARGB(255, 168, 218, 220),
                fontFamily: 'Marcellus',
                fontSize: 20),
          )),
    );
  }
}
