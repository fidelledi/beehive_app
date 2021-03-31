import 'package:beehive_app/Uplifter/Pomodoro_Screens/popBreak_popUp.dart';
import 'package:beehive_app/Uplifter/dialogHelper3.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';

class workSessionlist extends StatefulWidget {
  @override
  _workSessionlist createState() => _workSessionlist();
}

class _workSessionlist extends State<workSessionlist> {
@override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                                  '2 Pomodoros',
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
                padding: const EdgeInsets.only(bottom: 20),
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
                              '2 Pomodoros',
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
            Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InkWell(
                    onTap: (){
                              DialogHelper3.exit(context);
                              },
                                      child: Container(
                      height: 56,
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
                    child: 
                      Center(
            child: Icon(Icons.add),
                    ),
                    ),
                  ),
                  ),
      ],);
  }
}
