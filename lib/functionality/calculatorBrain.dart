import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi=0;

  String calculateBMI() {
    print('$height $weight');
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterception() {
    if (_bmi > 25)
      return 'Exercise Daily';
    else if (_bmi > 18.5)
      return 'Your Health is good';
    else
      return 'You should Consider eating more nutricious food';
  }
}