import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Dataprovider with ChangeNotifier{
  int _Hight = 159;
  int _Weight = 50;
  int _Age = 20;

  get Hight => _Hight;
  get Weight => _Weight;
  get Age => _Age;

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
}