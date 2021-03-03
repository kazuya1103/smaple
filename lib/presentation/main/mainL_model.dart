import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String kazuyaText = 'カズヤ';

  void changeKazuyaText(){
    kazuyaText = 'カズヤさんかっこいい';
    notifyListeners();
  }
}