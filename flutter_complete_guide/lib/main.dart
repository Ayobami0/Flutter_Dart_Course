import "package:flutter/material.dart";

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score){
    _totalScore += score;
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
    }

  void _resetQuiz(){
      setState(() {
              _totalScore = 0;
              _questionIndex = 0;
            });
    }

  final _questions = [
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 10}]
    },
    {
      'question': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Snake', 'score': 1},
        {'text': 'Lion', 'score': 3},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Rabbit', 'score': 10}]
    },
    {
      'question': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ? 
        Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions
        ):
        Result(resultScore: _totalScore, reset: _resetQuiz)
      ),
    );
  }
}
