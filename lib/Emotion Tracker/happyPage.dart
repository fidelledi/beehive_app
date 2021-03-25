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
      home: happyPage() ,
    );
  }
}


class happyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8CD81),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:300, top:7),
            child: IconButton(icon: Icon(
                Icons.highlight_off_rounded),
                onPressed: (){}),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Text('24',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Bold',
                    fontSize: 50,
                    color: Colors.black,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Wed',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'SF-Pro-Text')),
                      TextSpan(text: '\n',),
                      TextSpan(text: 'Oct 2021',
                          style: TextStyle(
                            fontFamily: 'SF-Pro-Text', fontSize: 18,))
                    ],
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Container(
                  width: 100,
                  height: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        onPressed: () {},
                        color: Colors.white38,
                        child: Text('Today',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'SF-Pro-Bold',
                            color: Colors.white,
                          ),)),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 300,
              height: 300,
              child: Image.asset('assets/images/beehappy.PNG'),
          ),
            Text('Happy',
            style: TextStyle(
              fontFamily: 'SF-Pro-Bold',
              fontSize: 50,
              color: Colors.white,
            ),),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: HappyInput(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "I am happy because..."
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:25),
            child: Container(
              width: 150,
              height:50 ,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                  color:Color(0xFFD17B47),
                    onPressed: (){},
                    child: Text('Done',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SF-Pro-Bold',
                    ),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class HappyInput extends StatelessWidget {
  final Widget child;
  const HappyInput({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      ),
    );
  }
}
