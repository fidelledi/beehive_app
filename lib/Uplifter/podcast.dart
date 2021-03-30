import 'package:flutter/material.dart';
// import 'package:beehive_app/Uplifter/uplifter_main.dart';

class podcastMain extends StatefulWidget {
  @override
  _podcastMain createState() => _podcastMain();
}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}

class _podcastMain extends State<podcastMain> {
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(hexColor('#003249')),
      appBar: AppBar(
        title: Text(' '),
        leading: new IconButton(
          icon: Image.asset(
            'assets/icons/back_icon.png',
            color: Color(
              hexColor('#FCFCFC'),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Container(
                    height: 97,
                    width: 97,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                              image: AssetImage(
                                'assets/images/podcast_bee.png'
                              ),
                              fit: BoxFit.fill,
                            ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 24,
                          offset: Offset(0, 24), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Podcast of the Day',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Regular',
                          fontSize: 13,
                          color: Color(hexColor('#FCFCFC')),
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        'TeamBee',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Bold',
                          fontSize: 24,
                          color: Color(hexColor('#FCFCFC')),
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        'Eruel and Fidel',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Regular',
                          fontSize: 14,
                          color: Color(hexColor('#FCFCFC')),
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim veniam, quis\nnostrud exercitation ullamco laboris nisi ut aliquip ex\nea commodo consequat. Duis aute irure dolor in\nreprehenderit involuptate velit esse cillum dolore eu\nfugiat nulla pariatur.",
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Thin',
                    color: Color(
                      hexColor('#FCFCFC'),
                    ),
                    fontSize: 14,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 27, bottom: 20),
                child: Container(
                  height: 80,
                  width: 347,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 24,
                        offset: Offset(0, 24), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: Color(hexColor('#AAAAAA')),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 24,
                                offset:
                                    Offset(0, 24), // changes position of shadow
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/podcast_bee.png'
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'The Beehive',
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Medium',
                                fontSize: 14,
                                color: Color(hexColor('#14142A')),
                                letterSpacing: 1.2,
                              ),
                            ),
                            Text(
                              '7 mins',
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Regular',
                                fontSize: 13,
                                color: Color(hexColor('#E0E0E0')),
                                letterSpacing: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
