import 'dart:html';

import 'package:flutter/material.dart';

import 'package:bmi_calculator_v2/vars.dart';

class ResultPage extends StatelessWidget {
  final double score;
  var type = '';
  var comment = '';
  var txtColor = Colors.green;
  ResultPage({Key? key, required this.score}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (score > 18.5) {
      type = 'Underweight';
      txtColor = Colors.cyan;
      comment = 'you need to eat a little more, buddy!';
    } else if (score <= 18.5 && score > 25) {
      type = 'Normal';
      txtColor = Colors.green;
      comment = 'You have a perfect body, good job!';
    } else if (score <= 25 && score > 30) {
      type = 'Overweight';
      txtColor = Colors.yellow;
      comment = 'you need to be careful, buddy!';
    } else if (score <= 30 && score > 35) {
      type = 'Obese';
      txtColor = Colors.orange;
      comment = 'you need to hit the gym more, buddy!';
    } else {
      type = 'Extremely Obese';
      txtColor = Colors.red;
      comment = 'you need to lighten up a bit, buddy!';
    }
    ;
    return Scaffold(
      backgroundColor: mycolorpalette,
      /* appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ), */
      bottomNavigationBar: TextButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(1, 100)),
            backgroundColor:
                MaterialStateProperty.all(mycolorpaletteAccent[100])),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          'RE-CALCULATE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                  child: Container(
                decoration: myBoxDecoration(300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('$type'),
                    Text('$score'),
                    Text('$comment'),
                  ],
                ),
              )),
            ],
          )),
    );
  }
}
