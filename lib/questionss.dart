import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questions;
  Question(this.questions);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: double.infinity,
        child:  Text(questions,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
