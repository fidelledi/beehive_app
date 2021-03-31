
import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Uplifter/pomGroup.dart';
import 'package:beehive_app/Uplifter/pom_solo_started.dart';
import 'package:beehive_app/Uplifter/uplifter_main.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomSolo_work.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomSolo_break.dart';

class pomSolo extends StatefulWidget {
  @override
  _pomSolo createState() => _pomSolo();
}

class _pomSolo extends State<pomSolo> {

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
          navigatorKey: navigatorKey,
          home: Scaffold(
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
            PopupMenuButton(
                itemBuilder: (content) => [
                  PopupMenuItem(value: 1, 
                  child: Text("Switch to Pomodoro Group"),),
                  PopupMenuItem(value: 2, 
                  child: Text("Cancel Pomodoro"),),
                ],
                onSelected: (int choice) {
                  if (choice == 1) {
                    navigatorKey.currentState.push(MaterialPageRoute(builder: (context) => pomGroup(),),);
                  }
                  else if (choice == 2) {
                    navigatorKey.currentState.push(MaterialPageRoute(builder: (context) => pomSolo(),),);
                  }
                },),
          ],
          backgroundColor: ColorConstants.appBarColor,
          elevation: 0.0,
        ),
        backgroundColor: ColorConstants.buttonTextColor,
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
              SizedBox(
                height: 76,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => pomSoloSelect(),),);
                }, //{
                //  Navigator.push(context, MaterialPageRoute(builder: (context) => pomSolo()));
                // },
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 43,
                  ),
                  child: Container(
                      width: 126,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorConstants.buttonColor,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        'Start',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-SemiBold',
                          fontSize: 14,
                          color: ColorConstants.buttonTextColor,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          child: InkWell(
            onTap: () => print('tap on close'),
            child: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.folder_open,
                    color: ColorConstants.labelColor,
                  ),
                  Text(
                    'Notes',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Regular',
                      color: ColorConstants.labelColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}