
import 'dart:math';

class BMIBrain {
  BMIBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String classifyBMI() {
    if (_bmi >= 30) {
      return ("Obesity");
    } else if (_bmi > 25) {
      return ("Overweight");
    } else if (_bmi > 18.5) {
      return ("Normal Weight");
    } else {
      return ("Underweight");
    }
  }
  
  String getAdvice(){

if (_bmi >= 30) {
      return ("You are heavily overweight.Your health is at risk if you do not loose your weight!");
    } else if (_bmi > 25) {
      return ("You are slightly overweight. You may be advised to lose some weight for health reasons.");
    } else if (_bmi > 18.5) {
      return ("You are at a healthy weight for your height.");
    } else {
      return ("You are underweight, you may need to put on some weight. ");
    }
  
 } 
}
