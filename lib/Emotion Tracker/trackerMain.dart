import 'package:beehive_app/Emotion%20Tracker/trackerBody.dart';
import 'package:beehive_app/Landing%20Page/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/Emotion Calendar/emotionCalendarBody.dart';
import 'package:beehive_app/Emotion Tracker/trackerMain.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beehive',
      home: emotionTrackerMain() ,
    );
  }
}

class emotionTrackerMain extends StatefulWidget {
  @override
  _emotionTrackerMainState createState() => _emotionTrackerMainState();
}

class _emotionTrackerMainState extends State<emotionTrackerMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8CD81),
      appBar: AppBar(
        title: Text(' '),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 25,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage())
            ); },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:30),
            child: IconButton(
                icon: Icon(Icons.person_rounded,
                  color: Color(0xFF003249),
                  size: 50,),
                onPressed: (){}),
          )
        ],
      ),
      body: emotionTrackerBody(),
    );
  }
}