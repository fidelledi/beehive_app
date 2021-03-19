import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beehive',
      home:LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70 ,
          title: Padding(
            padding: const EdgeInsets.only(left:140),
            child: Text("BEEHIVE",
            style: TextStyle(
              fontFamily: 'SF-Pro-Bold',
              fontSize: 24,
              color: Colors.deepOrangeAccent
            ),),
          ),


        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.settings,
          color: Colors.black45,),
        onPressed: (){}),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right:300, top:25),
                child: Text("Hello!",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black54,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right:240 ,top:3),
                child: Text("Bee B. Co",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'SF-Pro-Bold',
                  color: Colors.black54,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right:80, top:3),
                child: Text("De La Salle - College of St Benilde",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black54,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Calendar extends StatelessWidget {
  CalendarController _controller= CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:50),
        child: TableCalendar(calendarController: _controller,),
      )
    );
  }
}
