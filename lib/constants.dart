import 'dart:ui';
import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color bgColor = hexToColor('#F8CD81');
  static Color appBarColor = hexToColor('#F8CD81');
  static Color buttonColor = hexToColor('#D17B47');
  static Color textColor = hexToColor('#003249');
  static Color titleColor = hexToColor('#14142A');
  static Color buttonTextColor = hexToColor('#F7F7FC');
  static Color whiteBgImage = hexToColor('#FCFCFC');
  static Color labelColor = hexToColor('#6E7191');
}

// const kLabel = Color(0x6E7191);
// const kAppBarColor = Color(0xF8CD81);
// const kButtonColor = Color(0xD17B47);
// const kTextColor = Color(0x003249);
// const kTitleColor = Color(0x14142A);
// const kBGColor = Color(0xF8CD81);