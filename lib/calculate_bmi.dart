import 'dart:math';

class CalculateBmi {
  CalculateBmi({this.weight, this.height});
  final int height;
  final int weight;
  double _bmi;
  String dotheCalculation() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String ourBmiResultText() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String interpretation() {
    if (_bmi > 25) {
      return 'Your body weight is heiger than Normal, try and Excersice more';
    } else if (_bmi > 18) {
      return 'Your Body weight is normal, Weldone';
    } else {
      return 'You have a lower body weight, try and eat more';
    }
  }
}
