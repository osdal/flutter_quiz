import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 50,
        right: 50,
      ),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 127, 109, 50),
        ),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(
            color: Color.fromARGB(255, 236, 226, 230),
          ),
        ),
      ),
    );
  }
}
