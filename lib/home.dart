import 'package:flutter/material.dart';
import 'package:python_quiz/answer.dart';
import 'package:python_quiz/question.dart';
import 'package:python_quiz/quiz.dart';
import 'package:python_quiz/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }


  final  _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Tiger', 'score': 11},
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 9}
      ]
    },
    {
      'questionText': 'Who\'s your favourite Frind?',
      'answers': [
        {'text': 'arsalan', 'score': 1},
        {'text': 'Sajid', 'score': 1},
        {'text': 'wasif', 'score': 1},
        {'text': 'all of these', 'score': 5},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: _questionIndex <  _questions.length
          ? 
           Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
            )
          : Result(
            resultScore: _totalScore,
            resetHandler:_resetQuiz,)
    );
  }
}
