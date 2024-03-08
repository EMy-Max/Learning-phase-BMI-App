import 'dart:math';

class CalculatorBrain {
  CalculatorBrain ({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI(){
     _bmi = weight / pow(height/100 , 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResults(){
    if (_bmi >= 25){
      return 'Overweight';
    }else if (_bmi>=18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return 'Your body weight is higher than normal, improve your diet and lifestyle.';
    }else if (_bmi>=18.5){
      return 'You have a normal body weigh. Keep it up!';
    } else {
      return 'Your body weight is lower than normal, you can eat a bit more.';
    }
  }
}