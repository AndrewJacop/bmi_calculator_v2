// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator_v2/result.dart';
import 'package:bmi_calculator_v2/vars.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: mycolorpalette,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height = 150;
  double _age = 20;
  double _weight = 75;
  double _score = 18.5;
  bool isMale = true;
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
        onPressed: () {
          _score = _weight * 10000 / (_height * _height);
          print(_score);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResultPage(score: _score)),
          );
        },
        child: Text(
          'CALCULATE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: GestureDetector(
                        onTap: (() {
                          setState(() {
                            isMale = true;
                          });
                        }),
                        child: Container(
                          decoration: myBoxDecoration(isMale ? 300 : 400),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male, size: 100, color: Colors.white),
                              Text('MALE', style: txtStyle1),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: GestureDetector(
                        onTap: (() {
                          setState(() {
                            isMale = false;
                          });
                        }),
                        child: Container(
                          decoration: myBoxDecoration(isMale ? 400 : 300),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,
                                  size: 100, color: Colors.white),
                              Text('FEMALE', style: txtStyle1),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: myBoxDecoration(400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT', style: txtStyle1),
                      SizedBox(height: 5),
                      Row(
                        textBaseline: TextBaseline.ideographic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text('$_height', style: txtStyle2),
                          Text(' cm', style: txtStyle1)
                        ],
                      ),
                      Slider(
                        value: _height,
                        divisions: 150,
                        min: 100,
                        max: 250,
                        activeColor: mycolorpalette[200],
                        inactiveColor: mycolorpalette[300],
                        onChanged: (double value) {
                          setState(() {
                            _height = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      decoration: myBoxDecoration(400),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT', style: txtStyle1),
                          SizedBox(height: 5),
                          Row(
                            textBaseline: TextBaseline.ideographic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text('$_weight', style: txtStyle2),
                              Text(' kg', style: txtStyle1)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      _weight++;
                                    });
                                  },
                                  foregroundColor: Colors.white,
                                  backgroundColor: mycolorpalette[200],
                                  child: Icon(Icons.add, size: 40),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      _weight--;
                                    });
                                  },
                                  foregroundColor: Colors.white,
                                  backgroundColor: mycolorpalette[200],
                                  child: Icon(Icons.remove, size: 40),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      decoration: myBoxDecoration(400),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE', style: txtStyle1),
                          SizedBox(height: 5),
                          Row(
                            textBaseline: TextBaseline.ideographic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text('$_age', style: txtStyle2),
                              Text(' years', style: txtStyle1)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      _age++;
                                    });
                                  },
                                  foregroundColor: Colors.white,
                                  backgroundColor: mycolorpalette[200],
                                  child: Icon(Icons.add, size: 40),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      _age--;
                                    });
                                  },
                                  foregroundColor: Colors.white,
                                  backgroundColor: mycolorpalette[200],
                                  child: Icon(Icons.remove, size: 40),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
