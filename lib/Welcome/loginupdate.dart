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
            horizontal: 50.0,
            vertical: 150,
          ),
          child: Column(
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'SF-Pro-Bold',
                  letterSpacing: 1.5,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SF-Pro-Bold',
                  letterSpacing: 1.5,
                  color: ColorConstants.labelColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 45),
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
                      height: 22,
                    ),
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: ColorConstants.buttonColor,
                        fontFamily: 'SP-Pro-Bold',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 38,
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
                      height: 67,
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
