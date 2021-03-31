import 'package:beehive_app/Uplifter/Pomodoro_Screens/inProgress.dart';
import 'package:beehive_app/Uplifter/pom_solo_started.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';

class completedPom extends StatefulWidget {
  @override
  _completedPomState createState() => _completedPomState();
}

class _completedPomState extends State<completedPom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteBgImage,
      appBar: AppBar(
          leading: new IconButton(
            icon: Image.asset('assets/icons/back_icon.png',
                color: ColorConstants.titleColor),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => pomSoloSelect(),),);
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.center,
                          child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Is this task completed?',
                  style: TextStyle(
                    color: ColorConstants.buttonColor,
                    fontSize: 16,
                    fontFamily: 'SF-Pro-Bold',
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Text(
            'The task',
            style: TextStyle(
              letterSpacing: 1,
              fontFamily: 'SF-Pro-Medium',
              color: ColorConstants.titleColor,
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
              color: ColorConstants.titleColor,
              fontSize: 14,
            ),
          ),
           SizedBox(height: 72,),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   elevation: 0,
                   primary: ColorConstants.buttonColor,
                   shape: 
                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
                     ),
                   ),
                 onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => pomSoloSelect(),));
                 
               },
               
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12,),
                 child: Text('Completed',
                 style: TextStyle(
                   fontFamily: 'SF-Pro-Medium',
                   color: ColorConstants.whiteBgImage,
                   letterSpacing: 1,
                   ),),
               ),),
               SizedBox(
                 height: 6,
               ),
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
                 Navigator.push(context, MaterialPageRoute(builder: (context) => inProgress(),));
                 
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
    );
  }
}