import 'package:beehive_app/Uplifter/uplifter_main.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/Focus/breathing_exercises.dart';
import 'package:beehive_app/Uplifter/dialog_helper.dart';

class focusMain extends StatefulWidget {
  @override
  _focusMain createState() => _focusMain();
}

  hexColor (String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

class _focusMain extends State<focusMain> {
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Color(hexColor('#F7F7FC')),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10, bottom: 20),
          child: Align(
            alignment: Alignment(-0.58, 0.90), 
            child: Text(
              "Focus",
              style: TextStyle(
                fontFamily: 'SF-Pro-Bold',
                color: Color(hexColor('#14142A')),
                fontSize:38
              ),
            ),),),
            Expanded(
              child: ListView( 
                padding: const EdgeInsets.only(left: 32, right: 32, top: 15),
                children: <Widget>[
                  Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 27),
                  height:  268, width: 347,
                  decoration: BoxDecoration(
                    color: Color(hexColor('#FFFFFFF')),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 24,
                      offset: Offset(0, 24), // changes position of shadow
                    ),
                  ],
                  ),
                    child:
                      InkWell(
                              child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "Pomodoro",
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    color: Color(hexColor('#14142A')),
                                    fontSize: 24,
                                    letterSpacing: 1.8,
                                  ),
                                  ),
                                  ],
                                  ),
                                Row(
                                  children: [
                                    Text(
                                      "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit.",
                                      style: TextStyle(
                                        fontFamily: 'SF-Pro-Thin',
                                        color: Color(hexColor('#767676')),
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        height: 1.6,
                                      ),
                    ),
                                  ],
                                ),
                              ],
                            ),
                            onTap: (){
                              DialogHelper.exit(context);
                               }
                      ),),
                          SizedBox(
                            height: 32,
                          ),
                          Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 27),
                  height:  268, width: 347,
                  decoration: BoxDecoration(
                    color: Color(hexColor('#FFFFFFF')),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 24,
                      offset: Offset(0, 24), // changes position of shadow
                    ),
                  ],
                  ),
                    child:
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "Breathing\nExercises",
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    color: Color(hexColor('#14142A')),
                                    fontSize: 24,
                                    letterSpacing: 1.8,
                                  ), 
                                  ),],
                                  ),
                                Row(
                                  children: [
                                    Text(
                                      "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit.",
                                      style: TextStyle(
                                        fontFamily: 'SF-Pro-Thin',
                                        color: Color(hexColor('#767676')),
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        height: 1.6,
                                      ),
                    ),
                                  ],
                                ),
                              ],
                            ),
                      
                          onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => breathingExercisePage())
                               ); }
                          ),
                          ),],
                          // physics: NeverScrollableScrollPhysics(),
                      ),
                ),],
              ),
    );
  }
}