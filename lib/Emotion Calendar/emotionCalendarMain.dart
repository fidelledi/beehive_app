import 'package:flutter/material.dart';
import 'package:beehive_app/Emotion Calendar/emotionCalendarBody.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beehive',
      home: emotionMain() ,
    );
  }
}

class emotionMain extends StatefulWidget {
  @override
  _emotionMainState createState() => _emotionMainState();
}

class _emotionMainState extends State<emotionMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8CD81),
      appBar: AppBar(
        title: Text('Insights',
        style: TextStyle(
          fontFamily: 'SF-Pro-Bold',
          fontSize: 22,
          color: Colors.black,
          letterSpacing: 1.2,
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
          onPressed: (){},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: emotionCalendarBody(),
    );
  }
}
