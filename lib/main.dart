import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(Quiz_app());

class Quiz_app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Quiz_appState();
  }
}

class Quiz_appState extends State<Quiz_app> {
  var _quesIndex=0;
  int _totalscore=0;
  void _question(int score) {
    setState(() {
      _quesIndex = _quesIndex + 1;
    });

     _totalscore = _totalscore + score;
  }

  void _resetquiz()
  {
    setState(() {
     _quesIndex=0;
     _totalscore=0;
    });
  }
  final _questions= const[
    {'Question': 'What is the capital of INDIA',
    'Answer': [
      {'Text':'New Delhi','Score': 10},
      {'Text':'Chandigarh', 'Score': 0},
      {'Text':'Bhiwani', 'Score': 0}]
    },
    {'Question':'What is the capital of HARYANA',
    'Answer':[
      {'Text':'Chandigarh','Score': 10},
      {'Text':'Bhiwani','Score': 0},
      {'Text':'China','Score': 0},
      ]
    }
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Center(child: Text('MCQ APP',
         textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        ),
         backgroundColor: Colors.black26,
        ),
        body: _quesIndex < _questions.length ? quizimp(
          ques: _questions,
          quesIndex: _quesIndex,
          question: _question,
        ):Result(_resetquiz,_totalscore),
      ),
    );
  }
}
