import 'package:flutter/material.dart';

class Answers extends StatelessWidget{
  final Function ansHandler;
  final String answer;
  Answers(this.answer,this.ansHandler);
  @override
  Widget build(BuildContext context) {
   return Container(
     width: double.infinity,
     margin: EdgeInsets.only(left: 40,right: 40),
     child:  RaisedButton(
       color: Colors.lightBlueAccent,
       child: Text(
           answer,
         style: TextStyle(
           color: Colors.white,
         ),
       ),
       onPressed: ansHandler,
     ),
   );
  }
}