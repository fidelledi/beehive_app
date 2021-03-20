import 'package:flutter/material.dart';

class breathingExercisePage extends StatefulWidget {

  @override
  _breathingExercisePage createState() => _breathingExercisePage();
}

  hexColor (String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

class _breathingExercisePage extends State<breathingExercisePage> {
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(hexColor('#828282')),
      appBar: AppBar(
        title: Text(' '),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
              children: <Widget>[
                Container(
              child:
            Padding(padding: const EdgeInsets.only(top: 10, bottom: 20, left: 20),
            child: Align(
              alignment: Alignment.topLeft, 
              child: Text(
                "Take a deep breath",
                style: TextStyle(
                  fontFamily: 'SF-Pro-Semibold',
                  color: Color(hexColor('#F2F2F2')),
                  fontSize:24,
                  letterSpacing: 1.2,
                ),
              ),
              ),
              ),),
              Align(
                  alignment: Alignment.topCenter, 
                  
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim veniam, quis\nnostrud exercitation ullamco laboris nisi ut aliquip ex\nea commodo consequat. Duis aute irure dolor in\nreprehenderit involuptate velit esse cillum dolore eu\nfugiat nulla pariatur.",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Thin',
                      color: Color(hexColor('#F2F2F2')),
                      fontSize:14,
                      letterSpacing: 1.2,
                    ),
                  ),
                  ),
              Center(
                child: Container(
                  height:  146, width: 347,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),

                  ),
              ),
              ],),
      );
            }
            }