import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';

class pomGroupInvite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.white,
      child: _buildChild(context),
    );
  }
}

_buildChild(BuildContext context) => Container(
      // height: 300,
      // width: 400,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.close),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Invite friends to Pomodoro',
              style: TextStyle(
                fontFamily: 'SF-Pro-SemiBold',
                fontSize: 16,
                letterSpacing: 1,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.labelColor,
                        radius: 23,
                        child: CircleAvatar(
                          backgroundColor: ColorConstants.whiteBgImage,
                          radius: 22,
                          child: Icon(
                            Icons.person,
                            color: ColorConstants.labelColor,
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
                              'Bee B. Mo',
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Medium',
                                fontSize: 14,
                                color: ColorConstants.textColor,
                                letterSpacing: 1.2,
                              ),
                            ),
                            Text(
                              'Sa Tabee-tabee',
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
                  SizedBox(
                    height: 28,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.labelColor,
                        radius: 23,
                        child: CircleAvatar(
                          backgroundColor: ColorConstants.whiteBgImage,
                          radius: 22,
                          child: Icon(
                            Icons.person,
                            color: ColorConstants.labelColor,
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
                              'Name',
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Medium',
                                fontSize: 14,
                                color: ColorConstants.textColor,
                                letterSpacing: 1.2,
                              ),
                            ),
                            Text(
                              'School',
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
                  SizedBox(
                    height: 28,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.labelColor,
                        radius: 23,
                        child: CircleAvatar(
                          backgroundColor: ColorConstants.whiteBgImage,
                          radius: 22,
                          child: Icon(
                            Icons.person,
                            color: ColorConstants.labelColor,
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
                              'Name',
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Medium',
                                fontSize: 14,
                                color: ColorConstants.textColor,
                                letterSpacing: 1.2,
                              ),
                            ),
                            Text(
                              'School',
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
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       elevation: 0,
                       side: BorderSide(width: 2, color: ColorConstants.buttonColor),
                       primary: ColorConstants.whiteBgImage,
                       shape: 
                         RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
                         ),
                       ),
                     onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => null,));
                     
                   },
                   
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12,),
                     child: Text('Not Completed',
                     style: TextStyle(
                       fontFamily: 'SF-Pro-Medium',
                       color: ColorConstants.buttonColor,
                       letterSpacing: 1,
                       ),),
                   ),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
