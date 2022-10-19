import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Ваш любимый цвет',
      'answers': [
        {'text': 'Черный', 'score': 10},
        {'text': 'Красный', 'score': 5},
        {'text': 'Зеленый', 'score': 3},
        {'text': 'Белый', 'score': 1}
      ],
    },
    {
      'questionText': 'Ваше любимое животное',
      'answers': [
        {'text': 'Кролик', 'score': 10},
        {'text': 'Змея', 'score': 5},
        {'text': 'Слон', 'score': 3},
        {'text': 'Лев', 'score': 1}
      ],
    },
    {
      'questionText': 'Ваше любимый преподаватель',
      'answers': [
        {'text': 'Макс', 'score': 1},
        {'text': 'Виктор', 'score': 3},
        {'text': 'Елена', 'score': 5},
        {'text': 'Дмитрий', 'score': 10}
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
