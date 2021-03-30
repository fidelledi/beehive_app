import 'package:beehive_app/constants.dart';
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
      backgroundColor: ColorConstants.appBarColor,
      appBar: AppBar(
        title: Text(' '),
        leading: new IconButton(
          icon: Image.asset('assets/icons/back_icon.png', color: Color(hexColor('#14142A'),),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Container(
                    child:
                  Padding(padding: const EdgeInsets.only(top: 10, bottom: 20, left: 20),
                  child: Align(
                    alignment: Alignment.topLeft, 
                    child: Text(
            "Take a deep breath",
            style: TextStyle(
              fontFamily: 'SF-Pro-Semibold',
              color: Color(hexColor('#14142A')),
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
                  color: Color(hexColor('#6E7191'),),
                  fontSize:14,
                  letterSpacing: 1.2,
                ),
              ),
              ),
                    Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 20),
              child: Container(
                height:  146, width: 347,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 24,
                      offset: Offset(0, 24), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
              children: <Widget>[
                  Positioned(
                    bottom: 45,
                    right: 172,
                    child: Text(
                    "Improve Focus",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: Color(hexColor('#003249'),),
                      fontSize: 20,
                      letterSpacing: 1.2,
                    ),
              ),
                  ),
              Positioned(
                height: 231,
                width: 110,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Group 27.png')
                    ),
                  ),
                ),
              ),
              ],),),
                ),
            ),
                    Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height:  146, width: 347,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 24,
                      offset: Offset(0, 24), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
              children: <Widget>[
                  Positioned(
                    bottom: 45,
                    right: 172,
                    child: Text(
                    "Reduce Stress",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: Color(hexColor('#003249'),),
                      fontSize: 20,
                      letterSpacing: 1.2,
                    ),
              ),
                  ),
              Positioned(
                height: 231,
                width: 110,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Group 27.png')
                    ),
                  ),
                ),
              ),
              ],),
                ),
            ),
                    ),
                    Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height:  146, width: 347,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 24,
                      offset: Offset(0, 24), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
              children: <Widget>[
                  Positioned(
                    bottom: 45,
                    right: 172,
                    child: Text(
                    "Am I Anxious?",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: Color(hexColor('#003249'),),
                      fontSize: 20,
                      letterSpacing: 1.2,
                    ),
              ),
                  ),
              Positioned(
                height: 231,
                width: 110,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Group 27.png')
                    ),
                  ),
                ),
              ),
              ],),
                ),
            ),
                    ),
          ],
        ),
      ),
      );
            }
            }