import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:beehive_app/Emotion Tracker/trackerMain.dart';

class emotionTrackerBody extends StatefulWidget {
  @override
  _emotionTrackerBodyState createState() => _emotionTrackerBodyState();
}


class _emotionTrackerBodyState extends State<emotionTrackerBody> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    double value=29;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top:size.height * 0.01,left: 30),
              child: RichText(
                text:TextSpan(
                    children: [
                      TextSpan(
                          text: 'Whats your',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              fontFamily: 'SF-Pro-Text',
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          )
                      ),
                      TextSpan(
                          text: '\n'
                      ),
                      TextSpan(
                          text: 'Progress today?',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              fontFamily: 'SF-Pro-Text',
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                          )
                      )
                    ]
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: size.height*0.10),
                  height: size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight:Radius.circular(32),
                      )
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:90 , right:190),
                    child: Text('Subjects',
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Color(0xFF828282),
                        fontFamily: 'SF-Pro-Bold',
                        fontSize: 18,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20,left:38),
                    child: Container(
                      width: 320,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Color(0xFFF7F7FC),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 7,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:130,left:20,right: 40),
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Slider(
                              value: value,
                              min: 0,
                              max: 100,
                              activeColor: Color(0xFF003249),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:149,left:280),
                child: Stack(
                  children: [
                    Tab(
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
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:190,left:70),
                    child: RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: '29%  ',
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
              Padding(
                padding: const EdgeInsets.only(top:270,left:50),
                child: Text('Emotion Tracker',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Color(0xFF828282),
                    fontFamily: 'SF-Pro-Bold',
                    fontSize: 18,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:300,left:38),
                child: Container(
                  width: 320,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Color(0xFFF7F7FC),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 7,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:318,left:70),
                        child: Text('24',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 44,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:318, left:10),
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Wed',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF6E7191),
                                  )
                              ),
                              TextSpan(
                                text: '\n',
                              ),
                              TextSpan(
                                  text: 'Oct 2021',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF6E7191),
                                  )
                              )
                            ]
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:318, left:35),
                        child: Container(
                          width: 100,
                          height: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FlatButton(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                onPressed: () {},
                                color: Color(0xFFD17B47).withOpacity(0.3),
                                child: Text('Today',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'SF-Pro-Bold',
                                    color: Color(0xFFD17B47),
                                  ),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:360,left:50),
                    child: Container(
                      width: 160,
                      height: 160,
                      child: Image.asset('assets/images/hexagonYellow.png'),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:410,left:40),
                    child: Container(
                      width: 160,
                      height: 160,
                      child: Image.asset('assets/images/beehappy.PNG'),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:380,left:210),
                        child: Text('Who youre with',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'SF-Pro-Bold',
                            color: Color(0xFF6E7191),
                          ),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:410,left:215),
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                              width: 24,
                              color: Color(0xFF7D5BA6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:410,left:20),
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                              width: 24,
                              color: Color(0xFF7D5BA6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:460,left:215),
                        child: Text('Myself',
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 15,
                              color: Color(0xFF6E7191)
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:460,left:34),
                        child: Text('Pet',
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 15,
                              color: Color(0xFF6E7191)
                          ),),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:490,left:210),
                    child: Text('Where you were',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SF-Pro-Bold',
                        color: Color(0xFF6E7191),
                      ),),
                  )
                ],
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:520,left:215),
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                              width: 24,
                              color: Color(0xFF7D5BA6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:570,left:216),
                        child: Text('Home',
                          style: TextStyle(
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 15,
                              color: Color(0xFF6E7191)
                          ),),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}