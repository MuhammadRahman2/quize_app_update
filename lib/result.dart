import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;
  final VoidCallback resetHandler;
  Result({required this.resultScore,required this.resetHandler, Key? key}) : super(key: key);
  // Final
  String get resultPhare {
    String resultText;
    if (resultScore >= 8 && resultScore < 12) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore >= 12 && resultScore < 16) {
      resultText = 'Pretty likeable!';
    } else if (resultScore >= 16) {
      resultText = 'Your are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 50,),
          Text(resultPhare,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              )),
          ElevatedButton(
            onPressed: resetHandler,
             child: const Text("Reset Quiz") )
        ],
      ),
    );
  }
}
