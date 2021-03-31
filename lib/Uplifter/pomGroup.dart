import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Uplifter/dialog_helper4.dart';
import 'package:beehive_app/Uplifter/pom_solo.dart';
import 'package:beehive_app/Uplifter/pom_solo_started.dart';
import 'package:beehive_app/Uplifter/uplifter_main.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomSolo_work.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomSolo_break.dart';

class pomGroup extends StatefulWidget {
  @override
  _pomGroup createState() => _pomGroup();
}

class _pomGroup extends State<pomGroup> {
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
                PopupMenuItem(
                  value: 1,
                  child: Text("Switch to Pomodoro Solo"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Cancel Pomodoro"),
                ),
              ],
              onSelected: (int choice) {
                if (choice == 1) {
                  navigatorKey.currentState.push(
                    MaterialPageRoute(
                      builder: (context) => pomSolo(),
                    ),
                  );
                } else if (choice == 2) {
                  navigatorKey.currentState.push(
                    MaterialPageRoute(
                      builder: (context) => pomGroup(),
                    ),
                  );
                }
              },
            ),
          ],
          backgroundColor: ColorConstants.appBarColor,
          elevation: 0.0,
        ),
        backgroundColor: ColorConstants.buttonTextColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(34),
                child: Text(
                  'Session Name',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Bold',
                    letterSpacing: 1,
                    color: ColorConstants.buttonColor,
                    fontSize: 19,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 62, right: 24),
                                          child: CircleAvatar(
                          backgroundColor: ColorConstants.labelColor,
                          radius: 30,
                          child: CircleAvatar(
                            backgroundColor: ColorConstants.whiteBgImage,
                            radius: 28.5,
                            child: Icon(
                              Icons.person,
                              color: ColorConstants.labelColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 31,),
                                          child: CircleAvatar(
                          backgroundColor: ColorConstants.labelColor,
                          radius: 30,
                          child: CircleAvatar(
                            backgroundColor: ColorConstants.whiteBgImage,
                            radius: 28.5,
                            child: Icon(
                              Icons.person,
                              color: ColorConstants.labelColor,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: ColorConstants.labelColor,
                        radius: 30,
                        child: CircleAvatar(
                          backgroundColor: ColorConstants.whiteBgImage,
                          radius: 28.5,
                          child: Icon(
                            Icons.person,
                            color: ColorConstants.labelColor,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  InkWell(
                    onTap: (){
                              DialogHelper4.exit(context);
                              },
                                      child: CircleAvatar(
                        backgroundColor: ColorConstants.labelColor,
                        radius: 30,
                        child: CircleAvatar(
                          backgroundColor: ColorConstants.whiteBgImage,
                          radius: 28.5,
                          child: Icon(
                            Icons.add,
                            color: ColorConstants.labelColor,
                          ),
                        ),
                      ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 18,
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
                height: 46,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pomSoloSelect(),
                    ),
                  );
                }, //{
                //  Navigator.push(context, MaterialPageRoute(builder: (context) => pomSolo()));
                // },
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16,),
                              child: Text(
                  '2/3 Member(s) are ready',
                  style: TextStyle(fontSize: 12,
                  color: ColorConstants.labelColor,
                  letterSpacing: 1,),
                  
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
