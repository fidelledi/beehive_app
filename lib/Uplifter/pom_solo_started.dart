
import 'package:beehive_app/Focus/focus_main.dart';
import 'package:beehive_app/Uplifter/uplifter_main.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomSolo_work.dart';
import 'package:beehive_app/Uplifter/Pomodoro_Screens/pomSolo_break.dart';

class pomSoloSelect extends StatefulWidget {
  @override
  _pomSoloSelect createState() => _pomSoloSelect();
}

class _pomSoloSelect extends State<pomSoloSelect> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
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
          backgroundColor: ColorConstants.appBarColor,
          elevation: 0.0,
        ),
        backgroundColor: ColorConstants.buttonTextColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(48.0),
                child: Row(
                  children: [
                    Stack(
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
                            width: 190,
                            height: 184,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/pom_solo.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                    'Tasks',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Medium',
                      color: ColorConstants.textColor,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    '4',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: ColorConstants.buttonColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Completed',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Medium',
                      color: ColorConstants.textColor,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: ColorConstants.buttonColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Pomodoros',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Medium',
                      color: ColorConstants.textColor,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    '5',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Bold',
                      color: ColorConstants.buttonColor,
                      fontSize: 14,
                    ),
                  ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'In progress',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Medium',
                      color: ColorConstants.textColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 21),
                    child: Container(
                      color: ColorConstants.titleColor,
                      height: 80,
                      width: 347,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.08),
                            spreadRadius: 1,
                            blurRadius: 15,
                            offset: Offset(0, 24), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundColor: ColorConstants.labelColor,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                              ),
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Task',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Medium',
                                    fontSize: 14,
                                    color: ColorConstants.textColor,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Text(
                                  '1/2 Pomodoros',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Regular',
                                    fontSize: 13,
                                    color: ColorConstants.labelColor,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                ),
             
                           Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Waiting for action',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Medium',
                      color: ColorConstants.textColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 8),
                    child: Container(
                      height: 80,
                      width: 347,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.08),
                            spreadRadius: 1,
                            blurRadius: 15,
                            offset: Offset(0, 24), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundColor: ColorConstants.labelColor,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                              ),
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Task',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Medium',
                                    fontSize: 14,
                                    color: ColorConstants.textColor,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Text(
                                  '1/2 Pomodoros',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Regular',
                                    fontSize: 13,
                                    color: ColorConstants.labelColor,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 20),
                    child: Container(
                      height: 80,
                      width: 347,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.08),
                            spreadRadius: 1,
                            blurRadius: 15,
                            offset: Offset(0, 24), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundColor: ColorConstants.labelColor,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                              ),
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Task',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Medium',
                                    fontSize: 14,
                                    color: ColorConstants.textColor,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Text(
                                  '1/2 Pomodoros',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Regular',
                                    fontSize: 13,
                                    color: ColorConstants.labelColor,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Completed',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Medium',
                      color: ColorConstants.textColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 20),
                    child: Container(
                      height: 80,
                      width: 347,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.08),
                            spreadRadius: 1,
                            blurRadius: 15,
                            offset: Offset(0, 24), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundColor: ColorConstants.labelColor,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                              ),
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Task',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Medium',
                                    fontSize: 14,
                                    color: ColorConstants.textColor,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Text(
                                  '1/2 Pomodoros',
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Regular',
                                    fontSize: 13,
                                    color: ColorConstants.labelColor,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              SizedBox(
                height: 76,
              ),
              InkWell(
                onTap: () => debugPrint('You tapped Start'), //{
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