import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key key}) : super(key: key);
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 50) {
      resultText = "You're awesome and innocent!";
    } else if (resultScore <= 70) {
      resultText = "Pretty likeable!";
    } else if (resultScore <= 85) {
      resultText = "You're great!";
    } else {
      resultText = "Too bad bruhh!";
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
            child: Text("Restart Quiz!"),
          )
        ],
      ),
    );
  }
}
