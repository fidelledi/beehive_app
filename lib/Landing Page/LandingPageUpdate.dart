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
      home: LandingPageUpdate(),
    );
  }
}

class LandingPageUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8CD81),
        title: Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Text(
            "BEEHIVE",
            style: TextStyle(
              fontFamily: 'SF-Pro-Bold',
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black45,
              ),
              onPressed: () {}),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300, top: 25, left: 30),
              child: Text(
                "Hello!",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240, top: 3, left: 30),
              child: Text(
                "Bee B. Co",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'SF-Pro-Bold',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80, top: 3, left: 30),
              child: Text(
                "De La Salle - College of St Benilde",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              //child: Calendar(),
            ),
          ],
          //physics: NeverScrollableScrollPhysics(),
          //addAutomaticKeepAlives: true,
        ),
      ),
      //bottomNavigationBar: bottomNavBar(),
    );
  }
}

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: TableCalendar(
          calendarController: _controller,
        ),
      ),
    );
  }
}
