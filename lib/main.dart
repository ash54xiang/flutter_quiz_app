import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionId = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "what's your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 20},
        {"text": "White", "score": 40},
        {"text": "Green", "score": 50},
      ],
    },
    {
      "questionText": "what's your favourite animal?",
      "answers": [
        {"text": "Cat", "score": 10},
        {"text": "Rabbit", "score": 20},
        {"text": "Tiger", "score": 30},
        {"text": "Bear", "score": 25},
      ],
    },
    {
      "questionText": "who's your favourite instructor?",
      "answers": [
        {"text": "Bob", "score": 20},
        {"text": "Max", "score": 50},
        {"text": "John", "score": 25},
        {"text": "James", "score": 35},
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionId += 1;
    });
    print("Question ID: ${_questionId}");

    if (_questionId < _questions.length) {
      print("we have more questions");
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionId = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionId < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionId: _questionId,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
