import 'package:flutter/material.dart';

class SwitchProvider  extends ChangeNotifier{
  bool _ison=false;

  bool get ison=>_ison;

  void switchbutton(){
    _ison=!_ison;
    notifyListeners();

  }
}