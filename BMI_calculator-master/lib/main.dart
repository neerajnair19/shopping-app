import 'package:flutter/material.dart';
import 'package:bmi_calculator/Views/bmiPage.dart';
import 'package:bmi_calculator/Views/resultPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => BMIPage(),
        '/result': (context) => ResultPage(null),
      },
    );
  }
}


