import 'package:flutter/material.dart';
import 'package:flutterdev_2/Safe.dart';

int score = setScore();
int total = totalQuestion();

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safe',textAlign: TextAlign.center,),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0.0),
        child: Text('Your score is :  $score / $total',
          style: TextStyle(
            fontSize: 30.0

        ),),
      ),
    );
  }
}
