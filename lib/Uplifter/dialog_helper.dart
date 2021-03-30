import 'package:flutter/material.dart';
import 'package:beehive_app/Uplifter/pomodoro_popup.dart';

class DialogHelper {
  static exit(context) => showDialog(context: context, builder: (context) => pomPopUpDialog());
}