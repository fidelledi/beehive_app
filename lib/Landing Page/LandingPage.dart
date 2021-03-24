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
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xFFF8CD81) ,
          title: Padding(
            padding: const EdgeInsets.only(left:150),
            child: Text("BEEHIVE",
            style: TextStyle(
              fontFamily: 'SF-Pro-Bold',
              fontSize: 24,
              color: Colors.white,
            ),),
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
      body: SafeArea(
        child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right:300,top:25,left:30),
                    child: Text("Hello!",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SF-Pro-Text',
                      color: Colors.black,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:240 ,top:3,left:30),
                    child: Text("Bee B. Co",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'SF-Pro-Bold',
                      color: Colors.black,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:80, top:3, left:30),
                    child: Text("De La Salle - College of St Benilde",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SF-Pro-Text',
                      color: Colors.black,
                    ),),
                  ),
                  Expanded(
                      child: ListView(
                        padding: EdgeInsets.only(top:30, left: 20, right:20),
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(30),
                            height: 400, width: 500,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Calendar(),
                          ),
                        ],
                      )),
                ],
              ),
            ),
      ),
      bottomNavigationBar: bottomNavBar(),
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
  void initState(){
    super.initState();
    _controller=CalendarController();
  }
  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TableCalendar(
            calendarController: _controller,
          ),
        )
    );
  }
}
class bottomNavBar extends StatefulWidget {
  @override
  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int _selectedIndex=0;
  static const TextStyle optionStyle=
      TextStyle(
        fontFamily: 'SF-Pro-Bold',
        fontSize: 25,
      );
  static const List<Widget>_widgetOption = <Widget>[
    Text(
      'Index 0: Focus',
      style: optionStyle,
    ),
    Text(
      'Index 1: Social',
      style: optionStyle,
    ),
    Text(
      'Index 3: Uplifter',
      style: optionStyle,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_objects_outlined),
            label: 'Focus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied_alt_rounded),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights_rounded),
            label: 'Uplifter',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFD17B47),
    );
  }
  }