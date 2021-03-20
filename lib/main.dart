import 'package:beehive_app/Focus/breathing_exercises.dart';
import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Welcome/Login.dart';
import 'package:beehive_app/Welcome/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/Focus/breathing_exercises.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beehive',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: signInPage(),
      //home: focusMain(),
    );
  }
}
