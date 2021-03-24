import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beehive',
      home: emotionTracker() ,
    );
  }
}

class emotionTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:80),
              child: Text('How are you feeling today',
              style: TextStyle(
                fontFamily: 'SF-Pro-Bold',
                fontSize: 24,
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:60),
            child: Container(
              width: 190,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: 230,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40,),
                    color: Color(0xFFF8CD81),
                    onPressed: (){},
                child: Text('Happy',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SF-Pro-Bold',
                ),),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Container(
              width:230,
              height:60 ,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40,),
                    onPressed: (){},
                    color: Color(0xFFD17B47),
                    child: Text('Neutral',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SF-Pro-Bold',
                    ),)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Container(
              width:230,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                    onPressed: (){},
                    color: Color(0xFF6E7191),
                    child: Text('Sad',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: Colors.white,
                    ),)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Container(
              width:230,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                    onPressed: (){},
                    color: Color(0xFF003249),
                    child: Text('Angry',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: Colors.white,
                    ),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
