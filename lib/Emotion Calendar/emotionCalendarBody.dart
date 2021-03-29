import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:beehive_app/Emotion Calendar/emotionCalendarMain.dart';

class emotionCalendarBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top:10, left:38),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('A month in beehive',
                  style: TextStyle(
                    color: Color(0xFF6E7191),
                    fontSize: 24,
                    fontFamily: 'SF-Pro-Bold',
                    letterSpacing: 1.2,
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                    Container(
                      margin: EdgeInsets.only(top:size.height * 0.05),
                      height: size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(32),
                          topRight:Radius.circular(32),
                        )
                      ),
                    ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:40, left:25 ),
                            child: Text('October 2021',
                            style: TextStyle(
                              color: Color(0xFFD17B47),
                              fontFamily: 'SF-Pro-Bold',
                              fontSize: 16,
                              letterSpacing: 1.5,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:40,left: 120),
                            child: Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                  icon: Icon(Icons.arrow_back_ios_rounded,
                                  color: Colors.black,
                                  size: 18,),
                                  onPressed: (){}),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:40,),
                            child: Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.black,
                                      size: 18,),
                                  onPressed: (){}),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:38),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'S',
                                    style: TextStyle(
                                      color: Color(0xFF6E7191),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                    )),
                                  TextSpan(
                                    text: '\n',
                                  ),
                                  TextSpan(
                                    text: '21',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.black,
                                    )
                                  )
                                ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:28),
                            child: RichText(
                              textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'M',
                                        style: TextStyle(
                                          color: Color(0xFF6E7191),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                        )),
                                    TextSpan(
                                      text: '\n',
                                    ),
                                    TextSpan(
                                        text: '22',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black,
                                        )
                                    )
                                  ]
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:28),
                            child: RichText(
                              textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'T',
                                        style: TextStyle(
                                          color: Color(0xFF6E7191),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                        )),
                                    TextSpan(
                                      text: '\n',
                                    ),
                                    TextSpan(
                                        text: '23',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black,
                                        )
                                    )
                                  ]
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:28),
                            child: RichText(
                              textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'W',
                                        style: TextStyle(
                                          color: Color(0xFF6E7191),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                        )),
                                    TextSpan(
                                      text: '\n',
                                    ),
                                    TextSpan(
                                        text: '24',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black,
                                        )
                                    )
                                  ]
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:28),
                            child: RichText(
                              textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'T',
                                        style: TextStyle(
                                          color: Color(0xFF6E7191),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                        )),
                                    TextSpan(
                                      text: '\n',
                                    ),
                                    TextSpan(
                                        text: '25',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black,
                                        )
                                    )
                                  ]
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:28),
                            child: RichText(
                              textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'F',
                                        style: TextStyle(
                                          color: Color(0xFF6E7191),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                        )),
                                    TextSpan(
                                      text: '\n',
                                    ),
                                    TextSpan(
                                        text: '26',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black,
                                        )
                                    )
                                  ]
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:28),
                            child: RichText(
                              textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'S',
                                        style: TextStyle(
                                          color: Color(0xFF6E7191),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                        )),
                                    TextSpan(
                                      text: '\n',
                                    ),
                                    TextSpan(
                                        text: '27',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black,
                                        )
                                    )
                                  ]
                                )),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:20,left:34,),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                border: Border.all(
                                  width: 13,
                                  color: Color(0xFFF8CD81),
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:20, left:115),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    width: 13,
                                    color: Color(0xFFF8CD81),
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:20,left:70),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    width: 13,
                                    color: Color(0xFFF8CD81),
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10,left:85),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    width: 13,
                                    color: Color(0xFFD17B47),
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10,left:210),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    width: 13,
                                    color: Color(0xFFD17B47),
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10, left:135),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    width: 13,
                                    color: Color(0xFF6E7191),
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10, left:230),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    width: 13,
                                    color: Color(0xFF003249),
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height:280,
                            width: 280,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top:25),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:40,left:70),
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: 'Total no. of days',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color(0xFF6E7191),
                                                    fontFamily: 'SF-Pro-Bold',
                                                  )
                                              ),
                                              TextSpan(
                                                text: '\n',
                                              ),
                                              TextSpan(
                                                  text: '31',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xFFD17B47),
                                                    fontFamily: 'SF-Pro-Bold',
                                                  )
                                              ),
                                            ]
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:105, left:30),
                                      child: Container(
                                        width: 90,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8CD81),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:10),
                                          child: RichText(
                                            textAlign: TextAlign.center,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Happy',
                                                    style: TextStyle(
                                                      fontFamily: 'SF-Pro-Bold',
                                                      color: Color(0xFF6E7191),
                                                      fontSize: 18,
                                                    )
                                                  ),
                                                  TextSpan(
                                                    text: '\n'
                                                  ),
                                                  TextSpan(
                                                    text:'15',
                                                    style: TextStyle(
                                                      fontFamily: 'SF-Pro-Bold',
                                                      color: Color(0xFFD17B47),
                                                      fontSize: 16,
                                                    )
                                                  )
                                                ]
                                              )),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:105, left: 160),
                                      child: Container(
                                          width: 90,
                                          height: 70,
                                          decoration: BoxDecoration(
                                          color: Color(0xFFF8CD81),
                                          borderRadius: BorderRadius.circular(20),
                                      ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:10),
                                          child: RichText(
                                              textAlign: TextAlign.center,
                                              text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: 'Neutral',
                                                        style: TextStyle(
                                                          fontFamily: 'SF-Pro-Bold',
                                                          color: Color(0xFF6E7191),
                                                          fontSize: 18,
                                                        )
                                                    ),
                                                    TextSpan(
                                                        text: '\n'
                                                    ),
                                                    TextSpan(
                                                        text:'5',
                                                        style: TextStyle(
                                                          fontFamily: 'SF-Pro-Bold',
                                                          color: Color(0xFFD17B47),
                                                          fontSize: 16,
                                                        )
                                                    )
                                                  ]
                                              )),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:193,left:30),
                                      child: Container(
                                          width: 90,
                                          height: 70,
                                          decoration: BoxDecoration(
                                          color: Color(0xFFF8CD81),
                                          borderRadius: BorderRadius.circular(20),
                                      ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:10),
                                          child: RichText(
                                              textAlign: TextAlign.center,
                                              text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: 'Sad',
                                                        style: TextStyle(
                                                          fontFamily: 'SF-Pro-Bold',
                                                          color: Color(0xFF6E7191),
                                                          fontSize: 18,
                                                        )
                                                    ),
                                                    TextSpan(
                                                        text: '\n'
                                                    ),
                                                    TextSpan(
                                                        text:'6',
                                                        style: TextStyle(
                                                          fontFamily: 'SF-Pro-Bold',
                                                          color: Color(0xFFD17B47),
                                                          fontSize: 16,
                                                        )
                                                    )
                                                  ]
                                              )),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:193, left:160),
                                      child: Container(
                                        width: 90,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8CD81),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:10),
                                          child: RichText(
                                              textAlign: TextAlign.center,
                                              text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                        text: 'Angry',
                                                        style: TextStyle(
                                                          fontFamily: 'SF-Pro-Bold',
                                                          color: Color(0xFF6E7191),
                                                          fontSize: 18,
                                                        )
                                                    ),
                                                    TextSpan(
                                                        text: '\n'
                                                    ),
                                                    TextSpan(
                                                        text:'5',
                                                        style: TextStyle(
                                                          fontFamily: 'SF-Pro-Bold',
                                                          color: Color(0xFFD17B47),
                                                          fontSize: 16,
                                                        )
                                                    )
                                                  ]
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
