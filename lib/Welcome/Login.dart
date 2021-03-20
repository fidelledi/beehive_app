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
      home:loginPage(),
    );
  }
}

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:100),
                  child: Text("Sign In",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      fontSize: 35,
                      color: Colors.black54,
                    ),),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:12),
                  child: Text("Welcome back!",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SF-Pro-Thin',
                      color: Colors.black54,
                    ),),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.account_circle_rounded,
                        color: Colors.black45),
                    hintText:  "Username",
                  ),
                ),
              ),
              TextFieldContainer2(
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock_open_rounded,
                        color:Colors.black45),
                    hintText: "Password",
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15),
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'SP-Pro-Thin',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: FlatButton(
                    color: Colors.amber,
                    onPressed: (){},
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    child: Text("Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SF-Pro-Bold',
                        color: Colors.white,
                      ),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: AlreadyHaveAnAccountCheck(),
              )
            ],
          ),
        )
    );
  }
}

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login= true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Dont have an account? " :"Already have an Account ?",
          style: TextStyle(
            color:Colors.black54,
            fontFamily: 'SF-Pro-Thin',
            fontSize: 15,
          ),),
        GestureDetector(
          onTap:press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color:Colors.black54,
              fontFamily: 'SF-Pro-Bold',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ],
    );
  }
}

class TextFieldContainer2 extends StatelessWidget {
  final Widget child;
  const TextFieldContainer2({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30),
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

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:140),
      child: Container(
        padding: EdgeInsets.symmetric(vertical:5, horizontal: 30),
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

