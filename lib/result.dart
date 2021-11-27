import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result({required this.totalScore, required this.resetQuiz});

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = "You're awesome and innocent";
    } else if (totalScore <= 12) {
      resultText = "Pettry likeable";
    } else if (totalScore <= 16) {
      resultText = "You're .... strangle??!";
    } else {
      resultText = "You're so bad";
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
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetQuiz,
              textColor: Colors.blue,
              child: Text("Restar Quiz!"))
        ],
      ),
    );
  }
}
