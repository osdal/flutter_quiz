import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 240, 6, 96),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
