import 'dart:ui';

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
      home: signInPage(),
    );
  }
}

class signInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Bold',
                    fontSize: 35,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  "Bee yourself!",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SF-Pro-Thin',
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            NameTextInput(
                child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person_rounded,
                  color: Colors.black45,
                ),
                hintText: "Name",
              ),
            )),
            SchoolInputText(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.school_rounded,
                    color: Colors.black45,
                  ),
                  hintText: "School",
                ),
              ),
            ),
            EmailTextInput(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.mail_rounded,
                    color: Colors.black45,
                  ),
                  hintText: "Email",
                ),
              ),
            ),
            PasswordTextInput(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock_open_rounded,
                    color: Colors.black45,
                  ),
                  hintText: "Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: FlatButton(
                  color: Colors.amber,
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SF-Pro-Bold',
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: AlreadyHaveAnAccount(),
            ),
          ],
        ),
      ),
    );
  }
}

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccount({
    Key key,
    this.press,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Already have an account?" : "Don't have an account?",
          style: TextStyle(
            color: Colors.black54,
            fontFamily: 'SF-Pro-Thin',
            fontSize: 15,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign In" : "Sign Up",
            style: TextStyle(
              color: Colors.black54,
              fontFamily: 'SF-Pro-Bold',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class PasswordTextInput extends StatelessWidget {
  final Widget child;
  const PasswordTextInput({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: 370,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(29),
        ),
        child: child,
      ),
    );
  }
}

class EmailTextInput extends StatelessWidget {
  final Widget child;
  const EmailTextInput({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: 370,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(29)),
        child: child,
      ),
    );
  }
}

class SchoolInputText extends StatelessWidget {
  final Widget child;
  const SchoolInputText({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: 370,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(29),
        ),
        child: child,
      ),
    );
  }
}

class NameTextInput extends StatelessWidget {
  final Widget child;
  const NameTextInput({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: 370,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(29),
        ),
        child: child,
      ),
    );
  }
}
