import 'package:beehive_app/Uplifter/articles_main.dart';
import 'package:beehive_app/Uplifter/motivational_main.dart';
import 'package:flutter/material.dart';
import 'package:beehive_app/Uplifter/podcast.dart';

class uplifterMain extends StatefulWidget {
  @override
  _uplifterMain createState() => _uplifterMain();
}

  hexColor (String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

class _uplifterMain extends State<uplifterMain> {
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Color(hexColor('#F7F7FC')),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10, bottom: 20),
          child: Align(
            alignment: Alignment(-0.58, 0.90), 
            child: Text(
              "Uplifter",
              style: TextStyle(
                fontFamily: 'SF-Pro-Bold',
                color: Color(hexColor('#14142A')),
                fontSize:38,
                letterSpacing: 1.5,
              ),
            ),),),
            Expanded(
              child: ListView( 
                padding: const EdgeInsets.only(left: 32, right: 32, top: 15),
                children: <Widget>[
                  Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 27),
                  height:  168, width: 347,
                  decoration: BoxDecoration(
                    color: Color(hexColor('#FFFFFFF')),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 24,
                      offset: Offset(0, 24), // changes position of shadow
                    ),
                  ],
                  ),
                    child:
                      InkWell(
                              child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "Motivational\nQuotes",
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    color: Color(hexColor('#14142A')),
                                    fontSize: 24,
                                    letterSpacing: 1.8,
                                  ),
                                  ),
                                  ],
                                  ),
                                Row(
                                  children: [
                                    Text(
                                      "The quote of the day \nto gain motivation.",
                                      style: TextStyle(
                                        fontFamily: 'SF-Pro-Thin',
                                        color: Color(hexColor('#767676')),
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        height: 1.6,
                                      ),
                    ),
                                  ],
                                ),
                              ],
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => motivationalMain())
                               ); }
                      ),),
                          SizedBox(
                            height: 32,
                          ),
                          Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 27),
                  height:  168, width: 347,
                  decoration: BoxDecoration(
                    color: Color(hexColor('#FFFFFFF')),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 24,
                      offset: Offset(0, 24), // changes position of shadow
                    ),
                  ],
                  ),
                    child:
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "Podcast",
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    color: Color(hexColor('#14142A')),
                                    fontSize: 24,
                                    letterSpacing: 1.8,
                                  ), 
                                  ),],
                                  ),
                                Row(
                                  children: [
                                    Text(
                                      "Motivate yourself with \nthese motivational podcasts",
                                      style: TextStyle(
                                        fontFamily: 'SF-Pro-Thin',
                                        color: Color(hexColor('#767676')),
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        height: 1.6,
                                      ),
                    ),
                                  ],
                                ),
                              ],
                            ),
                      
                          onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => podcastMain())
                               ); }
                          ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 27),
                  height:  168, width: 347,
                  decoration: BoxDecoration(
                    color: Color(hexColor('#FFFFFFF')),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 24,
                      offset: Offset(0, 24), // changes position of shadow
                    ),
                  ],
                  ),
                    child:
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "Articles",
                                  style: TextStyle(
                                    fontFamily: 'SF-Pro-Bold',
                                    color: Color(hexColor('#14142A')),
                                    fontSize: 24,
                                    letterSpacing: 1.8,
                                  ), 
                                  ),],
                                  ),
                                Row(
                                  children: [
                                    Text(
                                      "Love reading motivation articles? \nThis one's for you",
                                      style: TextStyle(
                                        fontFamily: 'SF-Pro-Thin',
                                        color: Color(hexColor('#767676')),
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        height: 1.6,
                                      ),
                    ),
                                  ],
                                ),
                              ],
                            ),
                      
                          onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => articlesMain(),)
                               ); }
                          ),
                          ),],
                          // physics: NeverScrollableScrollPhysics(),
                      ),
                ),],
              ),
    );
  }
}