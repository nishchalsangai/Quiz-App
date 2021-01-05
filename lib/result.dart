import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final Function resetQuiz;
  final int score;
  Result(this.resetQuiz,this.score);
  @override
  Widget build(BuildContext context) {
     return Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Container(
           width: double.infinity,
        child:Text("Thank You \n Your response is submitted\n Your score is $score / 20",
           textAlign: TextAlign.center,
         ),
         ),
         FlatButton(child: Text('Restart Quiz'),onPressed: resetQuiz,color: Colors.black26,),
       ],
    );
  }
}