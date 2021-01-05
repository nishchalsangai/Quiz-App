import 'package:flutter/material.dart';
import './questionss.dart';
import './answers.dart';

class quizimp extends StatelessWidget {
  final Function question;
  final int quesIndex;
  final List<Map<String,Object>> ques;
  quizimp({
    @required this.ques,
    @required this.quesIndex,
    @required this.question
  });
  @override
  Widget build(BuildContext context) {
    return Center(
        //
        //children: <Widget>[
         child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Question(ques[quesIndex]['Question']),
                ...(ques[quesIndex]['Answer'] as List<Map<String,Object>>).map((answer){
                  return Answers(answer['Text'],() => question(answer['Score']));
                }),
              ],
            ),
           elevation: 50,
          ),
        );
  }
}
