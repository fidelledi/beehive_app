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
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10, bottom: 20),
          child: Align(
            alignment: Alignment(-0.58, 0.90), 
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
            ),
            Padding(padding: EdgeInsets.only(top: 1, bottom: 20),
          child: Align(
            alignment: Alignment.center, 
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
            ),
            ListView(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 15),
                children: <Widget>[
                  Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 27),
                  height:  268, width: 347,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                  ),
                    child:
                      InkWell(
                              child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "Improve Focus",
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    color: Color(hexColor('#E0E0E0')),
                                    fontSize: 24,
                                    letterSpacing: 1.8,
                                  ),
                                  ),
                                  ],
                                  ),],
                ),),
                  ), ],
            ),
        ],),);
            }
            }