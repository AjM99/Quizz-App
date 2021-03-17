import 'package:flutter/material.dart';
import 'questions.dart';
import 'brain.dart';

Brain brain = Brain();

void main() => runApp(Quiz_App());

class Quiz_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[50],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> score = [];
  /*List<String> question = [
    "Anuj is a god tier programmer",
    "Life is sad",
    "U can change your fate",
    "Isekai is real",
    "One piece is best anime/Tv series of all time",
  ];

  List<bool> answers = [false, true, false, true, true];
  Question q1 = Question(q: "Anuj is a god tier programmer", a: false);*/

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                brain.questionBankAccess(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.green,
              elevation: 10,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAns = brain.questionBankAccess2();
                if (correctAns == true) {
                  print('right');
                } else {
                  print('wrong');
                }

                setState(() {
                  brain.nextQuestion();
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.red,
              elevation: 10,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAns = brain.questionBankAccess2();

                if (correctAns == false) {
                  print('righttt');
                } else {
                  print('wrong');
                }
                setState(() {
                  brain.nextQuestion();
                });
              },
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}
