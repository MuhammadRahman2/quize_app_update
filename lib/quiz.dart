import 'package:flutter/material.dart';
import 'package:python_quiz/answer.dart';
import 'package:python_quiz/question.dart';

class Quiz extends StatelessWidget {
   List<Map<String,dynamic>> questions;
  int questionIndex;
  final Function answerQuestion;
   Quiz(
    {required this.questions,
     required this.questionIndex,
     required this.answerQuestion,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
