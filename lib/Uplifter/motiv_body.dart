import 'package:beehive_app/Uplifter/motivational_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class motivBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Stack(
    children: [
      Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 20, left: 25),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Browse Topics for You",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Semibold',
                      color: Color(hexColor('#F2F2F2')),
                      fontSize: 24,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua.",
                style: TextStyle(
                  fontFamily: 'SF-Pro-Thin',
                  color: Color(
                    hexColor('#F2F2F2'),
                  ),
                  fontSize: 14,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ],
        ),
      SizedBox(
        height: size.height,
    child: Stack(
      children: [
        SingleChildScrollView(
                  child: Container(
            margin: EdgeInsets.only(top: size.height * 0.18),
            height: size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
            top: 20, bottom: 20, left: 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
            "Self-Improvement",
            style: TextStyle(
              fontFamily: 'SF-Pro-Semibold',
              color: Color(hexColor('#828282')),
              fontSize: 16,
              letterSpacing: 1.2,
            ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
            height: 146,
            width: 347,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 24,
                  offset: Offset(
                      0, 24), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 45,
                  right: 110,
                  child: Text(
                    "It's Time to Step into\nYour Light",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: Color(
                        hexColor('#14142A'),
                      ),
                      fontSize: 20,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 24,
                  right: 245,
                  child: Text(
                    "Fairly Lloyd",
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Regular',
                      color: Color(
                        hexColor('#6E7191'),
                      ),
                      fontSize: 13,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ],
            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
            top: 20, bottom: 20, left: 30),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
            "Inspirational",
            style: TextStyle(
              fontFamily: 'SF-Pro-Semibold',
              color: Color(hexColor('#828282')),
              fontSize: 16,
              letterSpacing: 1.2,
            ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
            height: 146,
            width: 347,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 24,
                  offset: Offset(
                    0, 24), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 45,
                  right: 110,
                  child: Text(
                    "It's Time to Step into\nYour Light",
                    style: TextStyle(
                    fontFamily: 'SF-Pro-Bold',
                    color: Color(
                      hexColor('#14142A'),
                    ),
                    fontSize: 20,
                    letterSpacing: 1.2,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 24,
                  right: 245,
                  child: Text(
                    "Fairly Lloyd",
                    style: TextStyle(
                    fontFamily: 'SF-Pro-Regular',
                    color: Color(
                      hexColor('#6E7191'),
                    ),
                    fontSize: 13,
                    letterSpacing: 1.2,
                    ),
                  ),
                ),
              ],
            ),
                    ),
                  ),
                ],
              ),
          ),
        ),
      ],
    )),
    ],
        );
  }
}
