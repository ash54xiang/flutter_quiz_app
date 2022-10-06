import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key key}) : super(key: key);
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler, // named function
        child: Text(answerText),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
        ),
      ),
    );
  }
}
