import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomWork_popUp.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/Uplifter/pomodoro_popup.dart';

class DialogHelper2 {
  static exit(context) => showDialog(context: context, builder: (context) => pomWPopUpDialog());
}