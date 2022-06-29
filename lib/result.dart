import 'package:bmi_calculator_v2/vars.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolorpalette,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      bottomNavigationBar: TextButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(1, 100)),
            backgroundColor:
                MaterialStateProperty.all(mycolorpaletteAccent[100])),
        onPressed: () {},
        child: Text('RE-CALCULATE', style: txtStyle2),
      ),
      body: Padding(padding: const EdgeInsets.all(5.0), child: Container()),
    );
  }
}
