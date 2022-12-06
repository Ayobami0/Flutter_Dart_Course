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

  void _answerQuestion(){
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
    }

  final _questions = [
    {
      'question': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'question': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'question': 'Who\'s your favourite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max']
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
        Result()
      ),
    );
  }
}
