import 'dart:ui';
import 'package:beehive_app/Welcome/loginupdate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:50),
              child: Container(
                margin:EdgeInsets.all(50),
                  child: Image.asset('assets/images/welcomeBee.png')),
            ),
          Text('Welcome',
              style: TextStyle(
              fontSize: 40,
              fontFamily: 'SF-Pro-Bold',
              color: Colors.black,
              letterSpacing: 1.2,)
          ),
          Text('Dont worry bee happy',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'SF-Pro-Text',
                color: Colors.black,
                letterSpacing: 1.2,)),
          Padding(
            padding: const EdgeInsets.only(top:180),
            child: Container(
              width: 170,
              height:50 ,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                    color:Color(0xFFD17B47),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => null),
                      ); },
                    child: Text('Let\'s Go!',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF-Pro-Bold',
                        fontSize: 18,
                        letterSpacing: 1.5,
                      ),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
