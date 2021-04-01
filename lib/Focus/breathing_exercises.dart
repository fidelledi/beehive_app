import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Focus/theBreathingExercise.dart';
import 'package:beehive_app/Landing%20Page/LandingPage.dart';
import 'package:beehive_app/bnav.dart';
import 'package:beehive_app/constants.dart';
import 'package:flutter/material.dart';

class breathingExercisePage extends StatefulWidget {
  @override
  _breathingExercisePage createState() => _breathingExercisePage();
}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}

class _breathingExercisePage extends State<breathingExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.appBarColor,
      appBar: AppBar(
        title: Text(' '),
        leading: new IconButton(
          icon: Image.asset(
            'assets/icons/back_icon.png',
            color: Color(
              hexColor('#14142A'),
            ),
          ),
          onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Nav(),));
                   
                 },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Take a deep breath",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Semibold',
                      color: Color(hexColor('#14142A')),
                      fontSize: 24,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                ' Release the stress, anxiety, sadness, anger or \n any valid  emotions that you are feeling right now. \n Take these short breathing exercises to gain a \n peace of mind, relaxation and remove any tension \n that you may be feeling today.',
                style: TextStyle(
                  fontFamily: 'SF-Pro-Thin',
                  color: Color(0xFF6E7191),
                  fontSize: 14,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 20),
                  child: InkWell(
                    onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => theBreathingExercise(),));
                   
                 },
                                      child: Container(
                      height: 146,
                      width: 347,
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
              color: Color(
                hexColor('#003249'),
              ),
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
                    image:
                        AssetImage('assets/images/Group 27.png')),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => theBreathingExercise(),));
                   
                 },
                                  child: Container(
                    height: 146,
                    width: 347,
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
                              color: Color(
                                hexColor('#003249'),
                              ),
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
                                  image:
                                      AssetImage('assets/images/Group 27.png')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => theBreathingExercise(),));
                   
                 },
                                  child: Container(
                    height: 146,
                    width: 347,
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
                              color: Color(
                                hexColor('#003249'),
                              ),
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
                                  image:
                                      AssetImage('assets/images/Group 27.png')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
