import 'package:flutter/material.dart';
// import 'package:beehive_app/Uplifter/uplifter_main.dart';
import 'package:beehive_app/Uplifter/motiv_body.dart';

class motivationalMain extends StatefulWidget {
  @override
  _motivationalMain createState() => _motivationalMain();
}

  hexColor (String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

class _motivationalMain extends State<motivationalMain> {
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(hexColor('#D17B47')),
      appBar: AppBar(
        title: Text(' '),
        leading: new IconButton(
          icon: Image.asset('assets/icons/back_icon.png', color: Color(hexColor('#FFFFFF'),),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: motivBody(),
    );
  }
}