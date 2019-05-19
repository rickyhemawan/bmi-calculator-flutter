import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretaion() {
    if (_bmi >= 25) {
      return 'Straight to the point! You are fat, its not body shaming, but I\'m being honest here';
    } else if (_bmi > 18.5) {
      return 'You\'re just a freakin normie, close this app and never come back';
    } else {
      return 'Are you trying to be Brook from One Piece? if you are, congrats on your achievement';
    }
  }
}
