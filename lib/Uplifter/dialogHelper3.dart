import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomWork_popUp.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/popBreak_popUp.dart';
import 'package:flutter/material.dart';

class DialogHelper3 {
  static exit(context) => showDialog(context: context, builder: (context) => pomBPopUpDialog());
}