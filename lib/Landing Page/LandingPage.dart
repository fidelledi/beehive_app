import 'package:beehive_app/Backends/authentication_service.dart';
import 'package:beehive_app/Emotion%20Tracker/trackerMain.dart';
import 'package:beehive_app/bnav.dart';
import 'package:beehive_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:ui';
import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Uplifter/uplifter_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:provider/provider.dart';
import 'package:beehive_app/Backends/authentication_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'dart:js';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized(); // after upgrading flutter this is now necessary

  runApp(LandingPage());
}

final CollectionReference usersRef =
    FirebaseFirestore.instance.collection('Users');

class Myapp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<Myapp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beehive',
      home: LandingPage(),
    );
  }
}

class GetUserName extends StatelessWidget {
  final String documentId;

  GetUserName(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Text(data['Name'],
          style: TextStyle(
            fontFamily: 'SF-Pro-Bold',
            fontSize: 24,
            color: ColorConstants.textColor,
            letterSpacing: 2,
          ),
          );
        }

        return Text("loading");
      },
    );
  }
}

class GetSchool extends StatelessWidget {
  final String documentId;

  GetSchool(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Text(data['School'],
          style: TextStyle(
            fontFamily: 'SF-Pro-Bold',
            fontSize: 14,
            color: ColorConstants.labelColor,
            letterSpacing: 2,
          ),
          );
        }

        return Text("loading");
      },
    );
  }
}



class LandingPage extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8CD81),
        title: Padding(
          padding: const EdgeInsets.only(left: 125),
          child: Text(
            'BEEHIVE',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'SF-Pro-Bold',
              color: Colors.white,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          letterSpacing: 2,
                          fontSize: 14,
                          color: ColorConstants.labelColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0,),
                        child: GetUserName(auth.currentUser.uid),
                      ),
                      GetSchool(auth.currentUser.uid),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: CircleAvatar(
                      backgroundColor: ColorConstants.textColor,
                      radius: 20.5,
                      child: Icon(
                        Icons.person,
                        color: ColorConstants.whiteBgImage,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Stack(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(top: 25, left: 330),
            //       child: 
            //     )
            //   ],
            // ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 105, left: 40),
                  child: Container(
                    width: 320,
                    height: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFF7F7FC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 7,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Calendar(),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 450, right: 180),
                  child: Text(
                    'Task',
                    style: TextStyle(
                      letterSpacing: 1.5,
                      color: Color(0xFF6E7191),
                      fontFamily: 'SF-Pro-Bold',
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 40),
                  child: Container(
                    width: 320,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFF7F7FC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 7,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 70),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '8 AM',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'SF-Pro-Text',
                                  color: Color(0xFF6E7191),
                                )),
                            TextSpan(text: '\n'),
                            TextSpan(
                                text: 'Breakfast',
                                style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    fontSize: 14,
                                    color: Colors.black))
                          ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100, left: 70),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '10 AM',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'SF-Pro-Text',
                                  color: Color(0xFF6E7191),
                                )),
                            TextSpan(text: '\n'),
                            TextSpan(
                                text: 'Submit Reflection Paper',
                                style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    fontSize: 14,
                                    color: Colors.black))
                          ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 170, left: 70),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '10:30 AM',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'SF-Pro-Text',
                                  color: Color(0xFF6E7191),
                                )),
                            TextSpan(text: '\n'),
                            TextSpan(
                                text: 'Pomodoro Session with Class',
                                style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    fontSize: 14,
                                    color: Colors.black))
                          ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 220, left: 45),
                          child: Container(
                            width: 240,
                            height: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: FlatButton(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 8),
                                  color: Color(0xFFD17B47),
                                  onPressed: () async {
                                    final String id = await context
                                        .read<AuthenticationService>()
                                        .getCurrentUID();
                                    final DocumentSnapshot docs =
                                        await usersRef.doc(id).get();
                                    print(docs.data());
                                  },
                                  child: Text(
                                    'Add Task',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'SF-Pro-Bold',
                                      fontSize: 15,
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 530, left: 70),
                  child: Icon(
                    Icons.check_box,
                    size: 26,
                    color: Color(0xFFD17B47),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 595, left: 70),
                  child: Icon(
                    Icons.check_box_outline_blank,
                    size: 26,
                    color: Color(0xFFD17B47),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 660, left: 70),
                  child: Icon(
                    Icons.check_box_outline_blank,
                    size: 26,
                    color: Color(0xFFD17B47),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 800, right: 40),
                  child: Text('Track your progress',
                      style: TextStyle(
                        letterSpacing: 1.5,
                        color: Color(0xFF6E7191),
                        fontFamily: 'SF-Pro-Bold',
                        fontSize: 20,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => emotionTrackerMain()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 40),
                    child: Container(
                      width: 320,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFF7F7FC),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 7,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Container(
                          margin: EdgeInsets.all(20),
                          child: Image.asset('assets/images/trackerBees.png')),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:970),
                  child: Text('data',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                )
              ],
            )
          ],
        ),
      ),
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
      padding: const EdgeInsets.only(top: 10),
      child: TableCalendar(
        calendarStyle: CalendarStyle(
            weekendStyle: TextStyle(color: Color(0xFFD17B47)),
            outsideWeekendStyle: TextStyle(color: Color(0xFFD17B47)),
            selectedColor: Color(0xFF6E7191),
            todayColor: Color(0xFFF8CD81)),
        calendarController: _controller,
      ),
    ));
  }
}



