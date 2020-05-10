import 'package:flutter/material.dart';
import 'package:bmi_calculator/Theme/style.dart';
import 'package:bmi_calculator/Components/card.dart';
import 'package:bmi_calculator/calculator_bmi.dart';

class ResultPage extends StatelessWidget {

  BMICalculator bmiCalculator;

  ResultPage(this.bmiCalculator);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI index'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Expanded(
              flex: 5,
                child: ReusableCard(
                    Color(0xFF1D1E33),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          bmiCalculator.getResult(),
                          style: TextStyle(
                            color: Color(0xFF24D876),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          bmiCalculator.calculator(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          bmiCalculator.getMessage(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                )
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Container(
                  color: Color(0xFFEB1555),
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(bottom: 10),
                  height: 80,
                  child: Center(
                    child: Text(
                      'RE-CALCULATE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        ),
      );
  }
}