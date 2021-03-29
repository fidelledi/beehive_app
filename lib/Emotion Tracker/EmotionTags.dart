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
      home: emotionTags() ,
    );
  }
}


class emotionTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:60),
            child: Center(
              child: Text('Who are you with?',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'SF-Pro-Bold',
                color: Colors.black
              ),),
            ),
          ),
          Row(
            children: [
                Padding(
                  padding: const EdgeInsets.only(top:40, left:55),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top:40, left:60 ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40, left:60),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10, left:55),
                child: Text('Myself',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10, left:70),
                child: Text('Friends',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10, left:65),
                child: Text('Family',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:40,left:55),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40,left:60),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40,left:50),
                child: Container(
                  child: IconButton(
                    icon: Icon(Icons.add_circle_outline_outlined),
                      color: Colors.black,
                    iconSize: 60,
                  ),
                  ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10,left:45),
                child: Text('Strangers',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10,left:70),
                child: Text('Pets',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10,left:65),
                child: Text('Add More',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:30),
            child: Text('Where are you',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'SF-Pro-Bold',
                color: Colors.black
            ),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,left:55),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20,left:60),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20, left:60),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10, left: 60),
                child: Text('Home',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10,left:70),
                child: Text('Work',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10,left:65),
                child: Text('Transport',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:40,left:55),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40,left:60),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        width: 28,
                        color: Color(0xFF7D5BA6),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40,left:50),
                child: Container(
                  child: IconButton(
                    icon: Icon(Icons.add_circle_outline_outlined),
                    color: Colors.black,
                    iconSize: 60,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10,left:40),
                child: Text('Restaurant',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10,left:45),
                child: Text('Outdoors',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10,left:50),
                child: Text('Add More',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SF-Pro-Text',
                  color: Colors.black,
                ),),
              )
            ],
          )
        ],
      ),
    );
  }
}
