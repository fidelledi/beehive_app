import 'package:beehive_app/Backends/authentication_service.dart';
import 'package:beehive_app/Backends/firestore.dart';
import 'package:beehive_app/Welcome/loginupdate.dart';
import 'package:beehive_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:ui';
import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Landing%20Page/LandingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SignupUpdate extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
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
                    fontSize: 32,
                    color: Colors.black,
                    letterSpacing: 1.5,
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
                    fontFamily: 'SF-Pro-Medium',
                    letterSpacing: 1.5,
                    color: ColorConstants.labelColor,
                  ),
                ),
              ),
            ),
            NameTextInput(
                child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Name",
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: ColorConstants.buttonColor),
                ),
              ),
            )),
            SchoolInputText(
              child: TextField(
                controller: schoolController,
                decoration: InputDecoration(
                  hintText: "School",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.buttonColor),
                  ),
                ),
              ),
            ),
            EmailTextInput(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.buttonColor),
                  ),
                ),
              ),
            ),
            PasswordTextInput(
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.buttonColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: ColorConstants.buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () async {
                  context.read<AuthenticationService>().signUp(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                        name: nameController.text.trim(),
                        school: schoolController.text.trim(),
                      );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Medium',
                      color: ColorConstants.whiteBgImage,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
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
            fontFamily: 'SF-Pro-Medium',
            fontSize: 15,
              letterSpacing: 1.5,
          ),
        ),
        SizedBox(
          width: 9,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignInPage()));
          },
          child: Text(
            login ? "Sign In" : "Sign Up",
            style: TextStyle(
              color: ColorConstants.buttonColor,
              fontFamily: 'SF-Pro-Medium',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
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
      padding: const EdgeInsets.only(top: 48),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: 370,
        child: child,
      ),
    );
  }
}
