// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'question.dart';
import 'quiz_brain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quizzler',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.grey[800],
        ),
        backgroundColor: Colors.grey[700],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [
    // if we didn't add widget inside the angle bracket, the list will be dynamic means it will be list of other datatypes too. so we need to mention a certain type of specific datatype.
  ];

  int rightAnswer = 0;
  int totalQuestion = 0;

  QuizBrain quizBrain = QuizBrain();

  void checkAnswer(userPicked) {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    setState(() {
      if (userPicked == correctAnswer) {
        rightAnswer++;
        quizBrain.nextQuestion();
        // scoreKeeper.add(
        //   Icon(
        //     Icons.check,
        //     color: Colors.green,
        //   ),
        // );
      } else {
        // scoreKeeper.add(
        //   Icon(
        //     Icons.close,
        //     color: Colors.red,
        //   ),
        // );
      }
      totalQuestion++;
      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                // the user choose true
                checkAnswer(true);
              },
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                checkAnswer(false);
              },
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '$rightAnswer/$totalQuestion',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
