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
          Padding(
            padding: const EdgeInsets.only(right:320, top: 20),
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded,
                color: Colors.black54,),
                onPressed: (){}),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:20),
              child: Text('How are you feeling today',
              style: TextStyle(
                fontFamily: 'SF-Pro-Bold',
                fontSize: 24,
              ),),
            ),
          ),
          Container(
            width:300,
              height: 300,
              child: Image.asset('assets/images/beelogo.PNG')),
          Padding(
            padding: const EdgeInsets.only(top: 1),
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
