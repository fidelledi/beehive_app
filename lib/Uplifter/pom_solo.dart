import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomSolo_work.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomSolo_break.dart';

class pomSolo extends StatefulWidget {
  @override
  _pomSolo createState() => _pomSolo();
}

class _pomSolo extends State<pomSolo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.buttonTextColor,
      appBar: AppBar(
        title: Center(child: Text('Pomodoro')),
        leading: new IconButton(
          icon: Image.asset('assets/icons/back_icon.png',
              color: ColorConstants.buttonTextColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Image.asset('assets/icons/extra_button.png',
                  color: ColorConstants.buttonTextColor),
              onPressed: ()=>debugPrint('More Button Clicked'),
              ),
        ],
        backgroundColor: ColorConstants.appBarColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: ColorConstants.whiteBgImage,
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 214,
                      height: 207,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/pom_solo.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Work Session',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Medium',
                    color: ColorConstants.textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            workSessionlist(),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Breaks',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Medium',
                    color: ColorConstants.textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            breaksList(),
          ],
        ),
      ),
    );
  }
}

