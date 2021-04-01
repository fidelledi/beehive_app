import 'package:beehive_app/Focus/breathing_exercises.dart';
import 'package:beehive_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class theBreathingExercise extends StatefulWidget {
  @override
  _theBreathingExerciseState createState() => _theBreathingExerciseState();
}

class _theBreathingExerciseState extends State<theBreathingExercise> {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    Duration _duration = Duration(seconds: 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        
        Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: ColorConstants.textColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/untitled23.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 280),
          child: Align(alignment: Alignment.center,
                    child: Text(
                      'Lorem ipsum dolor sit amet',
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Text',
                        fontSize: 13,
                        letterSpacing: 1.5,
                        color: ColorConstants.whiteBgImage,
                      ),
                    ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 490.0),
          child: Align(alignment: Alignment.center,
                    child: CircleAvatar(
                                backgroundColor: ColorConstants.buttonColor,
                                radius: 48.5,
                                child: SlideCountdownClock(
                                  duration: _duration,
                                slideDirection: SlideDirection.Down,
                                separator: ':',
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'SF-Pro-Medium',
                                  color: ColorConstants.whiteBgImage,
                                  ),
                                  onDone: () {
                                    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Pomodoro is finished')));
                                  },
                                ),
                              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 42),
          child: Align(alignment: Alignment.topRight,
                    child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.close, color: ColorConstants.whiteBgImage,),
              ),
          ),
        ),
      ],
    ));
  }
}
