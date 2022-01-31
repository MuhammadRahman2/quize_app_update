import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHendler;
  final String answerText;
  const Answer(this.selectHendler,this.answerText ,{ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue),
      ) ,
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHendler,
        child: Text(answerText) ,),
    );
  }
}