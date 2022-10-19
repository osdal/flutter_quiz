import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Ты великолепен и невинен!';
    } else if (resultScore <= 15) {
      resultText = 'Ты симпатичный :)';
    } else if (resultScore <= 20) {
      resultText = 'Ты ... странный?!';
    } else {
      resultText = 'Ты похоже негодяй!';
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
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text('Перезапустить тест',
              style: TextStyle(
                color: Colors.redAccent,
              )),
        ),
      ],
    ));
  }
}
