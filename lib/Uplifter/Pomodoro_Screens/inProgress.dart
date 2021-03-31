import 'package:beehive_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'dart:async';

import 'package:flutter_countdown_timer/index.dart';

class inProgress extends StatefulWidget {
  @override
  _inProgressState createState() => _inProgressState();
}

class _inProgressState extends State<inProgress> {
  CountdownTimerController controller;
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;

  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

void onEnd() {
  Text(
    ''
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.buttonColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The task',
            style: TextStyle(
              letterSpacing: 1,
              fontFamily: 'SF-Pro-Medium',
              color: ColorConstants.whiteBgImage,
              fontSize: 26,
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 56,
                  backgroundColor: ColorConstants.textColor,
                  child: CircleAvatar(
                    radius: 53,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 62,
                    height: 59,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Avatar.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 29,
          ),
          Text(
            'Lorem ipsum dolor sit amet',
            style: TextStyle(
              letterSpacing: 1,
              fontFamily: 'SF-Pro-Thin',
              color: ColorConstants.whiteBgImage,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 92,),
          // SlideCountdownClock(
          //   duration: _duration,
          // slideDirection: SlideDirection.Down,
          // separator: ':',
          // textStyle: TextStyle(
          //   fontSize: 36,
          //   fontFamily: 'SF-Pro-Medium',
          //   color: ColorConstants.whiteBgImage,
          //   ),
          //   onDone: () {
          //     _scaffoldKey.currentWidget(Text(data))
          //   },
          // )
        ],
      ),
    );
  }
}
