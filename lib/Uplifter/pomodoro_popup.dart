
import 'package:beehive_app/Uplifter/pom_solo.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';

  hexColor (String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

class pomPopUpDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      child: _buildChild(context),
    );
  }
}

_buildChild(BuildContext context) => Container(
  height: 188,
  width: 450,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text('Choose your mode',
            style: TextStyle(
              fontFamily: 'SF-Pro-SemiBold',
              fontSize: 20,
            ),),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            InkWell(onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => pomSolo(),),);
            }, 
            child: Container(
              width: 126,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorConstants.buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Text('Solo',
              style: TextStyle(
                fontFamily: 'SF-Pro-SemiBold',
                fontSize: 14,
                color: ColorConstants.buttonTextColor,
              ),)),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(onTap: () {}, 
            child: Container(
              width: 126,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorConstants.buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Text('Group',
              style: TextStyle(
                fontFamily: 'SF-Pro-SemiBold',
                fontSize: 14,
                color: ColorConstants.buttonTextColor,
              ),)),
            ),
          ],)
        ],),
);