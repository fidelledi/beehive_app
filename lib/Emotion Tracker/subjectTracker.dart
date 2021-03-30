import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Beehive',
      home: subjectTracker() ,
    );
  }
}

class subjectTracker extends StatefulWidget {
  @override
  _subjectTrackerState createState() => _subjectTrackerState();
}

class _subjectTrackerState extends State<subjectTracker> {
  @override
  Widget build(BuildContext context) {
    double value =36;
    double valued=70;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8CD81),
        title: Text(' '),
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios_rounded,
            color: Colors.black,),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50,left: 150),
            child: Container(
                child: Image.asset('assets/images/hexagonPurple.png',)),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5,left:30),
                child: Container(
                    width: 300,
                    height: 300,
                    child: Image.asset('assets/images/subjectTrackerBee.png')),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:260,right: 180,bottom: 10),
                child: Text('Subject',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Color(0xFF828282),
                    fontFamily: 'SF-Pro-Bold',
                    fontSize: 20,
                  ),),
              ),
              Container(
                margin: EdgeInsets.only(left:37),
                width: 320,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Color(0xFFF8CD81),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20,bottom: 10),
                child: Container(
                  margin: EdgeInsets.all(45),
                  child: Slider(
                      value: value,
                      min: 0,
                      max: 100,
                      activeColor: Color(0xFF003249),
                      inactiveColor: Colors.white,
                      onChanged: (double value) {
                        setState(() {
                          value = value;
                        });
                      }
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:310,left:280),
                child: Tab(
                  icon: Container(
                    child: Image(
                      image: AssetImage(
                        'assets/images/honey.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:350,left:70),
                child: RichText(text: TextSpan(
                    children: [
                      TextSpan(
                          text: '36% ',
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Text',
                              fontSize: 20,
                              color: Color(0xFF4E4B66),
                              fontWeight: FontWeight.w900
                          )
                      ),
                      TextSpan(
                          text: 'Done',
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Text',
                              fontSize: 20,
                              color: Color(0xFF6E7191),
                              fontWeight: FontWeight.w700
                          )
                      )
                    ]
                )),
              )
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:420,left: 50),
                child: Text('Subject',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Color(0xFF828282),
                    fontFamily: 'SF-Pro-Bold',
                    fontSize: 20,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:450),
                child: Container(
                  margin: EdgeInsets.only(left:37),
                  width: 320,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Color(0xFFF8CD81),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:308,right:20),
                child: Container(
                  margin: EdgeInsets.all(45),
                  child: Slider(
                      value: valued,
                      min: 0,
                      max: 100,
                      activeColor: Color(0xFF003249),
                      inactiveColor: Colors.white,
                      onChanged: (double valued) {
                        setState(() {
                          valued = valued;
                        });
                      }
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:470,left: 280),
                child: Tab(
                  icon: Container(
                    child: Image(
                      image: AssetImage(
                        'assets/images/honey.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:510,left:75 ),
                child: RichText(text: TextSpan(
                    children: [
                      TextSpan(
                          text: '70% ',
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Text',
                              fontSize: 20,
                              color: Color(0xFF4E4B66),
                              fontWeight: FontWeight.w900
                          )
                      ),
                      TextSpan(
                          text: 'Done',
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Text',
                              fontSize: 20,
                              color: Color(0xFF6E7191),
                              fontWeight: FontWeight.w700
                          )
                      )
                    ]
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}

