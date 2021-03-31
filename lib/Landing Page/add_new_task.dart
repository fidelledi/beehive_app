import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';

class createNewTask extends StatelessWidget {
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
  height: 323,
  width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
                alignment: Alignment.topRight,
                child: InkWell(onTap: () => Navigator.pop(context), child: Icon(Icons.close),),
              ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text('Add a new task',
            style: TextStyle(
              fontFamily: 'SF-Pro-SemiBold',
              fontSize: 20,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text('Task Title',
            style: TextStyle(
              fontFamily: 'SF-Pro-SemiBold',
              fontSize: 13,
              color: ColorConstants.labelColor,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(hintText: "Title"),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Medium',
                    fontSize: 13,
                    color: ColorConstants.labelColor,
                  ),
                ),
                //CartCounter(),
              ],
            ),
          ),
          SizedBox(
            height: 40
          ),
          Center(
            child: Container(
              width: 126,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorConstants.buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: InkWell(onTap: () => Navigator.pop(context),
                              child: Text('Add',
                style: TextStyle(
                  fontFamily: 'SF-Pro-SemiBold',
                  fontSize: 14,
                  color: ColorConstants.buttonTextColor,
                ),),
              )),
          )
        ],),
);

