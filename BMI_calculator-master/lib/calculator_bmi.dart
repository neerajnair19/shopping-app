import 'dart:math';

class BMICalculator {
  int height;
  int weight;
  double _bmi;

  BMICalculator(this.height, this.weight){
    calculator();
  }

  String calculator(){
    _bmi = weight/ pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5){
      return 'NORMAL';
    }else{
      return 'UNDERWEIGHT';
    }
  }

  String getMessage(){
    if (_bmi >= 25){
      return 'You have a higher than normal body weigth. Try to excercise more.';
    } else if (_bmi > 18.5){
      return 'You have a normal body weigth. Good Job!';
    }else{
      return 'You have a lower than normal body weigth. You can eat a bit more.';
    }
  }
}