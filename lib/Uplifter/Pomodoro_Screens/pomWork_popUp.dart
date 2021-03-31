import 'package:flutter/material.dart';
import 'package:beehive_app/constants.dart';

class pomWPopUpDialog extends StatelessWidget {
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
  height: 270,
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
            child: Text('Create a new break',
            style: TextStyle(
              fontFamily: 'SF-Pro-SemiBold',
              fontSize: 20,
            ),),
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
                  'No. of minutes',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Medium',
                    fontSize: 13,
                    color: ColorConstants.labelColor,
                  ),
                ),
                CartCounter(),
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

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
            setState(() {
              numOfItems--;
            });
            };
          }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32 / 3),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: TextStyle(
              fontFamily: 'SF-Pro-Regular',
              fontSize: 16,
            ),
            ),
        ),
        buildOutlineButton(
          icon: Icons.add, 
          press: () {
            setState(() {
              numOfItems++;
            });
          })
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),
          ),
          onPressed: press,
          child: Icon(icon),),
      );
  }
}