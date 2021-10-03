import 'dart:math';

class BmiBrain {
  final int height;
  final int weight;

  double _bmi;

  BmiBrain(this.height, this.weight);

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getDescription() {
    if (_bmi >= 25.0) {
      return 'You have higher than normal body weight.\n Try to exercise more..';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight.\n good job.';
    } else {
      return 'You have lower than normal body weight.\n You can eat a bit more..';
    }
  }
}
