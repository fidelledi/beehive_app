import 'dart:ui';
import 'package:beehive_app/Welcome/SignUp.dart';
import 'package:beehive_app/Welcome/loginupdate.dart';
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
      title: 'Beehive Application',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30, 130, 30, 30),
            child: Image.asset('assets/images/bee.jpg'),
          ),
          Text(
            'Welcome!',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 40,
              fontFamily: 'SF-Pro-Bold',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit esdada",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 17,
                fontFamily: 'SF-Pro-Thin',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: FlatButton(
                color: Colors.amber,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (builder) => LoginScreen()));
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20),
                ),
                child: Text(
                  "Lets Go!",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SF-Pro-Bold',
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
