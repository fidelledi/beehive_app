//import 'dart:js';
import 'package:beehive_app/Backends/authentication_service.dart';
import 'package:beehive_app/Welcome/signupupdate.dart';
import 'package:beehive_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:ui';
import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Landing%20Page/LandingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteBgImage,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 277.25,
                        height: 242,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/welcomeBee.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 285),
                    child: Column(
                      children: [
                        Text(
                          'Sign In ',
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'SF-Pro-SemiBold',
                            letterSpacing: 1.5,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: Text(
                            'Welcome!         ',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'SF-Pro-SemiBold',
                              letterSpacing: 1.5,
                              color: ColorConstants.labelColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 1),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        hintText: "Email",
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.buttonColor),
                        ),
                        // borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Password",
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.buttonColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: ColorConstants.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        onPressed: () {
                          context.read<AuthenticationService>().signIn(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Medium',
                              color: ColorConstants.whiteBgImage,
                              letterSpacing: 1,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 48,
                    ),
                    AlreadyHaveAnAccount(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlreadyHaveAnAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an account?  ",
          style: TextStyle(
            color: Colors.black54,
            fontFamily: 'SF-Pro-Medium',
            fontSize: 15,
            letterSpacing: 1.5,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignupUpdate()));
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: ColorConstants.buttonColor,
              fontFamily: 'SF-Pro-Medium',
              fontSize: 15,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
