import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:math';

class Dataprovider with ChangeNotifier{
  int _Hight = 159;
  int _Weight = 50;
  int _Age = 20;
  bool _Gender = true;

  static const _kminSliderHight = 120.0;
  static const _kmaxSliderHight = 200.0;

  get Hight => _Hight;
  get Weight => _Weight;
  get Age => _Age;
  get Gender => _Gender;
  get kminSliderHight => _kminSliderHight;
  get kmaxSliderHight => _kmaxSliderHight;


  void setHight (int value){
    _Hight = value;
    notifyListeners();
  }void setWeight (int value){
    _Weight = value;
    notifyListeners();
  }void setAge (int value){
    _Age = value;
    notifyListeners();
  }
  void setGender(bool value){
    //_pageNumber--;
    _Gender = value;
    notifyListeners();
  }
  double calculateBMI(){
    return (_Weight /pow((_Hight/100), 2));
  }

  String Intro() {
    double bmi = calculateBMI();
    if (bmi < 18.5) {
      return " underweight. ";
    } else if (bmi >= 18.5 && bmi < 25) {
      return " healthy range!";
    } else if (bmi >= 25 && bmi < 30) {
      return " overweight";
    } else if (bmi >= 30 && bmi < 35) {
      return "  obese range";
    } else {
      return " severely obese.";
    }
  }

  String getMessage(){
    double bmi = calculateBMI();
    if (bmi < 18.5) {
      return " underweight. You may want to consider talking to a healthcare professional about ways to improve your weight and overall health.";
    } else if (bmi >= 18.5 && bmi < 25) {
      return "Your BMI is between 18.5 and 24.9, which is considered within the healthy range. Keep up the good work on maintaining a healthy weight!";
    } else if (bmi >= 25 && bmi < 30) {
      return "Your BMI is between 25 and 29.9, which suggests that you may be overweight. Consider making some changes to your diet and exercise routine to improve your health.";
    } else if (bmi >= 30 && bmi < 35) {
      return "Your BMI is between 30 and 34.9, which suggests that you may be in the obese range. Talk to a healthcare professional about steps you can take to improve your weight and overall health.";
    } else {
      return "Your BMI is over 35, which suggests that you may be severely obese. It's important to talk to a healthcare professional about steps you can take to improve your weight and overall health.";
    }
  }


}